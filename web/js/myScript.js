/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(initialize);

function initialize() {
    $("#save_notes_form").submit(function(event) {
        var url = "http://localhost:8080/Bioinformatica_website/makeNotes.do";
        var notes_data = {'notes': $("#save_notes_form textarea").val()};
        //alert(notes_data['notes']);
        $.post(url, notes_data, function(data) {
            if (data === data) {
                alert("" + data + "\nNotes saved!");

            } else {
                alert("" + data + "\nnotes NOT saved");
            }

            $(".result").html(data);
        });
        //alert("Handler for .submit() called.");
        event.preventDefault();
    });

    $("#next_question_button").click(function() {
        var imageNr = $("#image").data("imgnumber");
        switch(imageNr){
            case 1:
                $("#questionImage").load("html/technasiumQuestions/slide2.jsp");
                break;
            case 2: 
                $("#questionImage").load("html/technasiumQuestions/slide3.jsp");
                break;
            default:
                $("#questionImage").load("html/technasiumQuestions/slide2.jsp");
        }

    });
    $("#last_question_button").click(function() {
       var imageNr = $("#image").data("imgnumber");
        switch(imageNr){
            case 1:
                break;
            case 2: 
                $("#questionImage").load("html/technasiumQuestions/slide1.jsp");
                break;
            case 3: 
                $("#questionImage").load("html/technasiumQuestions/slide2.jsp");
                break;
            default:
                $("#questionImage").load("html/technasiumQuestions/slide1.jsp");
        }
    });
}

