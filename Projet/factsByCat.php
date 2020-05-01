<?php
include "header.inc.php";
include "byCat.php";
?>

<?php foreach($byCat as $value): ?>
<section class="generateFact" >

    <div style="background-image: url(<?= $value['img']; ?>);" class="fact" alt="image approprié">
        <p class="fait"><?php echo $value['fait'] ?></p>
            
        <i id="plus" class="fas fa-search-plus"></i>
        <div class="hide" id="detail">
            <p class="details"><?php echo $value['details'] ?></p>
        </div id="detail">
        
    </div>
    <div class="sourceFav">
        
        <ul>
            <li><button id="source"><a href="#">Source</a></button></li>
            <li id="favButton">           
                <button class="fav" data-id="<?php echo $value['id']?>"><i class="fas fa-heart"></i></button>
                <button class="removeFav" data-id="<?php echo $value['id']?>"><i class='fas fa-heart-broken'></i></button>              
            </li>
            <li><button id="share"><a href="<?php echo $value['source']?>"><i class="fas fa-share-square"></i></a></button></li>
        </ul>  
        
    </div>   
</section>
<?php endforeach; 
echo 'Page : ';
for($i = 1 ; $i <= $nbPages ; $i++){
    echo '<a href="factsByCat.php?idCat='.$idCategorie.'&page=' . $i . '">' . $i . '</a> ';
};
include "footer.inc.php";
?>


