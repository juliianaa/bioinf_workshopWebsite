/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(initialize);

function initialize() {
    $("#next_question_button").click(function() {
        var pageID =$("#number_passer").data("nr");
        switch (pageID) {
            case 1:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1b.jsp");
                $("#previous_question_button").show();
                break;
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                $("#previous_question_button").show();
                break;
            case 3:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                break;
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2c.jsp");
                $("#next_question_button").hide();
                break;
            default:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1a.jsp");
                break;
        }
    });
    $("#previous_question_button").click(function () {
        var pageID =      $("#number_passer").data("nr");
        switch (pageID) {
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1a.jsp");
                $("#previous_question_button").hide();
                break;
            case 3:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1bc.jsp");
                break;
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                break;
            case 5:
     $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                break;
        }
        });
    }
