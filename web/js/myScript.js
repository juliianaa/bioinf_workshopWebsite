/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(initialize);

function initialize() {
    /*
     * Whenever save_notes_form is called the servlet makeNotes.do is called.
     */
    $("#save_notes_form").submit(function(event) {
        var url = "http://localhost:8080/Bioinformatica_website/makeNotes.do";
        /*
         * The input of the notes is saved as notes_data.
         */
        var notes_data = $("#save_notes_form textarea").val();
        // var notes_data = {'notes': $("#save_notes_form textarea").val()};
        /*
         * The notes_data will be posted to the servlet (url), 
         * if the text is saved the servlet will return true. 
         * Within these lines also known as data.
         * So if data === true, the text was saved succesfully
         */
        $.post(url, notes_data, function(data) {
            if (data === "true"){
                alert("Notes saved!");
            } else {
                alert("Notes NOT saved");
            }  
//            $(".result").html(data);
        });
        //alert("Handler for .submit() called.");
        event.preventDefault();
    });
    $("#first").click(function() {
        $("#questionImage").load("html/technasiumQuestions/tafel.jsp");
    });
    $("#last").click(function() {
        $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
    });
    $("#next_question_button").click(function() {
        var imageNr = $("#image").data("imgnumber");
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
                $("#questionImage").load("html/technasiumQuestions/slide21.jsp");
                break;
            case 21:
                $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
                break;
            default:
                $("#questionImage").load("html/technasiumQuestions/slide22.jsp");
        }

    });
    $("#last_question_button").click(function() {
        var imageNr = $("#image").data("imgnumber");
        switch (imageNr) {
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
    $("#bewijsMateriaal").click(function(){
        $("#questionImage").load("html/technasiumQuestions/bewijs.jsp");
    });
}

