$(document).ready(function(){
    
    $('#change').on('click', getRandomFact);
    $('.cats').on('click', getCats);
});

function getRandomFact(){
    
    location.reload(true);
 
};

function getCats(){
    $(".cat").toggle('fast');
}