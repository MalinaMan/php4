<?php

namespace Model\Repository;

use Model\Entity\Subscribe;

class SubscribeRepository
{
    public static function save(Subscribe $subscribe)
    {
        global $pdo;
        
        $data = [
            'email' => $subscribe->getEmail(),
            'name' => $subscribe->getName(),
            'lastname' => $subscribe->getLastname(),
            'created' => $subscribe->getMySqlCreated()
        ];

        $sql = 'REPLACE INTO subscriptions VALUES (:email, :name, :lastname, :created)';
        $sth = $pdo->prepare($sql);
        
        $sth->execute($data);
    }
}