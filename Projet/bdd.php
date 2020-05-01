<?php

$bdd = new PDO('mysql:host=localhost;dbname=randomfacts;charset=UTF8', 
'root', 
'',
[
    PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]
);

$bdd->exec("SET NAMES UTF8");

?>