<%-- 
    Document            : powerpoint_workshops
    Created on          : 7-dec-2014, 12:57:43
    Author              : nstoker
    Usefull information : To slide to the right/left use one section. To slide also up and down 
                           use a section in a section
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
        <link  href="css/reveal.css" rel="stylesheet"> 
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
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

                    </ul> 
                </section> 
                <section> 
                    <h2>Structuur van DNA</h2>
                    <h3>Watson & Crick 1953</h3>
                        <ul> 
                            <ul id="images">
                                <img width="50%" height="50%" src="images/2.jpg" alt=""/>
                            </ul>
                            <li><h4>Dubbelstrengs helix</h4> </li>
                            <li><h4>Strengen zijn anti-parallel</h4></li>
                            <li><h4>Streng: poly-nucleotiden (ketting van 4 verschillende kralen)</h4></li>
                            <li><h4>A tegenover T en C tegenover G</h4></li>
                        </ul> 
                </section>

                <section>
                        <section>
                                <h2>Hanze Xperience</h2>
                        </section>
                    
                        <section>
                                <h2>Technasium</h2>
                        </section>
                        <section>
                                <h2>Masterclass</h2>
                        </section>
                </section>
                 <section>
                        <section>
                                <h2>Hanze Xperience MBO</h2>
                              
                        </section>
                        <section>
                                <h2>Hanze Xperience HAVO</h2>
                        </section>
                </section>
                        <section>
                                <h2>Opdrachten etc.</h2>
                        </section>
                        <section>
                                <h2>Nog meer opdrachten</h2>
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
