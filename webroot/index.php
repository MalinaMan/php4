<?php

define('DS', DIRECTORY_SEPARATOR);
define('ROOT', __DIR__ . DS . '..' . DS); // path: /../
define('VIEW_DIR', ROOT . 'View' . DS); // /View
define('CONF_DIR', ROOT . 'config' . DS); // /config

spl_autoload_register(function($className) {
    $path = ROOT . str_replace('\\', DS, $className) . '.php';
    
    if (!file_exists($path)) {
        throw new \Exception("{$path} not found");
    }
    
    require $path;
});

require '../vendor/autoload.php';

try {
    // parse config
    $config = Symfony\Component\Yaml\Yaml::parse(file_get_contents(CONF_DIR . 'config.yml'));
    $parameters = $config['parameters'];
    $routing = $config['routing'];
    
    // create request model and start session
    $request = new \Framework\Request($_GET, $_POST, $_SERVER);
    \Framework\Session::start();
    
    // create container and set params from config
    $container = new \Framework\Container();
    $container->setParameters($parameters);

    // establish DB connection
    $dsn = "mysql: host={$parameters['database_host']}; dbname={$parameters['database_name']}";
    $pdo = new \PDO(
        $dsn, 
        $parameters['database_user'],
        $parameters['database_password']
    );
    
    $pdo->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
    $pdo->query("SET CHARSET utf8");
    
    // ROUTER
    $router = new \Framework\Router($routing);
    $router->match($request);
    $router->setCurrentParameters($request);
    
    // create objects for container
    $repositoryFactory = new \Framework\RepositoryFactory();
    $repositoryFactory->setPdo($pdo)
                    ->setRequest($request)
                    ->setRouter($router);
    
    $loader = new \Twig_Loader_Filesystem(VIEW_DIR);
    $twig = new \Twig_Environment($loader, ['debug' => true]);
    $twig->addExtension(new \Twig_Extension_Debug());
    $appExtension = new \Model\Twig\AppExtension($repositoryFactory);
    $twig->addExtension($appExtension);
    
    $container->set('router', $router);
    $container->set('repository_factory', $repositoryFactory);
    $container->set('twig', $twig);
    
    // go!
    $controller = '\\Controller\\' . $router->getCurrentController();
    $action = $router->getCurrentAction();
    
    $controller = new $controller();
    $controller->setContainer($container);
    
    if (!method_exists($controller, $action)) {
        throw new \Exception("{$action} not found");
    }

    $content = $controller->$action($request);
    
} catch (\Exception $e) {
    dump($e);die;
    $controller = new \Controller\ErrorController($e);
    $content = $controller->errorAction();
}

echo $content;