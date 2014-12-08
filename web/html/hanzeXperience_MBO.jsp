<%-- 
    Document   : hanzeXperience_MBO
    Created on : Dec 1, 2014, 1:38:28 PM
    Author     : jwlgoh
--%>

<%-- 
    Document   : workshops
    Created on : Nov 27, 2014, 3:15:34 PM
    Author     : jwlgoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
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

                        <h1>Hanze Xperience MBO</h1>

                        <p>Welkom
                        Wij willen je van harte welkom heten op de Hanzehogeschool Groningen. De
                        hogeschool biedt je vele mogelijkheden om je verder te ontwikkelen nadat je een
                        mbo hebt gehaald. We bieden veel opleidingen aan, ook weer op diverse niveaus
                        en in verschillende vormen. Tijdens deze driedaagse zullen we je hierover
                        informeren. We vertellen je over de majors en een minors. Na een vierjarige hbo-
                        opleiding krijg je de internationaal erkende titel Bachelor. Na je bachelor kun je
                        verder studeren aan een hogeschool of universiteit om een master te halen; dit
                        duurt meestal één en soms twee jaar.
                        Verder kun je bij een aantal techniekopleidingen al een BBL-route volgen, bij ons
                        heet dat duaal (zie hiervoor bv Medisch Beeldvormende en Radiotherapeutische
                        Technieken (MBRT)).
                        HanzeXperience MBO Techniek & ICT
                        Je hebt gekozen om je te oriënteren op een technische of ICT opleiding binnen de
                        Hanzehogeschool Groningen. Gedurende deze driedaagse wordt er o.a. aandacht
                        besteed aan de verschillende werkvormen (hoorcollege, practica en projecten).
                        Door het contact met docenten en huidige studenten van de hogeschool wordt je
                        in de gelegenheid gesteld om al je vragen te stellen en de sfeer te proeven.
                        Wat houdt het evenement in?
                        • Je kunt ervaren hoe het is om in het hbo te studeren en in het bijzonder bij
                        de Hanzehogeschool Groningen
                        • Je kunt beleven hoe het is om een specifieke opleiding op hbo-niveau te
                        volgen
                        • Je krijgt informatie over verschillende opleidingen en de beroepen die
                        daarbij horen
                        We hopen dat je veel plezier zult beleven aan dit driedaagse evenement en dat
                        het je kan ondersteunen in je keuze of je gaat doorsturen in het hbo.</p>

                        <button class="button" id="hide">Start Workshop</button>
                    
                    </div>
                    
                    <div class="questions" id="questions">
                        <form action="answer.do" method="post">
                            Typ het woord "DNA" in: <input type="text" name="word"><br>
                            <input class="button" type="submit" value="Submit">
                        </form>
                    </div>
                </div>
                <!--End of content-->
            </div>


            <%@include file="../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
