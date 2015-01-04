/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(initialize);

function initialize() {
    $("#next_question_button").click(function () {
        $("#question").load("html/masterclassQuestion/masterclassQuestion2.jsp");
    
    });
    $("#previous_question_button").click(function () {
        $("#question").load("html/masterclassQuestion/masterclassQuestion1.jsp");
    
    });
}
