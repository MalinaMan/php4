<?php

namespace Controller\Admin;

use Framework\Controller;
use Framework\Request;
use Framework\Session;
use Model\Repository\BookRepository;

class BookController extends Controller
{
    public function indexAction(Request $request)
    {
        if (!Session::has('user')) {
            throw new AccessDeniedException();
        }
        
        return $this->render('index.phtml');
    }
    
    public function showAction(Request $request)
    {
        if (!Session::has('user')) {
            throw new AccessDeniedException();
        }
        
        return $this->render('show.phtml');
    }
    
    public function editAction(Request $request)
    {
        if (!Session::has('user')) {
            throw new AccessDeniedException();
        }
        
        return $this->render('show.phtml');
    }
    
    public function createAction(Request $request)
    {
        if (!Session::has('user')) {
            throw new AccessDeniedException();
        }
        
        return $this->render('show.phtml');
    }
}