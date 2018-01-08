<?php

namespace Model\Entity;

class Subscribe
{
    private $email;
    private $name;
    private $lastname;
    private $created;
    
      /**
     * Feedback constructor.
     * 
     * @param $email
     * @param $name
     * @param $lastname
     */
    public function __construct($email, $name, $lastname)
    {
        $this->email = $email;
        $this->name = $name;
        $this->lastname = $lastname;
        $this->created = new \DateTime();
    }
    
    public function getMySqlCreated()
    {
        return $this->created->format('Y-m-d H:i:s');
    }

    /**
     * @return mixed
     */
    public function getEmail()
    {
        return $this->email;
    }

    /**
     * @param mixed $email
     */
    public function setEmail($email)
    {
        $this->email = $email;
        
        return $this;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $message
     */
    public function setName($name)
    {
        $this->name = $name;
        
        return $this;
    }

    /**
     * @return mixed
     */
    public function getLastname()
    {
        return $this->name;
    }

    /**
     * @param mixed $message
     */
    public function setLastname($lastname)
    {
        $this->lastname = $lastname;
        
        return $this;
    }

    /**
     * @return mixed
     */
    public function getCreated()
    {
        return $this->created;
    }

    /**
     * @param mixed $created
     */
    public function setCreated($created)
    {
        $this->created = $created;
        
        return $this;
    }
}