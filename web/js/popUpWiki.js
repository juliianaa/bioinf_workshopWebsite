/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function ($) {
                        $(function () {
                            $('.my-button').bind('click', function (e) {
                                e.preventDefault();
                                $.link = $(this).attr('data-value');
                                $('#wiki_link').attr('src', $.link);
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
                                    , position: [0, -400]
                                });

                            });
                        });
                    })
                            (jQuery);