<?php

namespace Framework;

class AccessDeniedException extends \Exception
{
    public function __construct()
    {
        parent::__construct('Access denied');
    }
}