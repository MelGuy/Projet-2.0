<?php

class UserSession {

public function __construct(){
    if(session_status() == PHP_SESSION_NONE){
        session_start(); //démarrer les services de session
    }
}

public function create($userId, $lastName, $name, $pseudo){
    $_SESSION["user"]= [
        "id" => $userId,
        'lastName' => $lastName,
        'name' => $name,
        'pseudo'=> $pseudo,
    ];
}

public function isAuthenticated(){
    if(array_key_exists("user", $_SESSION)){
        if(empty($_SESSION["user"]) == false){
            return true;
        }
    }
    return false;
}

public function getFullName(){
    return ($_SESSION['user']['lastName']." ".$_SESSION['user']['name']);
}

public function destroy(){
    $_SESSION['user'] = [];
    session_destroy();
}

public function getUserId(){
    return $_SESSION['user']['id'];
}

public function getPseudo(){
    return $_SESSION['user']['pseudo'];
}

}