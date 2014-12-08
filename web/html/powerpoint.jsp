<%-- 
    Document   : powerpoint_workshops
    Created on : 7-dec-2014, 12:57:43
    Author     : kristin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/reveal.css"> 
        <link rel="stylesheet" href="css/default.css"> 
      <title>Bioinformatics Homepage</title>
    </head>
    <body> 
        <div class="reveal"> 
            <div class="slides"> 
                <section> 
                    <h1>Bio informatica</h1> 
                    <h3>Hanze hogeschool Groningen</h3> 
                </section> 
                <section> 
                    <h2>Wat doet een bio-informaticus?</h2> 
                    <ul id="images">
                        <img src="images/info.png" width="250%" height="200%" alt=""/>
                    </ul>
                    <ul> 
                        <!-- <li class="fragment">4 years experience</li> 
                        <li class="fragment">MrBool Author</li> --> 
                    </ul> 
                </section> 
                <section> 
                    <h2>Structuur van DNA</h2>
                    <h3>Watson & Crick 1953</h3>
                        <ul> 
                            <ul id="images">
                                <img align="center" src="images/2.jpg" width="50%" height="50%" alt=""/>
                            </ul>
                            <li><h4>Dubbelstrengs helix</h4> </li>
                            <li><h4>Strengen zijn anti-parallel</h4></li>
                            <li><h4>Streng: poly-nucleotiden (ketting van 4 verschillende kralen)</h4></li>
                            <li><h4>A tegenover T en C tegenover G</h4></li>
                        </ul> 
                </section>
                <!-- Example of nested vertical slides -->
                <section>
                        <section>
                                <h2>Hanze Xperience</h2>
                                <p>
                                        Slides can be nested inside of other slides,
                                        try pressing <a href="#" class="navigate-down">down</a>.
                                </p>
                                <a href="#" class="navigate-down">
                                        <img width="178" height="238" src="images/arrow.png" alt="Down arrow">
                                </a>
                        </section>
                        <section>
                                <h2>Basement Level 1</h2>
                                <p>Press down or up to navigate.</p>
                        </section>
                        <section>
                                <h2>Basement Level 2</h2>
                                <p>Cornify</p>
                                <a class="test" href="http://cornify.com">
                                        <img width="280" height="326" src="images/5.jpg" alt="Unicorn">
                                </a>
                        </section>
                        <section>
                                <h2>Basement Level 3</h2>
                                <p>That's it, time to go back up.</p>
                                <a href="#/2">
                                        <img width="178" height="238" src="images/arrow.png" alt="Up arrow" style="-webkit-transform: rotate(180deg);">
                                </a>
                        </section>
                </section>
                 <section>
                        <section>
                                <h2>The mummy</h2>
                                <p>
                                        Slides can be nested inside of other slides,
                                        try pressing <a href="#" class="navigate-down">down</a>.
                                </p>
                                <a href="#" class="navigate-down">
                                        <img width="178" height="238" src="images/arrow.png" alt="Down arrow">
                                </a>
                        </section>
                        <section>
                                <h2>Basement Level 1</h2>
                                <p>Press down or up to navigate.</p>
                        </section>
                        <section>
                                <h2>Basement Level 2</h2>
                                <p>Cornify</p>
                                <a class="test" href="http://cornify.com">
                                        <img width="280" height="326" src="images/4.jpg" alt="Unicorn">
                                </a>
                        </section>
                        <section>
                                <h2>Basement Level 3</h2>
                                <p>That's it, time to go back up.</p>
                                <a href="#/2">
                                        <img width="178" height="238" src="images/arrow.png" alt="Up arrow" style="-webkit-transform: rotate(180deg);">
                                </a>
                        </section>
                </section>
            </div> 
        </div> 
        <script src="js/head.min.js"></script> 
        <script src="js/reveal.js"></script> 
        <script> Reveal.initialize({ 
                    center: true, 
                    controls: true, 
                    mouseWheel: true, 
                    transition: 'concave', 
                    dependencies:[ 
                        { 
                            src: 'js/zoom.js', 
                            async: true 
                        } 
                    ] 
                }); 
        </script> 
    </body> 
</html>
