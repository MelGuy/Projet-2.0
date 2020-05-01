<?php 
include_once "UserSession.class.php";
include "categories.php";
?>

<!DOCTYPE html>
<html lang="fr">
<head>
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Major+Mono+Display" rel="stylesheet">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css" integrity="sha384-UHRtZLI+pbxtHCWp1t77Bi1L4ZtiqrqD80Kn4Z8NTSRyMA2Fd33n5dQ8lWUE00s/" crossorigin="anonymous">
    <link rel="stylesheet" href="css/style.css">
    <title>Random Facts</title>
</head>
<body>
    <header>
        <div class="user-area">
            <?php $userSession = new UserSession(); ?>
            <?php if($userSession->isAuthenticated()): ?>
                <ul>
                    <li><i class="fas fa-user"></i><p> Bonjour <?=$userSession -> getPseudo();?>, vous ếtes connecté !</p></li>
                    <li><a href="favories.php"><i class="fas fa-heart"></i> Mes favories</li></a>
                    <li><a href="logout.php"><i class="fas fa-times-circle"></i> Déconnexion</li></a>
                </ul>
            </div>
            <?php else: ?>
                <li><a href="login.php">Connectez-vous</a></li>
            <?php endif;?>
            <a href="index.php">
                <img src="img/logo.png" alt="logo">
            </a>
            <nav>
                
                <a href="#" class='cats'>Catégorie</a>
                <ul class="cat">
                <?php foreach ($categories as $value):?>
                    <li>
                        <a href="factsByCat.php?idCat=<?=$value['id']?>"><h3><?= $value['libelle']?></h3></a>
                    
                    </li>   
                <?php endforeach ?>
                </ul>
                
            </nav>
            
            
        <div id="connecte">
            <ul>
                <li><a href="#"><i class="far fa-user"></i>Espace personnel</a></li>
                <li><a href="#"><i class="far fa-user"></i>Se déconnecter</a></li>
            </ul>
        </div>
    </header>
<main>