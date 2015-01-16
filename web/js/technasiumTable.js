/* 
 * Made by Mkslofstra
 * purpose: to save the content of the table on the technasium page. 
 */

$(document).ready(initialize);
function initialize() {
    // load the previous answered information
    // walk through each cookie
    for (var id in $.cookie()){
        //save the value of the cookie (this is true or false, whether the box was checked or not).
        var value = $.cookie(id);
        //if the value is true, check the box again on this page. 
        if(value === true|value ==="true"){
            $("#"+id).prop('checked', true);
        }
        //if the value is false, uncheck the box again on this page. 
        else if(value === false | value === "false"){
            $("#"+id).prop('checked', false);
        }
    }
    // is a checkbox is clicked, save if its checked or unchecked. 
    $('.check').click(function () {
        // if the click checks the box, set the value in the cookie with this id true
        if (this.checked) {
            $.cookie($(this).attr('id'), true);
        // else (box unchecked), set the value in the cookie with this id false. 
        }else{
             $.cookie($(this).attr('id'), false);
        }
    });
}
