<?php

namespace Controller;

use Framework\Controller;
use Framework\Request;
use Model\Repository\NewsRepository;

class NewsController extends Controller
{
    public function listAction(Request $request)
    {
        $id = $request->get('tag_id');

        $factory = $this
                ->container
                ->get('repository_factory');

        $currentPage = $factory
                ->getRequest()
                ->get('page', 1);

        $news_list = $factory
                ->createRepository('News')
                ->findByTag($id, $currentPage);

        $tag = $factory
            ->createRepository('Tag')
            ->findById($id);

        return $this->render('list.html.twig', [
            'tag' => $tag,
            'news_list' => $news_list
        ]);
    }

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
            ->createRepository('News');
        
        $news = $repository->find($id);

        return $this->render('show.html.twig', [
            'news' => $news
        ]);
    }
}