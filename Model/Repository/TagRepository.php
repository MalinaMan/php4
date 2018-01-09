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

    public function findByName($name)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT id, name FROM tags WHERE tags.name = ?');
        $sth->execute([$name]);
        $data = $sth->fetch(\PDO::FETCH_ASSOC);

        return (new Tag())
            ->setId($data['id'])
            ->setName($data['name'])
        ;
    }

    public function getTagsBySubstr($needle)
    {
        $pdo = $this->pdo;

        $sth = $pdo->query("SELECT * FROM tags WHERE tags.name LIKE '%" . $needle . "%'");

        $collection = [];
        while ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $collection[] = ['id' => $data['id'],
                             'name' => $data['name']];
        }
        
        return $collection;
    }

}