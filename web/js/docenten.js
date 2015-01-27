/* 
 * By Mldubbelaar
 * This js file is used to get the right text for the right teacher.
 * The html page of "docenten" contains a div for the popup which is unique for
 * every teacher. When this file is not used, the text within the popup box
 * changes.
 */

(function ($) {
    $(function () {
        /*
         * When the button of the given teacher is clicked
         * a variable unique is made, this content contains the text which
         * is given within the html file.
         * This data will be used to create the popup.
         */
        $('.arneButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upArne');
            data(unique);
        });

        $('.marcelButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upMarcel');
            data(unique);
        });

        $('.martijnButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upMartijn');
            data(unique);
        });

        $('.michielButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upMichiel');
            data(unique);
        });

        $('.ronaldButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upRonald');
            data(unique);
        });

        $('.tsjerkButton').bind('click', function (e) {
            e.preventDefault();
            var unique = $('#element_to_pop_upTsjerk');
            data(unique);
        });
    });

    function data(text) {
        // The data beneith is used to describe the style of the popup box.
        text.bPopup({
            zIndex: 2,
            scrollbar: true,
            escClose: true,
            closeClass: 'close',
            speed: 650
        });
    }
})
        (jQuery);