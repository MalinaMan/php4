<?php

namespace Controller\API;

use Framework\Controller;
use Framework\Request;
use Framework\Session;

class SessionController extends Controller
{

    public function getSessionValue(Request $request)
    {
        $key = $request->get('key'); // $_GET['key']
        $value = Session::get($key);

        header('Content-type: application/json');
        return json_encode($value);
    }
}