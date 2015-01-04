<%-- 
    Document   : technasiumWorkshop
    Created on : Dec 11, 2014, 8:49:56 AM
    Author     : mldubbelaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>-->
        <script src="js/hideText.js" type="text/javascript"></script>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="js/myScript.js" type="text/javascript"></script>
        <script src="js/typed.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/technasiumWorkshop.css" rel="stylesheet" type="text/css"/>
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


                <div class="content">
                    <h1>Technasium</h1>
                    <div id="text_case">
                        <p class = "text">
                            Welkom < Naam van persoon >, <br/>
                            We hebben je hulp erg nodig, we moeten drie personen ondervragen over de moord van het hoofd van de labratoria
                            van het Instituus voor Life Science & Technology. <br/>
                            Je kan aantekeningen maken, over wat je van de verdachten vindt en dit kan later weer worden bekeken. 
                            Help ons bij het vinden van de dader.<br/>
                            Heel veel succes!! 
                        </p>
                        <div id="question_div" data-question-number="1">
                            <div class="imageBoxes" id = "questionImage" > 
                                <img data-imgNumber="tafel" id = "image" src="images/houtenTafel.jpg" alt=""/> 
                                <div class ="black">
                                    <p>Het hoofd van het laboratorium van ISLT is vermoord! 
                                        <br/>Hier volgen de bewijsstukken die gevonden zijn.</p>
                                </div>
                            </div>
                            <div class="noteBox">
                                <label for="basic">Aantekeningen:</label>
                                <form  id="save_notes_form" action="#" method="post">
                                    <textarea cols="35" rows="24" name="notes">Maak hier je aantekeningen over de verdachten!</textarea>
                                    <input type="submit" value="Save"/></form>
                                <button id ="first" class = "imageButton"><<</button>
                                <button id="last_question_button" class = "imageButton"><b>< Vorige</b></button>
                                <button id="next_question_button" class = "imageButton"><b>> Volgende</b></button>
                                <button id ="last" class = "imageButton">>></button>
                            </div>
                        </div>
                    </div>
                    <!--End of content-->
                </div>
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
