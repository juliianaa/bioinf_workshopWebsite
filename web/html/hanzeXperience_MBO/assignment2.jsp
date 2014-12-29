<%-- 
    Document   : question2
    Created on : 24-dec-2014, 18:05:58
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
                        <h1>Opdracht 2</h1>
                        <p>
                            Download de code van je programma hieronder. 
                            Je ziet dat dezelfde blokjes hier in code staan die ook in het schema staan dat je net kloppend gemaakt hebt. 
                            Zoek het hoofdprogramma <strong><i>(main)</i></strong>.  Hier moeten de losse functies  (blokjes) op dezelfde volgorde aangeroepen 
                            worden als in je schema. Als je goed kijkt dan zie je dat ook hier een paar regels ontbreken. Vul die regels 
                            code in en sla het aangepaste programma op in desktop.
                            
                            <p>
                                 <strong><i>>>>> </i></strong><a href="../../scripts/zoekGen.py">zoekGen.py</a> <strong><i> <<<<</i></strong>
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
                                <li>en volg de instructies van het programma</li>
                                <li>sla de genen op in een tekstbestand)</li>
                            </ul>
                        </p>
                    </div>

                </div>
                <!--End of content-->
            </div>

            <%@include file="../../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
