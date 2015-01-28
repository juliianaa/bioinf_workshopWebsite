/* 
 * By Mkslofstra
 * watch the casus on the technasium workshop page
 */

$(document).ready(initialize);


function initialize() {
    //By mkslofstra
    //When the << button is clicked, show the first page
    $("#first").click(function() {
        $("#questionImage").load("html/technasiumQuestions/tafel.jsp");
    });
    //By mkslofstra
    //When the >> button is clicked, show the last page of the slides
    $("#last").click(function() {
        $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
    });
    //By mkslofstra
    //When the next next question button is clicked, for each page which is 
    //showing at that moment, the next should be loaded.
    $("#next_question_button").click(function() {
        //In the data element with the value data is the number of each image stored
        var imageNr = $("#image").data("imgnumber");
        //check which imagenumber is the current number, when that number is reached, 
        //load the next image. 
        switch (imageNr) {
            case "tafel":
                $("#questionImage").load("html/technasiumQuestions/bewijs.jsp");
                break;
            case "bewijs":
                $("#questionImage").load("html/technasiumQuestions/slide1.jsp");
                break;
            case 1:
                $("#questionImage").load("html/technasiumQuestions/slide2.jsp");
                break;
            case 2:
                $("#questionImage").load("html/technasiumQuestions/slide3.jsp");
                break;
            case 3:
                $("#questionImage").load("html/technasiumQuestions/slide4.jsp");
                break;
            case 4:
                $("#questionImage").load("html/technasiumQuestions/slide5.jsp");
                break;
            case 5:
                $("#questionImage").load("html/technasiumQuestions/slide6.jsp");
                break;
            case 5:
                $("#questionImage").load("html/technasiumQuestions/slide6.jsp");
                break;
            case 6:
                $("#questionImage").load("html/technasiumQuestions/slide7.jsp");
                break;
            case 7:
                $("#questionImage").load("html/technasiumQuestions/slide8.jsp");
                break;
            case 8:
                $("#questionImage").load("html/technasiumQuestions/slide9.jsp");
                break;
            case 9:
                $("#questionImage").load("html/technasiumQuestions/slide10.jsp");
                break;
            case 10:
                $("#questionImage").load("html/technasiumQuestions/slide11.jsp");
                break;
            case 11:
                $("#questionImage").load("html/technasiumQuestions/slide12.jsp");
                break;
            case 12:
                $("#questionImage").load("html/technasiumQuestions/slide13.jsp");
                break;
            case 13:
                $("#questionImage").load("html/technasiumQuestions/slide14.jsp");
                break;
            case 14:
                $("#questionImage").load("html/technasiumQuestions/slide14a.jsp");
                break;
            case "14a":
                $("#questionImage").load("html/technasiumQuestions/slide14b.jsp");
                break;
            case "14b":
                $("#questionImage").load("html/technasiumQuestions/slide15.jsp");
                break;
            case 15:
                $("#questionImage").load("html/technasiumQuestions/slide16.jsp");
                break;
            case 16:
                $("#questionImage").load("html/technasiumQuestions/slide17.jsp");
                break;
            case 17:
                $("#questionImage").load("html/technasiumQuestions/slide18.jsp");
                break;
            case 18:
                $("#questionImage").load("html/technasiumQuestions/slide19.jsp");
                break;
            case 19:
                $("#questionImage").load("html/technasiumQuestions/slide20.jsp");
                break;
            case 20:
                $("#questionImage").load("html/technasiumQuestions/slide20a.jsp");
                break;
            case "20a":
                $("#questionImage").load("html/technasiumQuestions/slide21.jsp");
                break;            
            case 21:
                $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
                break;
            default:
                $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
                //yes that were a lot images... 
        }

    });
    //By mkslofstra
    //When the last question button is clicked, the last question should be loaded. 
    $("#last_question_button").click(function() {
        var imageNr = $("#image").data("imgnumber");
        switch (imageNr) {
            //when the number of the current image number is reached, 
            //load the next slide of it
            case "tafel":
                $("#questionImage").load("html/technasiumQuestions/tafel.jsp");
                break;
            case "bewijs":
                $("#questionImage").load("html/technasiumQuestions/tafel.jsp");
                break;
            case 1:
                $("#questionImage").load("html/technasiumQuestions/bewijs.jsp");
                break;
            case 2:
                $("#questionImage").load("html/technasiumQuestions/slide1.jsp");
                break;
            case 3:
                $("#questionImage").load("html/technasiumQuestions/slide2.jsp");
                break;
            case 4:
                $("#questionImage").load("html/technasiumQuestions/slide3.jsp");
                break;
            case 5:
                $("#questionImage").load("html/technasiumQuestions/slide4.jsp");
                break;
            case 6:
                $("#questionImage").load("html/technasiumQuestions/slide5.jsp");
                break;
            case 7:
                $("#questionImage").load("html/technasiumQuestions/slide6.jsp");
                break;
            case 8:
                $("#questionImage").load("html/technasiumQuestions/slide7.jsp");
                break;
            case 9:
                $("#questionImage").load("html/technasiumQuestions/slide8.jsp");
                break;
            case 10:
                $("#questionImage").load("html/technasiumQuestions/slide9.jsp");
                break;
            case 11:
                $("#questionImage").load("html/technasiumQuestions/slide10.jsp");
                break;
            case 12:
                $("#questionImage").load("html/technasiumQuestions/slide11.jsp");
                break;
            case 13:
                $("#questionImage").load("html/technasiumQuestions/slide12.jsp");
                break;
            case 14:
                $("#questionImage").load("html/technasiumQuestions/slide13.jsp");
                break;
            case "14a":
                $("#questionImage").load("html/technasiumQuestions/slide14.jsp");
                break;
            case "14b":
                $("#questionImage").load("html/technasiumQuestions/slide14a.jsp");
                break;
            case 15:
                $("#questionImage").load("html/technasiumQuestions/slide14b.jsp");
                break;
            case 16:
                $("#questionImage").load("html/technasiumQuestions/slide15.jsp");
                break;
            case 17:
                $("#questionImage").load("html/technasiumQuestions/slide16.jsp");
                break;
            case 18:
                $("#questionImage").load("html/technasiumQuestions/slide17.jsp");
                break;
            case 19:
                $("#questionImage").load("html/technasiumQuestions/slide18.jsp");
                break;
            case 20:
                $("#questionImage").load("html/technasiumQuestions/slide19.jsp");
            case "20a":
                $("#questionImage").load("html/technasiumQuestions/slide20.jsp");
                break;
                break;
            case 21:
                $("#questionImage").load("html/technasiumQuestions/slide20.jsp");
                break;
            case 22:
                $("#questionImage").load("html/technasiumQuestions/slide21.jsp");
                break;
            default:
                $("#questionImage").load("html/technasiumQuestions/slide1.jsp");
        }
    });
    //By mkslofstra
    //Show the slide of the evidence. 
    $("#bewijsMateriaal").click(function() {
        $("#questionImage").load("html/technasiumQuestions/bewijs.jsp");
        //remove the class hidden of the next page button, and show again
        $("#nextPage").removeClass("hidden");
    });
    //By mkslofstra
    //Load the next page by ajax, this is a jsp file with a table 
    //which can be added by the user
    $("#nextPage").click(function() {
        $("#questionImage").load("includes/technasiumTable.jsp");
        //hide the button of next page, because there is no next page
        $("#nextPage").addClass("hidden");
        //change the text of the first page to 'Terug', because adding an extra button
        //would be work for nothing because the first page of the slides should be loaded
        //here also. 
        $("#first").text("Terug");
        //move the first and "terug" button
        $("#first").addClass("move");
        //hide the >> button. 
        $("#last").addClass("hidden");
        //hide the next and last question buttons. 
        $("#last_question_button").addClass("hidden");
        $("#next_question_button").addClass("hidden");
    });
    //By mkslofstra
    //When first question button is clicked
    //undo changes of the next page button. 
    $("#first").click(function() {
        //change the text on the button back. 
        $("#first").text("<<");
        //remove the class hidden of the << button, and show again
        $("#last").removeClass("hidden");
        $("#first").removeClass("move");
        //remove the class hidden of the last question button, and show again
        $("#last_question_button").removeClass("hidden");
        //remove the class hidden of the next question button, and show again
        $("#next_question_button").removeClass("hidden");
        //remove the class hidden of the next page button, and show again
        $("#nextPage").removeClass("hidden");
    });
}

