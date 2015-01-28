/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * @author: jwlgoh/aroeters
 */

$(document).ready($(init));
//contains the number of correct answers
var correctAnswers = 0;
function init() {
    // Hide the success message
    $('#successMessage').hide();
    $('#successMessage').css({
        left: '580px',
        top: '600px',
        width: 0,
        height: 0
    });
    // Reset the game
    // by aroeters
    correctAnswers = 0;
    $('#answersPile').html('');
    $('#answersSlots').html('');
    // contains all the dragable answers that have to be turned into cards
    var numbers = ["Lees DNA Sequentie Uit Bestand", "Controleer De DNA Sequentie op goede letters ( A T C G )", "Print geen startcodon gevonden", "Zoek het volgende stopcodon"];
    // gives the card an id
    var ids = ["A", "B", "C", "D"];
    for (var i = 0; i < 4; i++) {
        $('<div>' + numbers[i] + '</div>').data('number', i + 1).attr('id', ids[i]).appendTo('#answersPile').draggable({
            containment: '#content',
            stack: '#answersPile div',
            cursor: 'move',
            revert: true
        });
    }
    //by aroeters
    // enlarges and reduces the size of the answers cards
    $('.ui-draggable').css({fontSize: 11}).mousedown(function() {
        $(this).addClass('transition');
    });
    $('.ui-draggable').mouseup(function() {
        $(this).removeClass('transition');
    });
    // makes the cursor a pointer
    $('.ui-draggable').hover(function() {
        $(this).addClass('mousePointer');
    });
//    contains the ids from the anwser slots
    var style = ['answer1', 'answer2', 'answer3', 'answer4'];
    // creates the slots where the cards can be dropped
    for (var i = 1; i <= 4; i++) {
        $('<div></div>').data('number', i).attr('id', style[i - 1]).addClass(style[i - 1]).appendTo('#answersSlots').droppable({
            accept: '#answersPile div',
            hoverClass: 'hovered',
            drop: handleCardDrop,
            tolerance: "touch"
        });
    }
    //by jwlgoh
    function handleCardDrop(event, ui) {
        // contains the slot number
        var slotNumber = $(this).data('number');
        // contains the card number
        var cardNumber = ui.draggable.data('number');

        // 
        // If the card was dropped to the correct slot,
        // change the card colour, position it directly
        // on top of the slot, and prevent it being dragged
        // again by disabling the draggable function

        if (slotNumber === cardNumber) {
            ui.draggable.addClass('correct');
            ui.draggable.draggable('disable');
            $(this).droppable('disable');
            ui.draggable.position({of: $(this), my: 'left top', at: 'left top'});
            ui.draggable.draggable('option', 'revert', false);

            correctAnswers++;
        }

        // by aroeters
        // If all the cards have been placed correctly then display a message
        // shows the message if the number of correct items is 4
        if (correctAnswers === 4) {
            $('#next_question_button').show();
            $('#successMessage').show();
            $('#successMessage').animate({
                left: '400px',
                top: '400px',
                width: '400px',
                height: '75px',
                opacity: 1
            });
        }

    }
}