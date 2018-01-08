<?php

namespace Controller;

use Framework\Controller;
use Framework\Request;
use Model\Repository\NewsRepository;

class NewsController extends Controller
{
    public function indexAction(Request $request)
    {
        return $this->render('index.html.twig');
    }
    
    public function showAction(Request $request)
    {
        $id = $request->get('id'); // $_GET['id']
        $repository = $factory = $this
            ->container
            ->get('repository_factory')
            ->createRepository('News')
        ;
        
        $news = $repository->find($id);

        return $this->render('show.html.twig', [
            'news' => $news
        ]);
    }
}