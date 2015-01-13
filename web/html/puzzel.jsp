<%-- 
    Document   : bioinfPuzzelPage
    Created on : 18-12-2014, 18:47:44
    Author     : nstoker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <html lang="en" class="no-js">
        <head>
            <base href="${initParam.base_url}"></base>
            <h1 align="center">Bioinformatica puzzel</h1>
            <meta charset="UTF-8" />
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <meta name="viewport" content="width=device-width, initial-scale=1">
                    <script src="js/modernizr.custom_1.js"></script>
                    <link rel="shortcut icon" href="favicon.ico">
                        <link rel="stylesheet" type="text/css" href="css/normalize.css" />
                        <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
                        <link rel="stylesheet" type="text/css" href="css/demo.css" />
                        <link rel="stylesheet" type="text/css" href="css/bottom-slide.css" />
                        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
                        <script src="js/draggabillity.js"></script>
                        <script src="js/dragdrop.js"></script>
                        </head>
                        <body class="skin-5">

                            <div class="container">
                                <!-- Top Navigation -->

                                <div class="content" >
                                    Hieronder vindt je de bio-informatica puzzel met wat biologische/genetische vragen.<br/>
                                    Je kunt kunt een antwoord oppakken en slepen naar het goede antwoord dat in beeld<br/>
                                    komt op het moment dat je een antwoord op pakt met de muis. <br/>

                                    <header class="codrops-header">

                                    </header>
                                    <div id="grid" class="grid clearfix">
                                        <div data-cor='1cor'  class="grid__item"><i class="fa fa-fw"></i>Mendel</div>
                                        <div data-cor=""  class="grid__item"><i class="fa fa-fw"></i>A</div>
                                        <div data-cor=""   class="grid__item"><i class="fa fa-fw"></i>T</div>
                                        <div  data-cor=""  class="grid__item"><i class="fa fa-fw"></i>C</div>
                                        <div data-cor='2cor' class="grid__item"><i class="fa fa-fw"></i>G</div>
                                        <div data-cor='4cor' class="grid__item"><i class="fa fa-fw"></i>U</div>
                                        <div data-cor='5cor' class="grid__item"><i class="fa fa-fw"></i>codon</div>
                                        <div data-cor='10cor' class="grid__item"><i class="fa fa-fw"></i>Watson and Crick</div>
                                        <div data-cor='3cor' class="grid__item"><i class="fa fa-fw"></i>Transcriptie</div>
                                        <div data-cor='7cor' class="grid__item"><i class="fa fa-fw"></i>Translatie</div>
                                        <div data-cor='9cor' class="grid__item"><i class="fa fa-fw"></i>20</div>
                                        <div data-cor='6cor' class="grid__item"><i class="fa fa-fw"></i>AUG</div>
                                        <div data-cor='11cor' class="grid__item"><i class="fa fa-fw"></i>1</div>
                                        <div data-cor='12cor' class="grid__item"><i class="fa fa-fw"></i>30</div>
                                        <div data-cor="" class="grid__item"><i class="fa fa-fw"></i>N</div>
                                        <div data-cor='8cor' class="grid__item"><i class="fa fa-fw"></i>ribosomen</div>
                                    </div>


                                </div><!-- /content -->

                            </div><!-- /container -->
                            <div id="drop-area" class="drop-area">
                                <div>
                                    <div class="dummy"></div>
                                    <div data-cor='1cor' class="drop-area__item"><i class="fa fa-fw"></i>Door wie is Wetenschappelijk bewezen dat genen de dragers zijn van het erfelijke materiaal?</div>
                                    <div data-cor='2cor' class="drop-area__item"><i class="fa fa-fw"></i>Zet de 4 bases die een DNA molecuul maken op alfabetische volgorde, wat is de 3de base?</div>
                                    <div data-cor='3cor' class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we het proces van DNA afschrijven en mRNA maken?</div>
                                    <div data-cor='4cor' class="drop-area__item"><i class="fa fa-fw"></i>Welke base zit er in mRNA inplaats van de T?</div>
                                    <div data-cor='5cor' class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we een stukje van 3 bases in het mRNA dat codeert voor een aminozuur?	</div>
                                    <div data-cor='6cor' class="drop-area__item"><i class="fa fa-fw"></i>Welke base(n) coderen voor het start codon?</div>
                                    <div data-cor='7cor'  class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we de laatste stap waarbij mRNA wordt omgezet in een eiwit?</div>
                                    <div data-cor='8cor' class="drop-area__item"><i class="fa fa-fw"></i>Wat zijn de eiwit fabriekjes van de cel?</div>
                                    <div data-cor='9cor' class="drop-area__item"><i class="fa fa-fw"></i>Hoeveel aminozuren kunnen er gemaakt worden met de verschillende codons?</div>
                                    <div data-cor='10cor' class="drop-area__item"><i class="fa fa-fw"></i>Aan wie  is de nobel prijs uitgereikt voor het ontdekken van DNA?</div>
                                    <div data-cor='11cor' class="drop-area__item"><i class="fa fa-fw"></i>Voor hoeveel procent lijkt ons DNA NIET op dat van een chimpansee?</div>
                                    <div data-cor='12cor' class="drop-area__item"><i class="fa fa-fw"></i>Hoeveel duizendtallen aan genen heeft een mens ongeveer?</div>
                                </div>
                            </div>
                            <div class="drop-overlay"></div>
                            <script src="js/FinalStep.js" type="text/javascript"></script>


                            <center>
                                <br/>
                                <br/>
                                <div id="smallText">Mocht je terug willen naar de workshop Hanze experience pagina. <a href="html/hanzeXperience_HAVO.jsp">Klik dan hier</a></div>
                                <br/>
                                <br/>
                                <br/>

                                <%@include file="../includes/bodyFooter.jsp"  %></center>
                        </body>

                        </html>
