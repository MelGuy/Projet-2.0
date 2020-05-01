<?php
include "header.inc.php";
include "generator.php";
include "bdd.php";
?>
<button id="change"><i class="fas fa-sync-alt"></i></button>
<section class="generateFact" id="<?php echo $randomF['id'] ?>">
    <div style="background-image: url(<?= $randomF['img']; ?>);" class="fact" alt="image qui convient">
        <p class="fait"><?php echo $randomF['fait'] ?></p>
        <i id="plus" class="fas fa-search-plus"></i>
        <div class="hide" id="detail">
            <p class="details"><?php echo $randomF['details'] ?></p>
        </div id="detail">
    </div>
    <div class="sourceFav">
        <ul>
            <li><button id="source"><p>Source</p></button></li>
            <li id="favButton">
                
                <button class="fav" data-id="<?php echo $randomF['id']?>"><i class="fas fa-heart"></i></button>
                <button class="removeFav" data-id="<?php echo $randomF['id']?>"><i class='fas fa-heart-broken'></i></button>
                
            </li>
            <li><button id="share"><a href="<?php echo $randomF['source']?>"><i class="fas fa-share-square"></i></a></button></li>
        </ul>  
    </div>   
</section>

<?php
include "footer.inc.php" ?>
