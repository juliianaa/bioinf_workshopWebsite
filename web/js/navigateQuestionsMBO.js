/* 
 *
 * @author: aroeters
 * This javascript is used for the navigation between the different pages
 * of the masterclass and hanzeExperienceMBO
 */
$(document).ready(initialize);

function initialize() {
    // show the next_question_button
    $("#next_question_button").attr("style", "display: inline;");
    // when clicked on the next_question_button
    $("#next_question_button").click(function() {
        // set the pageID as the nr that is given in the number_passer
        var pageID = $("#number_passer").data("nr");
        // check which case corresponds with the pageID and load that jsp page
        // by refreshing the question div
        switch (pageID) {
            case 1:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1b.jsp");
                // show the previous question button
                $("#previous_question_button").show();
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
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2cMBO.jsp",
                        // create the accordion function for this page specific
                                function() {
                                    $("#accordion").accordion({
                                        collapsible: true,
                                        active: false
                                    }).collapse("hide");
                                });
                        // hide the next_question_button
                        $("#next_question_button").hide();
                        break;
                }
    });
    // show the previous_question_button
    $("#previous_question_button").attr("style", "display: inline;");
    // when the previous_question_button is clicked
    $("#previous_question_button").click(function() {
        // set the pageID as the nr that is given in the number_passer
        var pageID = $("#number_passer").data("nr");
        // check which case corresponds with the pageID and load that jsp page
        // by refreshing the question div
        switch (pageID) {
            case 2:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1a.jsp");
                // hide the previous_question_button
                $("#previous_question_button").hide();
                break;
            case 3:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1b.jsp");
                break;
            case 4:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1c.jsp");
                break;
            case 5:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                break;
            case 6:
                $("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                // show the next_question_button
                $("#next_question_button").show();
                break;
        }
    });
}