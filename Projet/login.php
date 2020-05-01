<?php
include "header.inc.php"; ?>

<!----------Connexion------------->

<div class="signin-container">
    <form action="connexion.php" method="post" class="form-signin">
        <h1>Identifiez-vous</h1>
        <div class="form-group">
            <input type="text" class="form-control" name="email" id="email" aria-describedby="emailHelp" placeholder="Email ou pseudo">
            <input type="password" class="form-control" name="password" id="password" placeholder="Mot de passe">
        </div>
        <button id="submit" type="submit" class="btn btn-primary">Connexion</button>
    </form>
</div>


<!----------Inscription------------->

<div>
    <form action="form.php" method="post" class="info form-group col-md-12">
        <h1>Créer votre compte</h1>
        <div class="form-row">
            <div class="form-group col-md-12">
                <label for="inputEmail4"></label>
                <input type="text" name="email" class="form-control" id="mail" placeholder="Adresse email">
                <span class="invalid-feedback">Mauvaise adresse email</span>
            </div>
            <div class="form-group col-md-6">
                <label for="pseudo"></label>
                <input type="text" name="pseudo" class="form-control" id="pseudo" placeholder="Pseudo">
            </div>
            <div class="form-group col-md-6">
                <label for="mdp"></label>
                <input type="password" name="password" class="form-control" id="mdp" placeholder="Mot de passe">
            </div>
        </div>
        <div class="form-row">
            <div class="form-group col-md-6">
                <label for="name"></label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Votre prénom">
            </div>
            <div class="form-group col-md-6">
                <label for="lastName"></label>
                <input type="text" name="lastName" class="form-control" id="lastName" placeholder="Votre nom">
            </div>
        </div>
        <button type="submit" id='submitForm' class="btn btn-primary">Enregistrer</button>
    </form>
</div>

<?php 
include "footer.inc.php";
 ?>