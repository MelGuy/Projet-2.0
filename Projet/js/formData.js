$(document).ready(function(){
$(".info").on("submit", formData);
$(".form-signin").on("submit", userConnexion);
});

function formData(e){
    
    e.preventDefault();
    
    var email = $("#mail").val();
    var lastName = $("#lastName").val();
    var name = $("#name").val();
    var pseudo = $("#pseudo").val();
    var password = $("#mdp").val();

    if(email.trim().length > 0 && password.trim().length > 0){
        var regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if(regex.test(email) == false){
            $('#mail').addClass('is-invalid'); 
     
        } else {

            $.ajax({
        url: 'form.php',
        method: 'post',
        dataType: 'json',
        data: {
            email: email,   
            name: name,  
            lastName: lastName,
            pseudo:pseudo,
            password:password
        },
        success: function(data){
            if(data.reponse){
                $('.info').html('<div class="alert alert-success" role="alert">Vous êtes enregistré !<br>Bienvenue !</div>');
            } else {
                $('<div class="alert alert-danger" role="alert">Merci de remplir tous les champs</div>').insertAfter("h1"); 
            }
        }
            });
        }
    } else {
        var sub = $('#submitForm');
        $('<div class="alert alert-danger" role="alert">Merci de remplir tous les champs</div>').insertAfter(sub);
    }
};

function userConnexion(e){
    e.preventDefault();
    $(".alert-danger").remove();
    var email = $("#email").val();
    var password = $("#password").val();
    if(email.trim().length > 0 && password.trim().length > 0){
        var regex = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
        if(regex.test(email) == false){
                        $('<div class="alert alert-danger" role="alert">Veuillez saisir un email correct</div>').insertAfter("h1"); 
        } else {
            
            $.ajax({
                url: 'connexion.php',
                method: 'post',
                dataType: 'json',
                data: {email: email, password: password},
                success: function(data){
                    
                    if(data.reponse){
                        document.location.href="index.php"
                    } else {
                        $('<div class="alert alert-danger" role="alert">Identifiants incorrects</div>').insertAfter("h1"); 
                    }
                }
            });
        }
    } else {
        var sub = $('#submit');
        $('<div class="alert alert-danger" role="alert">Merci de remplir tous les champs</div>').insertAfter(sub);
    }  
}