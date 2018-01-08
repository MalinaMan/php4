<?php

namespace Controller\API;

use Framework\Controller;
use Framework\Request;
use Model\Repository\NewsRepository;

class NewsController extends Controller
{

    public function getQuantityViewNews(Request $request)
    {
    	$id = $request->get('news_id');
        $repository = $this
            ->container
            ->get('repository_factory')
            ->createRepository('News');

        $arrRes = [];
        $viewNow = rand(1, 5);

        $arrRes[] = $viewNow;
        $arrRes[] = $repository->getStatViewAll($id, $viewNow);

        header('Content-type: application/json');
        return json_encode($arrRes);
    }
}