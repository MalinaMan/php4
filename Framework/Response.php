<?php

namespace Framework;

class Response
{
    private $body;
    private $headers;
    
    public function __construct($body)
    {
        $this->body = $body;
    }
    
    public function __toString()
    {
        return (string) $this->body;
    }
}