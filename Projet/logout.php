<?php

include_once "UserSession.class.php";


$userSession = new UserSession();

$userSession -> destroy();

header('Location: /projet/index.php');


?>


