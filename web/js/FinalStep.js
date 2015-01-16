/* 
 * Plugin from internet, changed by mkslofstra
 */

(function () {
    // make counter for the good questions 
    localStorage.setItem("goodQuestions", 0);
    // when the left mousebutton is pushed down, do something
    $(".grid__item").mousedown(function (event) {
        // get the text of the dragged item
        var textOfDragon = $(event.target).text();
        // save it in local storage
        localStorage.setItem('textOfDragon', textOfDragon);
        // save the correct answer of the dragged item
        var dragon = $(event.target).data("cor");
        // save the correct answer in the local storage
        localStorage.setItem("dragon", dragon);
    });
    var body = document.body,
            dropArea = document.getElementById('drop-area'),
            droppableArr = [], dropAreaTimeout;


    // initialize droppables
    [].slice.call(document.querySelectorAll('#drop-area .drop-area__item')).forEach(function (el) {
        droppableArr.push(new Droppable(el, {
            onDrop: function (instance, draggableEl) {
                //save the correct answer of the dropped div in the localstorage by the name dropje
                var dropje = $(instance.el).data("cor");
                localStorage.setItem("dropje", dropje);
                // show checkmark inside the droppabe element         
                classie.add(instance.el, 'drop-feedback');
                dragonCheck(instance.el);
                clearTimeout(instance.checkmarkTimeout);
                instance.checkmarkTimeout = setTimeout(function () {
                    classie.remove(instance.el, 'drop-feedback');
                }, 800);
                // ...
            }
        }));
    });

    // initialize draggable(s)
    [].slice.call(document.querySelectorAll('#grid .grid__item')).forEach(function (el) {
        new Draggable(el, droppableArr, {
            draggabilly: {containment: document.body},
            scroll: true,
            scrollable: '#drop-area',
            scrollSpeed: 20,
            scrollSensitivity: 50,
            onStart: function () {
                // add class 'drag-active' to body
                classie.add(body, 'drag-active');
                // clear timeout: dropAreaTimeout (toggle drop area)
                clearTimeout(dropAreaTimeout);
                // show dropArea
                classie.add(dropArea, 'show');
            },
            onEnd: function (wasDropped) {
                var afterDropFn = function () {
                    // hide dropArea
                    classie.remove(dropArea, 'show');
                    // remove class 'drag-active' from body
                    classie.remove(body, 'drag-active');
                };

                if (!wasDropped) {
                    afterDropFn();
                }
                else {
                    // after some time hide drop area and remove class 'drag-active' from body
                    clearTimeout(dropAreaTimeout);
                    dropAreaTimeout = setTimeout(afterDropFn, 400);
                }
            }
        });
    });
    //Created by mkslofstra. Function which checks if the drag and drop match.  
    function dragonCheck(showCorrect) {
        // the draggable item
        var dragon = localStorage.getItem("dragon");
        // where the item is dropped
        var dropje = localStorage.getItem("dropje");
        // check if the corrects of the drag and the drop are the same
        if (dragon === dropje) {
            // if there is a class good or bad, remove it, because now it is good 
            // (switchClass does not work if there is not a class yet)
            $(showCorrect).removeClass("bad");
            $(showCorrect).removeClass("good");
            // set class of element to good
            $(showCorrect).addClass("good");
            // show the correct answer on the question
            var corText = localStorage.getItem("textOfDragon");
            $(showCorrect).append(" = " + corText);
            // make the grid__item unclickable. For some reason switchClass won't work, 
            // not going to waste more time on it. 
            $("#" + dragon).removeClass("grid__item");
            $("#" + dragon).addClass("dragon");
            // count the good questions 
            // parseInt is used because the item in the local storage is 
            // originally a string, this changes it to int. 
            var goodQuestions = parseInt(localStorage.getItem("goodQuestions"))+1;
            localStorage.setItem("goodQuestions", goodQuestions);
            // if all questions are answered correctly follow trough
            if(goodQuestions === 12){
                 window.location="html/heHavoWorkshop.jsp";
            }

        }
        else {
            // set class to bad
            if (!$(showCorrect).hasClass("good")) {
                $(showCorrect).addClass("bad");
            }
        }
    }
})();

