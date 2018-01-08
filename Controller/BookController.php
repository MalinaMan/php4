<?php

namespace Controller;

use Framework\Controller;
use Framework\Request;
use Model\Repository\BookRepository;

class BookController extends Controller
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
            ->createRepository('Book')
        ;
        
        $book = $repository->find($id);

        return $this->render('show.html.twig', [
            'book' => $book
        ]);
    }
}