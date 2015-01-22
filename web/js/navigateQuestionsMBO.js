/* 
 *
 * @author: aroeters/jwlgoh
 * This javascript is used for the navigation between the different pages
 * of the masterclass and hanzeExperienceMBO
 */
$(document).ready(initialize);

function initialize() {
    $("#next_question_button").attr("style", "display: inline;");
    $("#next_question_button").click(function() {
        var pageID = $("#number_passer").data("nr");
        var workID = window.location.pathname.split("/");
        var workIdLength = workID[workID.length - 1];

        switch (pageID) {
            case 1:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1b.jsp");
                break;
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1c.jsp");
                break;
            case 3:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                break;
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                break;
            case 5:
                if (workIdLength === "assignment1.jsp") {
                    $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2cMBO.jsp");
                    $("#next_question_button").hide();
                } else {
                    $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2cHavo.jsp");
                    $("#next_question_button").hide();
                }
                break;
        }
    });
}