$(function() {
    $("#product li").draggable({
        revert: true,
        drag: function() {
            $(this).addClass("active");
            $(this).closest("#product").addClass("active");
        },
        stop: function() {
            $(this).removeClass("active").closest("#product").removeClass("active");
        }
    });

    $(".function_container").droppable({
        activeClass: "active",
        tolerance: "touch",
        drop: function(event, ui) {

            var basket = $(this),
                    move = ui.draggable,
                    itemId = basket.find("ul li[data-id='" + move.attr("data-id") + "']");

            if (itemId.html() != null) {
                itemId.find("input").val(parseInt(itemId.find("input").val()));
            }
            else {
                addBasket(basket, move);
                move.find("input").val(parseInt(move.find("input").val()) + 1);
//                alert(move.attr("data-id"));
        }
        }
    });
    function addBasket(function_container, move) {
        function_container.find("ul").append('<li data-id="' + move.attr("data-id") + '">'
                + '<span class="name">' + move.find("h3").html() + '</span>'
                + '<button class="delete">&#10005;</button>');
    }
    $(".function_container ul li button.delete").live("click", function() {
        $(this).closest("li").remove();
    });
});


