<?php
include "bdd.php";


$idCategorie = $_GET['idCat'];

$req = $bdd->prepare('
     SELECT COUNT(id) AS nbLignes
     FROM facts
     WHERE idCategorie = ?
');

$req->execute([$idCategorie]);
$factsParPage = 5;
$dess = $req->fetch();
$totalPages = $dess['nbLignes'];
$nbPages = ceil($totalPages/$factsParPage);

if (isset($_GET['page']) && is_numeric($_GET['page']) && $_GET['page'] > 0 && $_GET['page'] <= $nbPages)
{
        $page = intval($_GET['page']);
}
else
{
        $page = 1;
}
 
$premierePage = $page*$factsParPage - $factsParPage;



$reponse = $bdd->prepare(
    "SELECT * 
    FROM `facts` 
    WHERE idCategorie = ?
    ORDER BY `idCategorie` ASC
    LIMIT ".$premierePage.",".$factsParPage.""
);


$reponse->execute([$idCategorie]);
$byCat=$reponse->fetchAll();

