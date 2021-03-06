/*
 * By mldubbelaar
 * Checks if the email adress is indeed an email adress.
 */

$(document).ready(validator);

function validator() {
    // Whenever the register_form is submitted this function will be used.
    $("#register_form").submit(function (event) {
        var re = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

        //The values of all the data will be saved within its own value.
        var data_username = $("#userName").val();
        var data_password = $("#passWord").val();
        var data_firstName = $("#firstName").val();
        var data_lastName = $("#lastName").val();
        var data_email = $("#email").val();

        /*
         * An alert will be given Whenever the different values are empty.
         * A check will be used for the email to determine if the email contains 
         * a @ and a dot. 
         */
        if (data_username === "" || data_username === null) {
            alert("Check je gegevens, de username is niet aanwezig");
            event.preventDefault();
        }
        else if (data_password === "" || data_password === null) {
            alert("Check je gegevens, vul een wachtwoord in");
            event.preventDefault();
        }
        else if (data_firstName === "" || data_firstName === null) {
            alert("Check je gegevens, vul een voornaam in");
            event.preventDefault();
        }
        else if (data_lastName === "" || data_lastName === null) {
            alert("Check je gegevens, vul een achternaam in");
            event.preventDefault();
        }
        else if (!re.test(data_email) || data_email === "" || data_email === null) {
            alert("Vul aub een correct email adres in");
            event.preventDefault();
        }

    });
}