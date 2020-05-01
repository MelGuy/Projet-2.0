<?php
include "bdd.php";
include_once "UserSession.class.php";

$userSession = new UserSession();

$userId = $userSession -> getUserId();

if($_POST){
    $idFact = $_POST['idFact'];
    var_dump($idFact);

$req = $bdd->prepare(
    "DELETE 
    FROM favorite 
    WHERE idUSer = ? AND idFact = ?"
    );

$favProduct = $req->execute([$userId, $idFact]);
}
?>