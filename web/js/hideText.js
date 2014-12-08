$(document).ready(function(){
    $("#questions").hide();
    $("#hide").click(function(){
      $("#introduction").hide(1000);
      $("#questions").show(1000);
    });
});