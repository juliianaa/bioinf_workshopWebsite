/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function() {
    $(".grid__item").mousedown(function(event) {
//        alert(event.target.id);

        var dragon = $(event.target).data("cor");
        localStorage.setItem("dragon", dragon);
    });
    var body = document.body,
            dropArea = document.getElementById('drop-area'),
            droppableArr = [], dropAreaTimeout;


    // initialize droppables
    [].slice.call(document.querySelectorAll('#drop-area .drop-area__item')).forEach(function(el) {
        droppableArr.push(new Droppable(el, {
            onDrop: function(instance, draggableEl) {
                var dropje = $(instance.el).data("cor");
                localStorage.setItem("dropje", dropje); 
                // show checkmark inside the droppabe element         
                classie.add(instance.el, 'drop-feedback');
                dragonCheck(instance.el);
                //                $(instance.el).addClass(justice);
                clearTimeout(instance.checkmarkTimeout);
                instance.checkmarkTimeout = setTimeout(function() {
                    classie.remove(instance.el, 'drop-feedback');
                }, 800);
                // ...
            }
        }));
    });

    // initialize draggable(s)
    [].slice.call(document.querySelectorAll('#grid .grid__item')).forEach(function(el) {
        new Draggable(el, droppableArr, {
            draggabilly: {containment: document.body},
            scroll: true,
            scrollable: '#drop-area',
            scrollSpeed: 20,
            scrollSensitivity: 50,
            onStart: function() {
                // add class 'drag-active' to body
                classie.add(body, 'drag-active');
                // clear timeout: dropAreaTimeout (toggle drop area)
                clearTimeout(dropAreaTimeout);
                // show dropArea
                classie.add(dropArea, 'show');
            },
            onEnd: function(wasDropped) {
                var afterDropFn = function() {
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
  function dragonCheck(showCorrect) {
      var dragon = localStorage.getItem("dragon", dragon);
      var dropje = localStorage.getItem("dropje", dropje);

      if (dragon === dropje){
          $(showCorrect).removeClass("bad");
          $(showCorrect).addClass("good");
      }
      else{
          $(showCorrect).removeClass("good");
           $(showCorrect).addClass("bad");
      }
  }
})();

