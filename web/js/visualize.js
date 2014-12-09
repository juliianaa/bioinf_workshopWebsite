/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */	

window.onload = function() {
    var paper = new Raphael(document.getElementById('canvas_container'), 500, 500);
    for(var i = 0; i < 5; i+=1) {
    var multiplier = i*5;
    paper.circle(250 + (2*multiplier), 100 + multiplier, 50 - multiplier);
    }
    var rectangle = paper.rect(50, 50, 250, 400);
    var ellipse = paper.ellipse(200, 400, 100, 50);
    var circ = paper.circle(180, 250, 40).attr({fill: '#000'});
    var mood_text = paper.text(180, 250, 'Hanze\n Xperience').attr({fill: '#fff'});
};