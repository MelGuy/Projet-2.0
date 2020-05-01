<?php
include "bdd.php";
include_once "UserSession.class.php";

$userSession = new UserSession();
$userId = $userSession -> getUserId();

$req = $bdd->prepare(
    "SELECT * 
    FROM favorite 
    INNER JOIN facts ON favorite.idFact = facts.id 
    WHERE idUser = ?
    ");

$req->execute([$userId]);
$mesFav = $req->fetchAll();

