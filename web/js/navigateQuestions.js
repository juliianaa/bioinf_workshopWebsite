/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
jQuery(document).ready(initialize);

function initialize() {
    jQuery("#next_question_button").click(function () {
        var pageID = jQuery("#number_passer").data("nr");
        switch (pageID) {
            case 1:
                jQuery("#question").load("html/assignmentsMasterClassNHanzexperience/assignment1bc.jsp");
                break;
            case 2:
                jQuery("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2a.jsp");
                break;
            case 3:
                jQuery("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2b.jsp");
                break;
            case 4:
                jQuery("#question").load("html/assignmentsMasterClassNHanzexperience/assignment2c.jsp");
                break;

        }

    });
}
