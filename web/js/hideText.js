$(document).ready(function(){
    $("#question2").hide();
    $("#hide").click(function(){
      $("#question1").hide(1000);
      $("#question2").show(1000);
    });
    
   $("#assignment2_q2").hide();
   $("#assignment2_q3").hide();
    $("#hide2").click(function(){
      $("#assignment2_q1").hide(1000);
      $("#assignment2_q2").show(1000);
    });
    $("#hide3").click(function(){
      $("#assignment2_q2").hide(1000);
      $("#assignment2_q3").show(1000);
    });
    
});