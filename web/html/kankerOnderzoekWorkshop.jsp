<%-- 
    Document   : kankerOnderzoekWorkshop
    Created on : 16-jan-2015, 22:23:28
    Author     : nstoker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en">
    <head>
        <base href="${initParam.base_url}">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        
        <!-- All the used java scripts and css for the accordion and hide and show -->
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <script src="js/HideAndAccordion.js" type="text/javascript"></script>
        
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <script src="//code.jquery.com/jquery-1.10.2.js"></script>
        <script src="//code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
            
    </head>

    <body>
        <div id="main1">
            
            <%@include file="../includes/bodyHeader.jsp" %>


            <div id="site_content">
                <div id="top_border"></div>
                
                <ul id="images">
                   <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                
                <div class="content">
                    <!-- Introduction text -->
                    <div class="introduction" id="introduction">
                        <h1>Workshop kankeronderzoek</h1>
                        Welkom bij de workshop kankeronderzoek. <br/> 
                        Kanker is een enorm groote doodsoorzaak in zowel nederland als andere grote landen
                        zoals amerika en canada. Om de ziekte <br/> beter te begrijpen en medicijnen te produceren 
                        is er veel onderzoek nodig. Kanker is namelijk een erg complexe ziekte die zich in alle
                        organen van het menselijk lichaam kan ontwikkelen en verplaatsen.  <br/><br/>
                        Om jullie een beeld te geven van hoe de studie bio-informatica onder andere bezig is 
                        met het analyseren van DNA en probeert te <br/>achterhalen waar mutaties (genetische veranderingen)
                        zitten die een vorm van kanker kunnen vormen. Omdat kanker vaak niet<br/> uit 1 mutatie bestaat
                        maar uit veel meer opgestapelde mutaties is het soms lastig om te weten waar de kanker
                        precies<br/> begonnen is en waar de fouten zitten. Gelukkig is er de afgelopen jaren erg veel
                        onderzoek gedaan en hebben wij een opdracht<br/> voor jullie gemaakt om uit te zoeken welke 
                        patient borstkanker heeft zoals een echte bio-informaticus dat ook zou kunnen doen. <br/><br/></br>
                       
                        <!-- The accordion with the explanation of the assignment -->
                        <p><a id="button" class="ui-state-default ui-corner-all">Start workshop</a></p>
                        <div class="toggler">
                            <div id="effect" class="ui-widget-content ui-corner-all">
                                <div id="accordion">
                                    <h3>Open Terminal</h3>
                                    <div>
                                      <h5>
                                      Open de terminal op het bureaublad van de computer waar je momenteel op werkt.
                                      Wanneer je de terminal geopend<br/> hebt voer je het volgende commando uit:
                                      cd ../../commons/Themas/Thema10/Infoworkshops/KankerCasus en druk <br/>op enter. Denk
                                      hierbij wel om de spatie tussen 'cd' en '../../commons/Themas/Thema10/Infoworkshops/KankerCasus'.<br/>
                                      Het invoeren van het commando ziet er als volgt uit:<br/><br/>
                                      <img src="images/KankerWorkshop/query1.png" width="650" height="350" aling="center"/>
                                      </h5>
                                    </div>
                                    <h3>Start GUI</h3>
                                    <div>
                                      <p><h5>
                                      Om het dna van een patient goed te kunnen analyseren is er een programma nodig dat 
                                      het genoom in kan lezen en in stukjes kan knippen (zie 'gebruik van GUI' voor uitleg). 
                                      Gelukkig is er voor jullie al een GUI (Graphical User Interface) gemaakt die je hiervoor 
                                      perfect kunt gebruiken. Deze GUI kun je openen
                                      door het volgede commando in de terminal in te voeren: python3 CSI_GUI.py<br/>
                                      Denk hierbij om de spatie tussen 'python3' en 'CSI_GUI.py'. <br/><br/>
                                      <img src="images/KankerWorkshop/query4.png" width="800" height="55" aling="center"/>
                                      </h5></p>
                                    </div>
                                    <h3>Inladen van bestanden</h3>
                                    <div>
                                      <p><h5>
                                      Als het goed is heb je na het uitvoeren van de vorige instructies het volgende 
                                      programma voor je:<br/><br/>
                                      <img src="images/KankerWorkshop/GUI.png" width="650" height="300" aling="center"/><br/><br/>
                                      Boven in het programma staat er een grijze button met file erop. Klik op deze button
                                      Als het goed is krijg je dan het volgende scherm in beeld: <br/><br/>
                                      <img src="images/KankerWorkshop/OpenFiles.png" width="400" height="200" aling="center"/><br/><br/>
                                      Kies het bestand KankerSequenties.fa.
                                      </h5></p>
                                    </div>
                                    <h3>Gebruik GUI</h3>
                                    <div>
                                      <p><h5>
                                      Als het goed is zijn er nu meerdere dna sequenties geopend in je GUI programma.
                                      Dit ziet er als volgt uit:<br/></br>
                                      <img src="images/KankerWorkshop/GeneToGui.png" width="525" height="300" aling="center"/><br/><br/>
                                      Aan de rechter kant van het programma kun je verschillende restrictie enzymen kiezen
                                      die het dna kunnen knippen. Wanneer je enkele restrictie enzymen aanklikt en daarna
                                      op de button 'digest DNA' rechts onder in het programma drukt krijg je een bandjes patroon
                                      dat er als volgt uit kan zien:<br/><br/>
                                      <img src="images/KankerWorkshop/mogelijkResutaatGUI.png" width="525" height="300" aling="center"/><br/><br/>
                                      </h5></p>
                                    </div>
                                    <h3>Resutaat GUI</h3>
                                    <div>
                                      <p><h5>
                                      Kijkend naar onderstaande afbeelding kun je aan het bandjes patroon zien welke 
                                      patient kanker heeft. Het bandjes patroon is afhankelijk van welke restrictie enzymen die je
                                      kiest. Elk restrictie enzym heeft zijn eigen 'knip locatie' in het genoom van de patient. 
                                      Belangrijk om te weten is dat je bij deze analyze alleen kunt zeggen dat de persoon borstkanker heeft of niet.
                                      Je kunt dus niets zeggen over andere soorten kanker andere soorten ziektes. 
                                      <br/><br/>
                                      <img src="images/KankerWorkshop/mogelijkResutaatGUI.png" width="525" height="300" aling="center"/>
                                      </h5></p>
                                    </div>
                                </div>
                            </div>
    
                        
                          </div>
                        </div>
                    </div>
                </div> 
            </div>

        </body>

    <%@include file="../includes/bodyFooter.jsp" %>
</html>
