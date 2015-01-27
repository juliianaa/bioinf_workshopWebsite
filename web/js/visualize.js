/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 * 
 * @author: jwlgoh/aroeters
 */

var correctAnswers = 0;
$(init);
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
    correctAnswers = 0;
    $('#answersPile').html('');
    $('#answersSlots').html('');
    var numbers = ["Lees DNA Sequentie Uit Bestand", "Controleer De DNA Sequentie op goede letters ( A T C G )", "Print geen startcodon gevonden", "Zoek het volgende stopcodon"];
    var ids = ["A", "B", "C", "D"];
    for (var i = 0; i < 4; i++) {
        $('<div>' + numbers[i] + '</div>').data('number', i + 1).attr('id', ids[i]).appendTo('#answersPile').draggable({
            containment: '#content',
            stack: '#answersPile div',
            cursor: 'move',
            revert: true
        });
    }
    $('.ui-draggable').css({fontSize: 11}).mousedown(function() {
        $(this).addClass('transition');
    });
    $('.ui-draggable').mouseup(function() {
        $(this).removeClass('transition');
    });
    $('.ui-draggable').hover(function() {
        $(this).addClass('mousePointer');
    });
    var style = ['answer1', 'answer2', 'answer3', 'answer4'];
    for (var i = 1; i <= 4; i++) {
        $('<div></div>').data('number', i).attr('id', style[i - 1]).addClass(style[i - 1]).appendTo('#answersSlots').droppable({
            accept: '#answersPile div',
            hoverClass: 'hovered',
            drop: handleCardDrop,
            tolerance: "touch"
        });
    }

    function handleCardDrop(event, ui) {
        var slotNumber = $(this).data('number');
        var cardNumber = ui.draggable.data('number');

        // 
        // If the card was dropped to the correct slot,
        // change the card colour, position it directly
        // on top of the slot, and prevent it being dragged
        // again

        if (slotNumber === cardNumber) {
            ui.draggable.addClass('correct');
            ui.draggable.draggable('disable');
            $(this).droppable('disable');
            ui.draggable.position({of: $(this), my: 'left top', at: 'left top'});
            ui.draggable.draggable('option', 'revert', false);

            correctAnswers++;
        }

        // If all the cards have been placed correctly then display a message
        // and reset the cards for another go

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