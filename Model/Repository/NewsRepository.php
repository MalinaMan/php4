<?php

namespace Model\Repository;

use Model\Entity\News;

class NewsRepository
{
    private $pdo;
    
    public function setPdo(\PDO $pdo)
    {
        $this->pdo = $pdo;
        
        return $this;
    }

    private function findNewsByQuery($query, $id, $page)
    {
        $pdo = $this->pdo;
        
        $collection = [];
        $sth = $pdo->prepare($query . ' LIMIT ' . (($page-1)*5) . ',' . 5);
        $sth->execute(['id' => $id]);
        
        while ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            $news = (new News())
                ->setId($data['id'])
                ->setTitle($data['title']);
            $collection[] = $news;
        }
        
        return $collection;
    }

    public function findTop5NewsByCategory($id, $page=1)
    {
        return $this->findNewsByQuery('SELECT id, title FROM news WHERE category_id = :id ORDER BY created DESC', $id, $page);
    }

    public function findByTag($id, $page=1)
    {
        return $this->findNewsByQuery('SELECT news.id, news.title FROM news_tags AS nt INNER JOIN news ON nt.news_id = news.id WHERE nt.tag_id = :id ORDER BY news.created DESC', $id, $page);
    }

    public function findTop5NewsWithPhoto()
    {
        $pdo = $this->pdo;
        $sth = $pdo->query('SELECT news_id, filename, news.title FROM news_media AS nm INNER JOIN news ON news.id = nm.news_id ORDER BY news.created LIMIT 5');

        return $sth->fetchAll(\PDO::FETCH_ASSOC);
    }



    public function getMaxCountPagesByCategory($id)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT COUNT(*) AS countRec FROM news WHERE category_id = :id');
        $sth->execute(['id' => $id]);

        if ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            return ((int) (($data['countRec']- 1) / 5)) + 1;
        }
    }

    public function getMaxCountPagesByTag($id)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT COUNT(*) AS countRec FROM news INNER JOIN news_tags AS nt ON news.id = nt.news_id AND nt.tag_id = :id');
        $sth->execute(['id' => $id]);

        if ($data = $sth->fetch(\PDO::FETCH_ASSOC)) {
            return ((int) (($data['countRec']- 1) / 5)) + 1;
        }
    }

    private function getField1($e)
    {
        return $e['field1'];
    }

    private function getFields($e)
    {
        return [$e['field1'], $e['field2']];
    }

    public function find($id)
    {
        $pdo = $this->pdo;
        
        $sth = $pdo->prepare('SELECT news.id, title, description, active, created, category_id FROM news
             WHERE news.id = ?');
        $sth->execute([$id]);
        $data = $sth->fetch(\PDO::FETCH_ASSOC);

        $sth = $pdo->prepare('SELECT 0, nm.filename AS field1, NULL AS field2 FROM news_media AS nm
            WHERE nm.news_id = :id
            UNION
            SELECT 1, tags.name, tags.id FROM news_tags AS nt
                INNER JOIN tags ON nt.tag_id = tags.id
            WHERE nt.news_id = :id');
        $sth->execute(['id' => $id]);
        $data2 = $sth->fetchAll(\PDO::FETCH_ASSOC);

        $arr_files = array_map(array($this, 'getField1'),
            array_filter($data2, function($v) {
                return $v[0] == 0;
            })
        );
        $arr_tags  = array_map(array($this, 'getFields'),
            array_filter($data2, function($v) {
                return $v[0] == 1;
            })
        );

        return (new News())
            ->setId($data['id'])
            ->setTitle($data['title'])
            ->setDescription($data['description'])
            ->setActive($data['active'])
            ->setCreated($data['created'])
            ->setCategory($data['category_id'])
            ->setFiles($arr_files)
            ->setTags($arr_tags)
        ;
    }

    public function getStatViewAll($news_id, $viewNow)
    {
        $pdo = $this->pdo;
        $sth = $pdo->prepare('INSERT INTO statistics VALUES(:id, :viewNow) ON DUPLICATE KEY UPDATE quantity=quantity+:viewNow');
        $sth->execute(['id' => $news_id, 'viewNow' => $viewNow]);

        $sth = $pdo->prepare('SELECT quantity FROM statistics WHERE news_id = :id');
        $sth->execute(['id' => $news_id]);

        $data = $sth->fetch(\PDO::FETCH_ASSOC);
        return $data['quantity'];
    }

}