<?php

namespace Model\Twig;

use Framework\RepositoryFactory;
use Framework\Session;

class AppExtension extends \Twig_Extension
{
    private $repositoryFactory;
    
    public function __construct(RepositoryFactory $repositoryFactory)
    {
        $this->repositoryFactory = $repositoryFactory;
    }
    
    public function getFunctions()
    {
        return array(
            new \Twig_SimpleFunction('get_flash_message', [$this, 'getFlashMessage']),
            new \Twig_SimpleFunction('get_top5_news_by_cur_category', [$this, 'getTop5NewsByCategory']),
            new \Twig_SimpleFunction('get_top5_news_with_photo', [$this, 'getTop5NewsWithPhoto']),
            new \Twig_SimpleFunction('get_cur_category_id', [$this, 'getCurrentCategoryId']),
            new \Twig_SimpleFunction('get_cur_page', [$this, 'getCurrentPage']),
            new \Twig_SimpleFunction('get_category_name_by_id', [$this, 'getCategoryNameById']),
            new \Twig_SimpleFunction('get_max_count_pages_by_cur_category', [$this, 'getMaxCountPagesByCurCategory'])
        );
    }
    
    public function getGlobals()
    {
        return [
            'global_categories' => $this->getCategories()
        ];
    }
    
    private function getCategories()
    {
        return $this
            ->repositoryFactory
            ->createRepository('Category')
            ->findAll()
        ;
    }

    public function getCurrentCategoryId()
    {
        return $this
                ->repositoryFactory
                ->getRouter()
                ->getCurrentRouteParameter('category_id');
    }

    public function getCurrentPage()
    {
        return $this
                ->repositoryFactory
                ->getRequest()
                ->get('page', 1);
    }

    public function getTop5NewsByCategory($category_id=null)
    {
        if (!$category_id) {
            $category_id = $this->getCurrentCategoryId();
        }
        $currentPage = $this->getCurrentPage();

        return $this
            ->repositoryFactory
            ->createRepository('News')
            ->findTop5NewsByCategory($category_id, $currentPage)
        ;
    }

    public function getMaxCountPagesByCurCategory($category_id=null)
    {
        if (!$category_id) {
            $category_id = $this->getCurrentCategoryId();
        }

        return $this
            ->repositoryFactory
            ->createRepository('News')
            ->getMaxCountPagesByCategory($category_id)
        ;
    }

    public function getTop5NewsWithPhoto()
    {
        return $this
            ->repositoryFactory
            ->createRepository('News')
            ->findTop5NewsWithPhoto()
        ;
    }

    public function getCategoryNameById()
    {
        $category_id = $this->getCurrentCategoryId();

        return $this
            ->repositoryFactory
            ->createRepository('Category')
            ->findByID($category_id)
        ;
    }

    public function getFlashMessage()
    {
        return Session::getFlash();
    }

}