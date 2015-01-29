/* 
 *@author: mkslofstra/ aroeters
 */

(function($) {
    $(function() {
        // on the click of my-button
        $('.my-button').bind('click', function(e) {
            // prevents refreshing
            e.preventDefault();
            // sets the link value to the data-value that is given in the jsp
            $.link = $(this).attr('data-value');
            // set the src to the given parameter
            $('#wiki_link').attr('src', $.link);
            // pops up a box with contents
            $('#element_to_pop_up').bPopup({
                appendTo: 'form'
                , zIndex: 2
                , modalClose: false
                , scrollbar: true
                , escClose: true
                , content: 'iframe'
                , contentContainer: '.wiki'
                , loadURL: $.link
                , speed: 1000
                , position: [0, -300]
            });

        });
    });
})
        (jQuery);