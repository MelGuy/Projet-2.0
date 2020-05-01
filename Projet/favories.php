<?php
include "header.inc.php";
include "mesFav.php";
?>
<ul>
    <?php foreach($mesFav as $value): ?>

        <li><p><?php echo $value['fait'] ?></p></li>
        <hr>

    <?php   endforeach; ?>
    </ul>
<?php 
include "footer.inc.php" ?>