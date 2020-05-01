<?php

$req = $bdd->prepare(" 
    SELECT *
    FROM facts
    ORDER BY rand()
");

$req->execute();
$randomF = $req->fetch();





