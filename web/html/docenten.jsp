<%-- 
    Document   : docenten
    Created on : Dec 4, 2014, 1:02:41 PM
    Author     : mldubbelaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}"/>
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/docenten.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.1.1.min.js"></script>
        <script src="js/jquery.bpopup-x.x.x.min.js"></script>
        <script src="js/docenten.js"></script>

        <title>Docenten</title>
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
                    <h1>Docenten</h1>

                    <div class="docenten_boxes">
                        <!--This div contains the pictures of the teachers-->
                        <div id="arne" class="teacher"></div>
                        <p>Arne Poortinga</p>
                        <button class="arneButton">Over arne</button>
                        <a target="_blank" href="http://bioinf.nl/~arne/"><button>Hanze Site</button></a>
                        <a target="_blank" href="http://nl.linkedin.com/pub/arne-poortinga/5/10b/a13?domainCountryName=Nederland&csrfToken=ajax%3A0703341547160610550&domainCountryCode=nl"><div class="linkedInButton"></div></a>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upArne" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <!--Information about the teachers can be put into the paragraph field-->
                            <h1>Arne Poortinga</h1>
                            <p>Informatie over Arne</p>
                        </div>
                        <br/>
                    </div>   

                    <div class="docenten_boxes">
                        <!--This div contains the pictures of the teachers-->
                        <div id="marcel" class="teacher"></div>
                        <p>Marcel Kempenaar</p>
                        <button class="marcelButton">Over Marcel</button>
                        <a target="_blank" href="http://nl.linkedin.com/in/mkempenaar"><div class="linkedInButton"></div></a>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upMarcel" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <!--Information about the teachers can be put into the paragraph field-->
                            <h1>Marcel Kempenaar</h1>
                            <p>Informatie over Marcel</p>
                        </div>
                        <br/>
                    </div>       

                    <div class="docenten_boxes">
                        <!--This div contains the pictures of the teachers-->
                        <div id="martijn" class="teacher"></div>
                        <p>Martijn Herber</p>
                        <button class="martijnButton">Over Martijn</button>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upMartijn" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <!--Information about the teachers can be put into the paragraph field-->
                            <h1>Martijn Herber</h1>
                            <p>Informatie over Martijn</p>
                        </div>
                        <br/>
                    </div>    

                    <div class="docenten_boxes">
                        <!--This div contains the pictures of the teachers-->
                        <div id="michiel" class="teacher"></div>
                        <p>Michiel Noback</p>
                        <button class="michielButton">Over Michiel</button>
                        <a target="_blank" href="http://bioinf.nl/~michiel/"><button>Hanze Site</button></a>
                        <a target="_blank" href="http://nl.linkedin.com/in/michielnoback"><div class="linkedInButton"></div></a>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upMichiel" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <h1>Michiel Noback</h1>
                            <p>
                                Om zich even voor te stellen verteld michiel over zijn meeste recente onderzoek.<br/>
                                Dit onderzoek heeft te maken met het onderzoeken van aardappelen en het verbeteren van de eigenschappen van dit gewas.<br/>
                                De wereldbevolking groeit zo explosief dat de traditionele gewasverbeteringen het niet meer kunnen bijbenen.<br/>
                                Aardappelonderzoek lijkt misschien minder sexy dan kankeronderzoek of onderzoek naar geneesmiddelen tegen diabetes, des ondanks dat is dit ook een belangrijk onderzoek.<br/>
                                Zonder deze onderzoeken (plantveredeling) is er over een paar decenia van nu geen eten meer.<br/>
                                Het doel is om de genen uit een aardappel te halen die nodig zijn om in een bepaalde omgeving te groeien,
                                of die bepaalde eigenschappen hebben een voorbeeld hiervan is dat er ook aardappels ontwikkelt kunnen worden
                                waarbij de suikers veel gelijkmatiger worden opgenomen, dit zorgt voor minder diabetes. <br/>
                                <br/>
                                In samenwerking met twee plantverdelingsbedrijven en de RuG onderzoekt Noback hoe DNA-technieken hierbij een rol bij kunnen spelen. <br/>
                                ‘We hebben het DNA van een aantal aardappelrassen bepaald. In het genoom van ieder ras zit variatie. 
                                Dat brengen we in kaart. In het aardappelgenoom hebben we nu 600.000 posities gevonden waar verschillen kunnen zijn tussen individuen. 
                                We poten plantjes van zes verschillende rassen op een groot proefveld  bij Valthermond. 
                                Na een jaar kijken we hoe de plantjes het hebben gedaan op verschillende aspecten zoals schimmelresistentie, opbrengst, vastkokendheid, zetmeelgehalte. 
                                We analyseren met zware computerprogramma’s welke dna-kenmerken gelinkt zijn met de plantjes die het goed doen. 
                                Zo bepalen we welke van de zeshonderdduizend posities in het DNA echt interessant zijn..’ <br/>
                                Wanneer er bekend is welke DNA-eigenschappen belangrijk zijn, kunnen de planten met elkaar gekruist worden.
                                Bij de nakomelingen wordt het DNA geanalyseerd, op deze manier kan makkelijk worden bepaald welke nakomelingen worden gebruikt in het veld.
                                De beste nakomelingen worden een heel seizoen blootgesteld aan schimmels, kou en ziektes, dit zorgt ervoor dat de kans dat er een beter ras ontwikkelt wordt omhoog gaat.'
                                <br/>
                                Ik vind het heel bijzonder dat wij als hogeschool kunnen meedraaien in dit soort onderzoek. 
                                Het maakt mijn baan leuk en ik word er ook nog eens een betere docent door.
                                Allerlei ontdekkingen die we in het onderzoek doen kunnen we gebruiken in het onderwijs. 
                                Studenten zijn betrokken bij deelonderzoeken.’
                            </p>
                        </div>
                        <br/>
                    </div>

                    <div class="docenten_boxes">
                        <!--This div contains the pictures of the teachers-->
                        <div id="ronald" class="teacher"></div>
                        <p>Ronald Wedema</p>
                        <button class="ronaldButton">Over Ronald</button>
                        <a target="_blank" href="https://www.linkedin.com/pub/ronald-wedema/b/5b/403?trk=pub-pbmap"><div class="linkedInButton"></div></a>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upRonald" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <!--Information about the teachers can be put into the paragraph field-->
                            <h1>Ronald Wedema</h1>
                            <p>Informatie over Ronald</p>
                        </div>
                        <br/>
                    </div>

                    <div class="docenten_boxes">
                        
                        <div id="tsjerk" class="teacher"></div>
                        <!--This div contains the pictures of the teachers-->
                        <p>Tsjerk Wassenaar</p>
                        <button class="tsjerkButton">Over Tsjerk</button>
                        <a target="_blank" href="http://bioinf.nl/~tsjerk/"><button>Hanze Site</button></a>
                        <a target="_blank" href="http://nl.linkedin.com/in/tsjerkwassenaar"> <div class="linkedInButton"></div></a>
                        <!--With the use of this div teachers can write their own introduction
                        The introduction will not be specific or can be placed by the wrong teacher when this div is not used-->
                        <div id="element_to_pop_upTsjerk" class = "element_to_pop_up">
                            <button class = "close">X</button>
                            <!--Information about the teachers can be put into the paragraph field-->
                            <h1>Tsjerk Wassenaar</h1>
                            <p>Informatie over Tsjerk</p>
                        </div>
                        <br/>
                    </div> 
                </div>
                <!--End of content-->
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
