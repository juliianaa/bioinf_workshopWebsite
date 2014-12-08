<%-- 
    Document   : docenten
    Created on : Dec 4, 2014, 1:02:41 PM
    Author     : mldubbelaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <link rel="stylesheet" type="text/css" href="css/style.css" />
                <link href="css/docenten.css" rel="stylesheet" type="text/css"/>


                <script src="js/jquery-2.1.1.min.js"></script>
                <script src="js/jquery.bpopup-x.x.x.min.js"></script>
                <script src="js/docenten.js"></script>

                <!--<script src="../js/docenten.js"></script>-->
                <title>Docenten</title>
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
                                <h1>Docenten</h1>

                                <div class="docenten_boxes">
                                    <a href="http://bioinf.nl/~arne/" class="image full"><img src="images/arne.jpg" alt="" /></a>
                                    <p>Arne Poortinga</p>
                                    <button class="arneButton">Over arne</button>
                                    <a href="http://nl.linkedin.com/pub/arne-poortinga/5/10b/a13?domainCountryName=Nederland&csrfToken=ajax%3A0703341547160610550&domainCountryCode=nl"><div class="linkedInButton"></div></a>
                                    <div id="element_to_pop_upArne" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Arne
                                    </div>
                                    <br/>
                                </div>   

                                <div class="docenten_boxes">
                                    <img src="images/marcel.jpg" alt="" />
                                    <p>Marcel Kempenaar</p>
                                    <button class="marcelButton">Over Marcel</button>
                                    <a href="http://nl.linkedin.com/in/mkempenaar"><div class="linkedInButton"></div></a>
                                    <div id="element_to_pop_upMarcel" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Marcel
                                    </div>
                                    <br/>
                                </div>       

                                <div class="docenten_boxes">
                                    <img src="images/martijn.jpg" width="150 px" alt="" />
                                    <p>Martijn Herber</p>
                                    <button class="martijnButton">Over Martijn</button>
                                    <p></p>
                                    <div id="element_to_pop_upMartijn" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Martijn
                                    </div>
                                    <br/>
                                </div>    

                                <div class="docenten_boxes">
                                    <a href="http://bioinf.nl/~michiel/" class="image full"><img src="images/michiel.jpg" alt="" /></a>
                                    <p>Michiel Noback</p>
                                    <button class="michielButton">Over Michiel</button>
                                    <a href="http://nl.linkedin.com/in/michielnoback"><div class="linkedInButton"></div></a>
                                    <div id="element_to_pop_upMichiel" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Michiel
                                    </div>
                                    <br/>
                                </div>

                                <div class="docenten_boxes">
                                    <img src="images/ronald.jpg" alt="" />
                                    <p>Ronald Wedema</p>
                                    <button class="ronaldButton">Over Ronald</button>
                                    <a href="https://www.linkedin.com/pub/ronald-wedema/b/5b/403?trk=pub-pbmap"><div class="linkedInButton"></div></a>
                                    <div id="element_to_pop_upRonald" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Ronald
                                    </div>
                                    <br/>
                                </div>

                                <div class="docenten_boxes">
                                    <a href="http://bioinf.nl/~tsjerk/" class="image full"><img src="images/tsjerk.jpg" width="150 px" alt="" /></a>
                                    <p>Tsjerk Wassenaar</p>
                                    <button class="tsjerkButton">Over Tsjerk</button>
                                    <a href="http://nl.linkedin.com/in/tsjerkwassenaar"> <div class="linkedInButton"></div></a>
                                    <div id="element_to_pop_upTsjerk" class = "element_to_pop_up">
                                        <button class = "close">X</button>
                                        Tsjerk
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