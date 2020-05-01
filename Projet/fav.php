<?php
include "bdd.php";
include_once "userSession.class.php";
$userSession = new UserSession();

$userId = $userSession -> getUserId();

if($_POST){
    $idFact = $_POST['idFact'];
    var_dump($idFact);

    $req = $bdd->prepare(
        "INSERT INTO favorite (idUser, idFact) 
        VALUES (?, ?)"
    );
    
$favProduct = $req->execute([$userId, $idFact]);
};

 

