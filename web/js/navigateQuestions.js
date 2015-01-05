/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
alert("hi");
$(document).ready(initialize);

function initialize() {
    $("#next_question_button").click(function () {
        var pageID = $("#refreshQuestion").data("nr");
        alert(pageID);
        switch (pageID) {
            case 1:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2.jsp");
                break;
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment3.jsp");
                break;
        }

    });
}
