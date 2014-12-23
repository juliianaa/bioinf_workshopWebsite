$(function() {
 var outside_1 = 0;   
 var outside_2 = 0;   
 var outside_3 = 0;   
 var outside_4 = 0;   
    
    $( "#draggable1").draggable({
        accept      : '.draggable1',
        out         : function(){
            outside_1 = 1;
        }
    });
    $( "#makeMeDroppable_1").droppable({
      accept: "#draggable1",
      drop: function(event, ui){
        if(outside_1 === 1){
            alert('Dropped outside!');
        }else{
            alert('Dropped inside!');
        }
    }
    });
    
    $( "#draggable2").draggable({
        accept      : '.draggable2',
        out         : function(){
            outside_2 = 1;
        },
        over        : function(){
            outside_2 = 0;
        }
    });
    $( "#makeMeDroppable_2").droppable({
      accept: "#draggable2",
      drop: function( event, ui ) {
        if(outside_2 === 1){
            alert('Dropped outside!');
        }else{
            alert('Dropped inside!');
        }
      }
    });
    
    $( "#draggable3").draggable({
        accept      : '.draggable3',
        out         : function(){
            outside_3 = 1;
        },
        over        : function(){
            outside_3 = 0;
        }
    });
    $( "#makeMeDroppable_3").droppable({
      accept: "#draggable3",
      drop: function( event, ui ) {
        if(outside_3 === 1){
            alert('Dropped outside!');
        }else{
            alert('Dropped inside!');
        }
      }
    });
    
    $( "#draggable4").draggable({
        accept      : '.draggable4',
        out         : function(){
            outside_4 = 1;
        },
        over        : function(){
            outside_4 = 0;
        }
    });
    $( "#makeMeDroppable_4").droppable({
      accept: "#draggable4",
      drop: function( event, ui ) {
        if(outside_4 === 1){
            alert('Dropped outside!');
        }else{
            alert('Dropped inside!');
        }
      }
    });   
  });