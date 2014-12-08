/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function ($) {
    $(function () {
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
        text.bPopup({
            zIndex: 2,
            scrollbar: true,
            escClose: true,
            closeClass: 'close',
            speed: 650,
        });
    }
})
        (jQuery);