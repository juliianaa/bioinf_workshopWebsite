/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(document).ready(initialize);

function initialize() {
    $("#next_question_button").click(function () {
        var pageID = $("#number_passer").data("nr");
        switch (pageID) {
            case 1:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1b.jsp");
                $("#next_question_button").show();
                break;
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1c.jsp");
                $("#previous_question_button").hide();
                break;
            case 3:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                $("#previous_question_button").show();
                break;
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                break;
            case 5:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2cMBO.jsp");
                $("#next_question_button").hide();
                break;
        }
    });
    $("#previous_question_button").click(function () {
        var pageID = $("#number_passer").data("nr");
        switch (pageID) {
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1c.jsp");
                $("#previous_question_button").hide();
                 $("#next_question_button").show();
                break;
            case 5:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                break;
            case 6:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                $("#next_question_button").show();
                break;
                
        }
    });
}
