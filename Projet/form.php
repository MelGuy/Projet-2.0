<?php
include "bdd.php";


$email = $_POST['email'];
$password = $_POST['password'];
$pseudo = $_POST['pseudo'];
$name = $_POST['name'];
$lastName = $_POST['lastName'];


$req = $bdd->prepare(
    "INSERT INTO 
    user (mail, pseudo, password, name, lastName
    ) VALUES (?,?,?,?,?)");
    $user = $req->execute([$email, $pseudo, $password, $name, $lastName]);
    
    if(empty($user) == false){
        $reponse = true;
        

    }
    echo json_encode(['reponse' => $reponse]);
        
