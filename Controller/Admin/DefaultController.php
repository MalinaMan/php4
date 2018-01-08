<?php

namespace Controller\Admin;

use Framework\Controller;
use Framework\Request;
use Framework\Session;
use Framework\AccessDeniedException;

class DefaultController extends Controller
{
    public function indexAction(Request $request)
    {
        if (!Session::has('user')) {
            throw new AccessDeniedException();
        }
        
        return $this->render('index.html.twig');
    }
}