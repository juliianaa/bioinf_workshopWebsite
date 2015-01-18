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
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
      <title>Bioinformatics Homepage</title>
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
                    <h1>Workshops</h1>

                    <div class="row">

                        <div class="workshop_boxes" position="fixed">
                            <section>
                                <img src="images/dnatrap.jpg" alt="" class="workshop_images" />
                                <p>Hanze Experience - HAVO</p>
                                Wij willen je van harte welkom heten op de Hanzehogeschool Groningen. De
                            hogeschool biedt je vele mogelijkheden om je verder te ontwikkelen nadat je je
                            havo diploma hebt gehaald. We ...
                                    <p><a href="html/hanzeXperience_HAVO.jsp" class="button">Start workshop</a></p>
                            </section>
                        </div>
                        <div class="workshop_boxes" position="fixed">
                            <section>
                                <img src="images/vdoornveste.jpg" alt="" class="workshop_images" />
                                <p>Hanze Experience - MBO</p>                                
                                Wij willen je van harte welkom heten op de\nHanzehogeschool Groningen.
                                    Gedurende deze driedaagse wordt er o.a. aandacht besteed aan de verschillende 
                                    werkvormen ...
                                    <p><a href="html/hanzeXperience_MBO.jsp" class="button">Start workshop</a></p>
                                    
                            </section>
                        </div>
                        <div class="workshop_boxes"position="fixed">
                            <section>
                                <img src="images/mummy.jpg" alt="" class="workshop_images"/>
                                <p>Masterclass - Meet the mummy</p>
                                Toen de conciërge ‘s morgens vroeg op school kwam en zijn gebruikelijke ronde maakte, 
                                deed hij een lugubere vondst. In practicumzaal D033 lag een lijk op de grond! 
                                Hij herkende meteen ...
                                <p><a href="html/masterclass.jsp" class="button">Start workshop</a></p>
                            </section>
                        </div>
                        <div class="workshop_boxes" position="fixed">
                            <section>
                                <img src="images/technasium.jpg" alt="" class="workshop_images" />
                                <p>Technasium</p>

                                Als je moeder en je vader allebei blond, lang of juist klein zijn, 
                                dan is de kans groot dat jij dat ook bent. Dat komt omdat je van allebei 
                                je ouders eigenschappen erft . Dit geldt ...
                                <p><a href="html/technasium.jsp" class="button">Start workshop</a></p>
                                    

                            </section>
                        </div>
                        
                        <div class="workshop_boxes" position="fixed">
                             <section>
                                    <img src="images/1.jpg" alt="" class="workshop_images"/>
                                    <p>Powerpoints</p>
                                    In de powerpoints is alles terug te vinden dat in de workshop besproken is.
                                    Mocht je een workshop nog terug willen kijken, klik dan de 
                                    desbetreffende workshop aan, daar staat de powerpoint ook.
                                    <p><a href="html/powerpoint.jsp" class="button">Open powerpoint</a></p>
                             </section>
                         </div>
                        
                        <div class="workshop_boxes" position="fixed">
                             <section>
                                    <img src="images/KankerWorkshop/StaOpTegenKanker.jpg" alt="" class="workshop_images"/>
                                    <p>Een kijkje in kanker onderzoek</p>
                                    In deze workshop wordt er uitgelegd hoe dna geanalyseerd kan worden om 
                                    te onderzoeken of een patient mogelijk een vorm van kanker heeft. 
                                    Dit wordt onder andere gedaan door middel van ..
                                    <p><a href="html/kankerOnderzoekWorkshop.jsp" class="button">Start workshop</a></p>
                             </section>
                         </div>
                         </div>
                    </div>

                </div>
                <!--End of content-->
            </div>


            <%@include file="../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
