<?php

namespace Controller\API;

use Framework\Controller;
use Framework\Request;
use Model\Repository\TagRepository;

class TagController extends Controller
{

    public function getTagsBySubstring(Request $request)
    {
    	$needle = $request->get('needle');

        $res = $this
            ->container
            ->get('repository_factory')
            ->createRepository('Tag')
            ->getTagsBySubstr($needle);

        header('Content-type: application/json');
        return json_encode($res);
    }
}