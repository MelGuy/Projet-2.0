"use strict";

$(document).ready(function(){
    isInFav();
    $('.fav').on('click', addToFav);
    $('.removeFav').on('click', removeFav);
});

function isInFav(){

    $.ajax({
        url : "isInFav.php",
        type: "get",
        dataType: "json",
        success: function(data){

            var button = $(".fav");
            console.log(data.userFav);
            
            for(var i=0; i<button.length; i++){
                var allFactId = $(button[i]).data('id');
                    //console.log(allFactId);
                for (var j=0; j<data.userFav.length; j++){
                    
                    if (allFactId == data.userFav[j]['idFact']){
                        //console.log("bbb");
                        var pasFav = $('.removeFav');
                        $(button[i]).addClass("hide");
                        $(pasFav[i]).addClass("block");
                    } 
                };
            }
        
        },
        error: function(data){           
            console.log('error');
        },
        complete: function(data){
            console.log("ajax complete");
        }
    });
   
}

function addToFav(e){
    e.preventDefault();

    var idFact = $(this).data('id');
    console.log(idFact);

    $.ajax({
        url : 'fav.php',
        type : 'POST', 
        data : {'idFact' : idFact},
        success: function(data){

            isInFav();
        },
        error: function(data){
            
            console.log("error");
        },
        
        complete: function(data){
            console.log("ajax complete");
        }
    });
}
function removeFav(e){
        e.preventDefault();

        var idFact = $(this).data('id');
        var thisBtn = $(this);
        var button = $(".fav");
        console.log(thisBtn);
        isInFav();
        $.ajax({
            url : 'removeFav.php',
            type : 'POST', 
            data : {'idFact' : idFact},
            success: function(data){
                
                
                for(var i=0; i<button.length; i++){
                        $(thisBtn).removeClass("block");
                        $(button[i]).removeClass("hide");
                    console.log(button[i]);
                }
                
                isInFav();
            },
            error: function(data){
                console.log("error");
            },
            
            complete: function(data){
                console.log("ajax complete");
            }
        });
    }

