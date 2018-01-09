<?php

namespace Framework;

class Router
{
    private $routes;
    
    private $currentRoute;
    private $currentParameters;
    
    public function __construct(array $routes)
    {
        $this->routes = $routes;
    }
    
    public function redirect($to)
    {
        header("Location: {$to}");
        die;
    }

    public function setCurrentParameters(Request $request)
    {
        $parameters = [];
        $arr1 = explode('/', $request->getUri());
        $arr2 = explode('/', $this->currentRoute['pattern']);

        if (!empty($this->currentRoute['parameters'])) {
            foreach ($this->currentRoute['parameters'] as $name => $regex) {
                $i = array_search('{' . $name . '}', $arr2);
                if ($i !== false) {
                    $parameters[$name] = $arr1[$i];
                }
            }
        }
        $this->currentParameters = $parameters;
    }
    
    public function match(Request $request)
    {
        $uri = urldecode($request->getUri());
        $routes = $this->routes;

        foreach ($routes as $route) {
            $pattern = $route['pattern'];
            
            if (!empty($route['parameters'])) {
                foreach ($route['parameters'] as $name => $regex) {
                    $pattern = str_replace(
                        '{' . $name . '}', 
                        '(' . $regex . ')', 
                        $pattern
                    );
                }
            }
            
            $pattern = '@^' . $pattern . '$@';

            if (preg_match($pattern, $uri, $matches)) {
                // remove match by whole regexp
                array_shift($matches);
                
                if (!empty($route['parameters'])) {
                    $result = array_combine(
                        array_keys($route['parameters']),
                        $matches
                    ); 
                    
                    $request->mergeGetWithArray($result);
                }
                
                $this->currentRoute = $route;
                
                return;
            }
        }
        
        throw new \Exception('Page not found', 404);
    }
    
    public function getCurrentController()
    {
        return $this->getCurrentRouteAttribute('controller');
    }
    
    public function getCurrentAction()
    {
        return $this->getCurrentRouteAttribute('action');
    }

    public function getCurrentPage()
    {
        return $this->getCurrentRouteAttribute('page');
    }

    public function getCurrentRouteParameter($key)
    {
        if (!$this->currentParameters) {
            return null;
        }
        
        return $this->currentParameters[$key];
    }
    
    private function getCurrentRouteAttribute($key)
    {
        if (!$this->currentRoute) {
            return null;
        }
        
        return $this->currentRoute[$key];
    }
}