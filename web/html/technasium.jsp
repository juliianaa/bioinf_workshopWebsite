<%-- 
    Document   : technasium
    Created on : Dec 01, 2014, 13:48:34 PM
    Author     : Mkslofstra
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
            <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
                    <script src="js/popUpWiki.js" type="text/javascript"></script>
                    <script src="js/jquery.bpopup-x.x.x.min.js" type="text/javascript"></script>
                    <link rel="stylesheet" type="text/css" href="css/style.css" />
                    <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
                    <script src="js/hideText.js" type="text/javascript"></script>
                    <link href="css/workshopsHanze.css" rel="stylesheet" type="text/css"/>
                    <title>Technasium</title>
                    </head>

                    <body>
                        <div id="main">
                            <%@include file="../includes/bodyHeader.jsp" %>


                            <div id="site_content">
                                <div id="top_border"></div>

                                <ul id="images">
                                    <img src="images/banner.jpg" width="970" height="300" alt=""/>
                                </ul>

                                <div id="sidebar_container">
                                    <img class="paperclip" src="images/paperclip.png" alt="paperclip" />
                                    <div class="sidebar">
                                        <h3>Latest News</h3>

                                        <h4>New Website Launched</h4>

                                        <h5>January 1st, 2013</h5>

                                        <p>2013 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>

                                        <h4>20% Discount</h4>

                                        <h5>June 1st, 2013</h5>

                                        <p>We are offering a 20% discount to all new customers.<br /><a href="#">Read more</a></p>
                                    </div>
                                </div>
                                <!--End of side bar-->

                                <div class="content">
                                    <div class="introduction" id="introduction">
                                        <h1>Technasium</h1>
                                        <p>
                                            Toen de conciërge ‘s morgens vroeg op school kwam en zijn gebruikelijke ronde maakte,
                                            deed hij een lugubere vondst. In practicumzaal D033 lag een lijk op de grond! Hij herkende
                                            meteen de persoon als het hoofd van de laboratoria van het Instituut voor Life Science &
                                            Technology (ILST). Natuurlijk schrokken ook de studenten en docenten van ILST enorm,
                                            toen zij om 8.30u nietsvermoedend de school binnenkwamen en zagen dat de zaal met wit-
                                            rode linten was afgezet. Politie- en ambulancepersoneel liep heen en weer, druk overleggend
                                            met mobiele telefonen. Er werden diverse monsters genomen ten behoeve van forensisch
                                            onderzoek op de plaats van het delict.</p>
                                        <p><i><b>Aan jou de opdracht om te onderzoeken wie de dader is!</b></i>
                                            Tijdens de keuzecolleges ga je in koppels het onderzoek uitvoeren dat moet leiden tot het
                                            vaststellen van de doodsoorzaak van de docent en het opsporen van de dader. Je gebruikt
                                            technieken waarmee je o.a. 
                                            <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Desoxyribonucle%C3%AFnezuur">
                                                <u>DNA</u>
                                            </button> en 
                                            <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Prote%C3%AFne">
                                                <u>eiwitten</u>
                                            </button>
                                            kunt onderzoeken. Deze technieken worden in het Instituut voor Life Science & 
                                            Technology gebruikt binnen de opleidingen Biologie en
                                            Medisch Laboratoriumonderzoek, Bio-informatica en Chemie/Chemische Technologie.
                                            Behalve bij 
                                            <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Forensisch_onderzoek">
                                                <u>forensisch onderzoek</u>
                                            </button> 
                                            kunnen de technieken ook bij allerlei ander onderzoek worden ingezet, bijvoorbeeld bij het 
                                            opsporen van ziekten.</p>
                                        <p>
                                            Naast het uitvoeren van de experimenten leer je tijdens instructies ook van alles over de
                                            gebruikte analysetechnieken en over DNA en (giftige) eiwitten.</p>
                                        <p>
                                            De resultaten van jouw uitgevoerde onderzoeken en de conclusies worden tijdens het laatste
                                            keuzecollege gepresenteerd via een wetenschappelijke poster. Het is dus belangrijk dat je alle
                                            resultaten van de verschillende onderzoeken nauwkeurig en overzichtelijk noteert.<br/></p>
                                        <p>
                                            <div id="element_to_pop_up">
                                                <button class = "b-close">X</button>
                                                <iframe name="wiki_link" id="wiki_link" class="wiki">
                                                </iframe>
                                            </div>
                                            
                                            
                                            
                                            
                                            
                                            <button class="button" id="hide">Start Workshop</button>

                                    </div>
                                    </p>
                                    <div class="questions" id="questions">
<!--                                        <form action="answer.do" method="post">
                                            Typ het woord "Technasium" in: <input type="text" name="word"><br/>
                                                    <input class="button" type="submit" value="Submit">
                                                        </form>-->
                                                        </div>

                                                        </div>
                                                        <!--End of content-->
                                                        </div>


                                                        <%@include file="../includes/bodyFooter.jsp" %>


                                                        </div>


                                                        </body>
                                                        </html>
