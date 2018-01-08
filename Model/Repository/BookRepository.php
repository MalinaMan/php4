<?php

namespace Model\Repository;

use Model\Entity\Book;

class BookRepository
{
    private $pdo;
    
    public function setPdo(\PDO $pdo)
    {
        $this->pdo = $pdo;
        
        return $this;
    }
    
    public function save(Book $book)
    {
        // todo: implement - check ID: if id===null => insert into.., else: update...
    }
    
    public function find($id, $hydrationArray = false)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT * FROM book WHERE id = :id');
        $sth->execute(['id' => $id]);
        $data = $sth->fetch(\PDO::FETCH_ASSOC);
        
        if ($hydrationArray) {
            return $data;
        }
        
        return (new Book())
            ->setId($data['id'])
            ->setTitle($data['title'])
            ->setDescription($data['description'])
            ->setPrice($data['price'])
            ->setActive($data['active'])
            ->setCreated($data['created'])
            ->setCategory($data['category_id'])
        ;
    }
    
    public function findAll($page = 1, $hydrationArray = false)
    {
        $perPage = 12;
        $offset = $perPage * ($page - 1);
        
        
        $pdo = $this->pdo;
        
        $collection = [];
        $sth = $pdo->query("SELECT * FROM book ORDER BY title LIMIT {$offset}, {$perPage}");
        
        if ($hydrationArray) {
            return $sth->fetchAll(\PDO::FETCH_ASSOC);
        } 
        
        while ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $book = (new Book())
                ->setId($data['id'])
                ->setTitle($data['title'])
                ->setDescription($data['description'])
                ->setPrice($data['price'])
                ->setActive($data['active'])
                ->setCreated($data['created'])
                ->setCategory($data['category_id'])
            ;
            
            $collection[] = $book;
        }
        
        return $collection;
    }
    
    public function findByIds(array $ids)
    {
        $pdo = $this->pdo;
        $placeholders = [];
        foreach ($ids as $id) {
            $placeholders[] = '?';
        }
        
        $placeholders = implode(',', $placeholders);
                
        $collection = [];
        $sth = $pdo->prepare("SELECT * FROM book WHERE id IN ({$placeholders}) ORDER BY title");
        $sth->execute($ids);
        
        return $sth->fetchAll(\PDO::FETCH_ASSOC);
    }

}