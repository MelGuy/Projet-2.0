<?php
include "bdd.php";
include_once "UserSession.class.php";

$userSession = new UserSession();

$userId = $userSession -> getUserId();

$req = $bdd->prepare(
    "SELECT * 
    FROM favorite
    WHERE idUser = ?"
    );

$req->execute([$userId]);
$userFav = $req->fetchAll();

echo json_encode(['userFav'=>$userFav]);