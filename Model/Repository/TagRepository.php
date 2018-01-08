<?php

namespace Model\Repository;

use Model\Entity\Tag;

class TagRepository
{
    private $pdo;
    
    public function setPdo(\PDO $pdo)
    {
        $this->pdo = $pdo;
        
        return $this;
    }

    public function findById($id)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT id, name FROM tags WHERE tags.id = ?');
        $sth->execute([$id]);
        $data = $sth->fetch(\PDO::FETCH_ASSOC);

        return (new Tag())
            ->setId($data['id'])
            ->setName($data['name'])
        ;
    }

}