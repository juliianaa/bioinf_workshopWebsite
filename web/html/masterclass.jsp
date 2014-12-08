<%-- 
    Document   : masterclass
    Created on : Nov 27, 2014, 3:15:34 PM
    Author     : aroeters
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
                    <script src="js/jquery-2.1.1.min.js"></script>
                    <script src="js/popUpWiki.js" type="text/javascript"></script>
                    <link href="css/workshopsHanze.css" rel="stylesheet" type="text/css"/>
                    <script src="js/jquery.bpopup-x.x.x.min.js" type="text/javascript"></script>
                    <script>    $(document).ready(function($) {
                        $('popup').live('click', function(){
                        newwindow = window.open($(this).attr('href'), '', 'height=200,width=150');
                                if (window.focus) {newwindow.focus()}
                        return false;
                        });</script>
                    <script src="js/hideText.js" type="text/javascript"></script>
                    <title>Bioinformatics Homepage</title>
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
                                        <h1>Masterclass - Meet the mummy</h1>
                                        <p>
                                        <div id="mummy"><img src="images/mummy.jpg" alt="mummy" /></div>
                                        Als je moeder en je vader allebei blond zijn of lang of juist klein, dan is de kans groot dat jij dat ook bent.
                                        Dat komt omdat je van allebei je ouders <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Genetica">
                                            <u>eigenschappen erft</u>
                                        </button>. Dit geldt niet alleen voor eigenschappen als je haarkleur
                                        en of je een wipneus hebt, maar ook voor erfelijke ziekten.
                                        </p>
                                        <p>
                                        Sinds halverwege vorige eeuw is bekend dat 
                                        <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Desoxyribonucle%C3%AFnezuur">
                                            <u>DNA</u>
                                        </button>
                                        de drager is van de erfelijke eigenschappen. Dit geldt niet alleen voor mensen, maar voor (bijna) alle levensvormen. 
                                        Als we precies zouden weten hoe elke eigenschap er op DNA-niveau uit zou zien, dan konden we aan de hand van een
                                        druppel bloed precies vertellen hoe iemand er uit zou zien. Jammer genoeg is het nog niet zo ver. Pas sinds 2003 is het
                                        hele genoom van een enkel persoon bepaald ("gesequenced") en pas sinds kort zijn er technieken beschikbaar die het sequencen
                                        voldoende snel en betaalbaar maken om het practisch bruikbaar te maken, bijvoorbeeld als onderdeel van 
                                        archeologisch (geschiedkundig) onderzoek. In de masterclass ga je kijken of je aan de hand van DNA-sequenties iets zou 
                                        kunnen vertellen over een gevonden mummie. Als je aan de masterclass mee wil doen, wordt er wel van je verwacht
                                        dat je weet hoe DNA er uit ziet en hoe erfelijkheid werkt.
                                        </p>
                                        <p>
                                        Omdat DNA zo groot is, (het menselijke DNA is bijvoorbeeld ongeveer 3 miljard baseparen groot) moet er bij het bestuderen
                                        ervan gebruik gemaakt worden van computers. Dit is, naast het bestuderen van  
                                        <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Prote%C3%AFne">
                                            <u>eiwitten</u>
                                        </button>, het vakgebied van de bio-informatici. 

                                        Omdat er sinds een paar jaar door nieuwe technieken het sequencen van DNA veel makkelijker, sneller en goedkoper is geworden wordt
                                        er steeds meer onderzoek aan gedaan en worden DNA-technieken ook steeds meer gebruikt in bijvoorbeeld ziekenhuizen, in de
                                        <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Plantenveredeling">
                                            <u>plantenveredeling</u>
                                        </button> en zelfs bij archeologisch onderzoek. Om een idee van de toepassing van bioinformatica te krijgen moet je 
                                        maar eens Googelen op "<button class="my-button" data-value="http://nl.wikipedia.org/wiki/Gen">
                                            <u>Gen</u>
                                        </button>","
                                        <button class="my-button" data-value="http://nl.wikipedia.org/wiki/Chromosoom">
                                            <u>Chromosoom</u>
                                        </button>", "DNA" of "<button class="my-button" data-value="http://nl.wikipedia.org/wiki/Genoom">
                                            <u>Genoom</u>
                                        </button>". Of zoek maar eens in het archief van nieuwssites met die termen. 
                                        </p>
                                        <div id="element_to_pop_up">
                                            <button class = "b-close">X</button>
                                            <iframe name="wiki_link", id="wiki_link", class="wiki">
                                            </iframe>
                                        </div>              

                                        <button class="button" id="hide">Start Workshop</button>

                                    </div>

                                    <div class="questions" id="questions">
<!--                                        <form action="answer.do" method="post">
                                            Typ het woord "Mummy" in: <input type="text" name="word"><br>
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
