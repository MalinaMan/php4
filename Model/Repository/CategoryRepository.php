<?php

namespace Model\Repository;

use Model\Entity\Category;

class CategoryRepository
{
    private $pdo;
    
    public function setPdo(\PDO $pdo)
    {
        $this->pdo = $pdo;
        
        return $this;
    }
    
    public function findAll()
    {
        $pdo = $this->pdo;
        
        $collection = [];
        $sth = $pdo->query('SELECT * FROM categories ORDER BY name LIMIT 12');
        
        while ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $category = (new Category())
                ->setId($data['id'])
                ->setName($data['name']);
            $collection[] = $category;
        }
        
        return $collection;
    }

    public function findById($id)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT name FROM categories WHERE id = :id');
        $sth->execute(['id' => $id]);

        if ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            return $data['name'];
        }
    }

}