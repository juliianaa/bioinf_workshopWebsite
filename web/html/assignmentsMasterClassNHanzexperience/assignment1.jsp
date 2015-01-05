<%-- 
    Document   : assignments
    Created on : Dec 1, 2014, 1:38:28 PM
    Author     : jwlgoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">   
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
        <script src="js/visualize.js" type="text/javascript"></script>
        <script src="js/hideText.js" type="text/javascript"></script>
        <script src="js/navigateQuestions.js" type="text/javascript"></script>
        <link href="css/dragAndDrop.css" rel="stylesheet" type="text/css"/>
        <style>
            .answer1
            {
            top:232px;
            left:175px;
            }
            .answer2
            {
            top:277px;
            left:175px;
            }
            .answer3
            {
            top:320px;
            left:450px;
            }
            .answer4
            {
            top:443px;
            left:175px;
            }

        </style>
      <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main">
            
            <%@include file="../../includes/bodyHeader.jsp" %>


            <div id="site_content">
                <div id="top_border"></div>
                
                <ul id="images">
                   <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                
                <div class="content" id="question" style = "width: 800px;" >
                    <div id="refreshQuestion" data-nr="1">
                        <div id="question1">
                            <div>
                                <c:choose>
                                    <c:when test="${sessionScope.user != null}">
                                        <h1>Welkom, ${sessionScope.user}</h1>
                                    </c:when>
                                    <c:otherwise>
                                        <h1>No name</h1>
                                    </c:otherwise>
                                </c:choose>


                                <h1>Opdracht 1a</h1>
                                <h2>Sleep de kaarten naar het correcte vak.</h2>

                                <ul>
                                    <li>A: Lees DNA Sequentie Uit Bestand</li>
                                    <li>B: Controleer Of De DNA Sequentie Ook Echt Alleen Uit De Goede Letters Bestaat</li>
                                    <li>C: Print "geen startcodon gevonden"</li>
                                    <li>D: Zoek het volgende stopcodon</li>
                                </ul>
                            </div>

                            <div id="answersPile"></div>

                            <div id="answersSlots"></div>

                            <img src="images/hanzeXperience_MBO/HanzeXperience(drag and drop).png" alt="" style="position:relative"/>

                            <div id="successMessage">
                                <h2>You did it!</h2>
                                <button id="hide" class="button" type="button">Volgende Vraag</button>
                            </div>
                        </div>

                        <div id="question2">
                            <h1>Opdracht 1b</h1>
                            <p>
                                Download de code van je programma hieronder. 
                                Je ziet dat dezelfde blokjes hier in code staan die ook in het schema staan dat je net kloppend gemaakt hebt. 
                                Zoek het hoofdprogramma <strong><i>(main)</i></strong>.  Hier moeten de losse functies  (blokjes) op dezelfde volgorde aangeroepen 
                                worden als in je schema. Als je goed kijkt dan zie je dat ook hier een paar regels ontbreken. Vul die regels 
                                code in en sla het aangepaste programma op in desktop.

                                <p>
                                     <strong><i>>>>> </i></strong><a href="scripts/zoekGen.py">zoekGen.py</a> <strong><i> <<<<</i></strong>
                                     (Als het downloaden niet lukt, klik dan op rechte muisknop en sla het link op)
                                </p>
                            </p>


                            <p>
                                Ben je klaar?
                                Voer het gewijzigde programma uit.<br />

                                <ul>
                                    <li>Open een terminal</li>
                                    <img src="images/hanzeXperience_MBO/terminal.png" width='700px' height='400px' alt=""/>
                                    <li>ga naar de map waar het programma staat (met cd Desktop)</li>
                                    <img src="images/hanzeXperience_MBO/terminalToDesktop.png" width='700px' height='400px' alt=""/>
                                    <li>tik in python zoekGen.py</li>
                                    <img src="images/hanzeXperience_MBO/typeZoekGen.png" width='700px' height='400px' alt=""/>
                                    <li>volg de instructies van het programma</li>
                                    <li>sla de genen op in een tekstbestand</li>
                                </ul>
                            </p>

                            <h2>Extra opdracht</h2>
                            <p>
                                Er wordt geen rekening gehouden met de andere streng van het DNA. Pas het programma zo aan, dat ook deze geanalyseerd wordt.
                            </p>

                            <button id="next_question_button" class="button" type="button">Volgende vraag</button>
                        </div>
                    </div>
                </div>
                <!--End of content-->
            </div>

            <%@include file="../../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
