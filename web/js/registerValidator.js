     /*
      * By mldubbelaar
      * Checks if the email adress is indeed an email adress
      */
     
$(document).ready(validator);

function validator() {
     $("#register_form").submit(function(event) {
        var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
        
        var data_username = $("#userName").val();
        var data_password = $("#password").val();
        var data_firstName = $("#firstName").val();
        var data_lastName = $("#lastName").val(); 
        var data_email = $("#email").val();
            
        if (data_username === "" || data_username===null){
            alert("Check je gegevens");
            event.preventDefault();
        }
        else if (data_password === "" || data_password===null){
            alert("Check je gegevens, shit enzo");
            event.preventDefault();
        }
        else if (data_firstName === "" || data_firstName===null){
            alert("Check je gegevens, shit enzo");
            event.preventDefault();
        }
        else if (data_lastName === "" || data_lastName===null){
            alert("Check je gegevens");
            event.preventDefault();   
        } 
        else if (!re.test(data_email) || data_email === "" || data_email===null){
            alert("Vul aub een correct email adres in");
            event.preventDefault();
        }
    });
}