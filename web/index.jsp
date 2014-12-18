<%-- 
    Document   : bioinfHomePage
    Created on : 23-nov-2014, 18:47:44
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
       
      <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main1">
       
            <%@include file="includes/bodyHeader.jsp" %>


         


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
                
                <div class="contentMain">
                    <h1>Welkom op de website van bio-informatica</h1>

                    <p> Bio-informatica is een studie dat zich bevindt in een spectaculair vakgebied met een fascinerende verbinding tussen biologie en informatica. 
                        Bio-informatica is een vakgebied waar veel vraag naar is en waar de ontwikkelingen erg snel gaan. Denk bijvoorbeeld aan Next-Generation DNA 
                        sequencing methodes die in de jaren 1990 zijn ontwikkeld en tot grote doorbraken in onderzoeken hebben geleid. 
                        Binnen bio-informatica is het erg belangrijk om analyse methodes te leren gebruiken, maken en de resultaten te analyseren, daarom is 
                        het een praktijkgerichte opleiding. Bio-informatica is een vier jarige opleiding waarin met levensechte problemen wordt gewerkt. 
                        Denk hierbij aan het opsporen van erfelijke ziekten en het werken aan genetische manipulatie. Soms wordt er met medestudenten en soms 
                        individueel gekeken naar vragen of problemen uit de moleculair biologische/ biomedische praktijk. Er worden gastcolleges aangeboden van 
                        experts uit de praktijk en er worden diverse excursies naar het buitenland aangeboden. 

                    </p>
                    
                    <video width="620" height="540" controls>
                        <source src="videos/Bio-informatica.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                    </video>

                </div>
                <!--End of content-->
            </div>


            <%@include file="includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>

