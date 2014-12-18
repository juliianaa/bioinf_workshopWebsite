<%-- 
    Document   : masterclassWorkshop
    Created on : Dec 11, 2014, 8:45:44 AM
    Author     : aroeters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <base href="${initParam.base_url}">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/masterclass.css" rel="stylesheet" type="text/css"/>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
        <script src="js/jquery-ui-1.9.0.custom.min.js" type="text/javascript"></script>
        <script src="js/masterclass.js" type="text/javascript"></script>


        <script src="js/hideText.js" type="text/javascript"></script>
        <title>Workshop</title>
    </head>
    <body>

        <div id="main1">
            <%@include file="../includes/bodyHeader.jsp" %>
        </div>
        <div id="main2">
            <div id="site_content">
                <div class="container">
                <h1>Opdracht 1 A</h1>
                <p><br/>
                Zoals je al gezien hebt, bestaat programmeren uit het op een logische manier achter elkaar zetten<br/>
                van handelingen. Je gaat nu een programmaatje maken dat van een DNA-sequentie uit een bestand<br/>
                inleest en daar het gen uithaalt en dat uiteindelijk uitprint.<br/>
                <br/> 
                Op deze pagina is een schema gemaakt wat nog niet is ingevuld. Alle functies moeten in logische<br/>
                volgorde worden ingevuld en zo ga je ook het programmaatje structureren. Het is nu aan jou om dit<br/>
                schema in te vullen. Je vult het schema in door de functies naar een leeg vak te slepen en<br/>
                er moet in elk vak &eacute;&eacute;n functie staan. De functies die je moet gebruiken staan hieronder:<br/>
                <br/>
                </p>
                    <section id="product">
                        <ul class="clear">
                            <li data-id="8">
                                <h3>zijnStartCodonEnStopCodonInFrame</h3>
                            </li>
                            <li data-id="6">
                                <h3>zoekHetVolgendeStopcodon</h3>
                            </li>
                            <li data-id="3">
                                <h3>controleerOfDeDNASequentieAlleenUitDeGoedeLettersBestaat</h3>
                            </li>
                            <li data-id="2">
                                <h3>leesDNASequentieUitBestand</h3>
                            </li>
                            <li data-id="4">
                                <h3>zoekHetVolgendeStartCodon</h3>
                            </li>
                            <li data-id="9">
                                <h3>printGen + einde script</h3>
                            </li>
                            <li data-id="5">
                                <h3>print ( "geen startcodon gevonden" ) + einde script</h3>
                            </li>
                            <li data-id="1">
                                <h3>vraagInWelkBestandDeDNASequentieStaat</h3>
                            </li>
                            <li data-id="7">
                                <h3>print ( "geen stopcodon gevonden" ) + einde script</h3>
                            </li>
                        </ul>
                    </section>

                    <aside id="dropable1">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 1</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>
                        </div>
                    </aside>
                    <aside id="dropable2">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 2</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>
                        </div>
                    </aside>
                    <aside id="dropable3">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 3</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>
                        </div>
                    </aside>
                    <aside id="dropable4">
                        <div class="arrow-right">&rarr;</div>
                        <div class="arrow-right2">&rarr;</div>
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 4</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>

                        </div>
                    </aside>
                    <aside id="dropable4a">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 4a</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </aside>
                    <aside id="dropable5">
                        <div class="arrow-right">&rarr;</div>
                        <div class="arrow-up">&uarr;</div>
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 5</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>
                        </div>
                    </aside>
                    <aside id="dropable5a">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 5a</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </aside>
                    <aside id="dropable6">
                        <div class="arrow-left">&larr;</div>
                        <div class="arrow-up">&uarr;</div>
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 6</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                            <div class="arrow-down">&darr;</div>
                        </div>
                    </aside>
                    <aside id="dropable7">
                        <div class="function_container">
                            <div class="function_list">
                                <div class="head">
                                    <span class="name"><h3>Functie 7</h3></span>
                                </div>
                                <ul>
                                </ul>
                            </div>
                        </div>
                    </aside>
                <br/><br/>
                <h1>Opdracht 1 B</h1>
                Nu je het schema ingevuld hebt op de manier waarvan jij denkt dat het goed is,<br/>
                kun je het programmaatje gaan invullen in de volgorde van dit schema.<br/><br/>
                <a href="downloads/zoekGen.py" download><span>Klik hier om het programmaatje "zoekGen.py" te downloaden.</span></a><br/><br/>
                Open het zoekGen.py bestand nu in "Geany", dit doe je door rechtermuisklik te doen<br/>
                en dan open with Geany. Je ziet dat dezelfde blokjes hier in code staan die ook in<br/>
                het schema staan dat je net kloppend gemaakt hebt. Zoek het hoofdprogramma (main).<br/>
                Hier moeten de losse functies (blokjes) op dezelfde volgorde aangeroepen worden als<br/>
                in je schema. Als je goed kijkt dan zie je dat ook hier een paar regels ontbreken.<br/>
                Vul die regels code in en sla het aangepaste programma op in de map ~/Desktop/opdracht1<br/>
                <br/>
                <h1>Opdracht 1 C</h1>
                
                Nu moet je het gemaakte programma nog uit gaan voeren. <br/>
                Dit doe je door de volgende stappen door te lopen:<br/>
                -   Open een terminal ("Applications" => "Acessoires" => "Terminal")<br/>
                -   Ga naar de map waar het programma staat<br/>
                -   Typ in cd ~/Desktop/opdracht1<br/>
                -   Druk op "enter"<br/>
                -   Typ in python zoekGen.py<br/>
                -   en volg de instructies van het programma<br/>
                -   Sla de genen op in een tekstbestand!<br/>
                
                </div>
            </div>
            <!--End of content-->
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>

    </body>

</html>
