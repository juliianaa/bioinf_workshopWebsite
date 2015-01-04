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
        <script src="js/hideText.js" type="text/javascript"></script>
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
                    <div id="assignment2_q1">
                        <h1>Opdracht 2a</h1>
                        
                        <p>
                            Je hebt al genen uit DNA geïsoleerd. 
                            In het college heb je geleerd waarom, als je genen gaat vergelijken het vaak beter is om dit met de eiwitcode 
                            te doen in plaats van met de DNA-code. Daarom ga je nu de gevonden genen vertalen naar eiwitten.
                            <a href="scripts/translateCodon.py"> >>> Download script translateCodon.py <<<</a> en sla het op in Desktop.
                            (Als het downloaden niet lukt, klik dan op rechte muisknop en sla het link op)
                            Voer het programma uit.
                            <ul>
                                <li>Open een terminal</li>
                                <img src="images/hanzeXperience_MBO/terminal.png" width='700px' height='400px' alt=""/>
                                <li>ga naar de map waar het programma staat</li>
                                <img src="images/hanzeXperience_MBO/terminalToDesktop.png" width='700px' height='400px' alt=""/>
                                <li>tik in python translateCodon.py</li>
                                <img src="images/hanzeXperience_MBO/translateCodon.png" width='700px' height='400px' alt=""/>
                                <li>volg de instructies van het programma</li>
                                <li>sla de eiwitten op in een tekstbestand</li>
                            </ul>

                            
                        </p>
                        
                        <button id="hide2" class="button" type="button">Volgende Vraag</button>
                    </div>
                    
                    <div id="assignment2_q2">
                        <h1>Opdracht 2b</h1>
                        <p>
                            Kijk of je meer informatie over de eiwitten op internet kunt vinden.
                            Ga naar de website van de NCBI voor het uitvoeren van een BLASTp. Deze software wordt gebuikt 
                            om te kijken op welke bekende eiwitten je gevonden eiwit het meeste lijkt. De tool is te vinden op: 
                           
                            <a href="http://www.ncbi.nlm.nih.gov/blast/Blast.cgi">NBCI</a>
                        </p>

                           
                        <p>    
                            Kies op deze pagina voor 'protein blast'. 
                            <img src="images/hanzeXperience_MBO/protein_blast.png" width='700px' height='400px' alt=""/>
                        </p>
                        <p>
                            Nu krijg je een invulscherm met daarin een groot invulvak 
                            met als titel: 'Enter Query Sequence'. 
                            Plak hier 1 van de eiwitvolgorden in en druk op de knop: BLAST
                            <img src="images/hanzeXperience_MBO/blasten.png" width='700px' height='400px' alt=""/>
                        </p>
                        
                        <p>
                            Na een paar seconden verschijnt er een lange lijst met allerlei eiwitten die overeenkomen.
                            <img src="images/hanzeXperience_MBO/proteins.png" width='700px' height='400px' alt=""/>
                        </p>

                        Na dit onderzoek heb je, als het goed is, een duidelijk beeld van de situatie kunnen geven.
                        
                        <p>
                            <button id="hide3" class="button" type="button">Volgende Vraag</button>
                        </p>
                    </div> 
                    
                    <div id="assignment2_q3">
                        <h1>Opdracht2c</h1>
                        <p>
                            Probeer alvast op een rijtje te zetten wat er volgens jou aan de hand is zodat je er morgen een website van kunt maken.
                        </p>
                        <a href="html/hanzeXperience_MBO/assignment3.jsp" class="button" type="button">Maak een website</a>
                    </div>
                </div>
                <!--End of content-->
            </div>

            <%@include file="../../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
