/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ready(initialize);

function initialize() {
    $("#saveTable").click(function() {
        $("td").each(function() {
            
           if ( $(this).is(':checked')){
               alert($(this).data("selected"));
               $(this).data("selected", "1");
               
           }
            

            // compare id to what you want
        });
    });
}
