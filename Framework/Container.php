<?php

namespace Framework;

class Container implements ContainerInterface
{
    private $objects = [];
    private $parameters = [];
    
    public function getParameter($key)
    {
        return $this->getValue($this->parameters, $key);
    }
    
    public function setParameters(array $array)
    {
        $this->parameters = $array;
    }
    
    public function get($key)
    {
        return $this->getValue($this->objects, $key);
    }
    
    public function set($key, $object)
    {
        $this->objects[$key] = $object;
    }
    
    private function getValue(array $array, $key)
    {
        if (isset($array[$key])) {
            return $array[$key];
        }
        
        return null;
    }
}