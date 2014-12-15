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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/hideText.js" type="text/javascript"></script>
        <script src="js/myScript.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
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
                        <p>
                            Welkom < Naam van persoon >, <br/>
                            We hebben je hulp erg nodig, we moeten drie personen ondervragen over de moord van het hoofd van de labratoria
                            van het Instituus voor Life Science & Technology. <br/>
                            Je kan aantekeningen maken, over wat je van de verdachte vind en dit kan later weer worden bekeken. <br/>
                            Heel veel succes!! 
                        </p>
                        <div id="question_div" data-question-number="1">
                            <div class="imageBoxes"> <img src="images/achtergrond_verhoor.jpg" alt=""/> </div>
                            <div class="noteBox">
                                <label for="basic">Text Input:</label>
                                <form  id="save_notes_form" action="#" method="post">
                                    <textarea cols="35" rows="24" name="notes">Maak hier je aantekeningen over de verdachten!</textarea>
                                    <input type="submit" value="Save"/></form>
                            </div>
                        </div>
                    </div>
                    <!--End of content-->
                </div>

            </div>
                    <button id="next_question_button">Volgende vraag</button>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
