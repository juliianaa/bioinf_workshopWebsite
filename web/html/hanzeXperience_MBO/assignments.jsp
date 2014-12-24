<%-- 
    Document   : assignments
    Created on : Dec 1, 2014, 1:38:28 PM
    Author     : jwlgoh
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
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
        <script src="js/visualize.js" type="text/javascript"></script>
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
                
                <div class="content" style = "width: 800px;">
                    
                <div>
                    <p>Sleep de kaart naar het correcte vak.</p>

                    <ul>
                        <li>A: Lees DNA Sequentie Uit Bestand</li>
                        <li>B: Controleer Of De DNA Sequentie Ook Echt Alleen Uit De Goede Letters Bestaat</li>
                        <li>C: Print "geen startcodon gevonden"</li>
                        <li>D: Zoek het volgende stolicodon</li>
                    </ul>
                </div>
                    
                    <div id="answersPile"></div>
                    
                    <div id="answersSlots"></div>
                    
                    <img src="images/hanzeXperience_MBO/HanzeXperience(drag and drop).png" alt="" style="position:relative"/>
                    
                    <div id="successMessage">
                        <h2>You did it!</h2>
                        <a href="html/hanzeXperience_MBO/question2.jsp" class="button">Start workshop</a>
                    </div>
                </div>
                <!--End of content-->
            </div>

            <%@include file="../../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
