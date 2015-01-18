<%-- 
    Document   : technasiumWorkshop2
    Created on : 13-jan-2015, 23:19:24
    Author     : mldubbelaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
            <meta charset="utf-8"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
            <script src="js/popUpWiki.js" type="text/javascript"></script>
            <script src="js/jquery.bpopup-x.x.x.min.js" type="text/javascript"></script>
            <link rel="stylesheet" type="text/css" href="css/style.css" />
            <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
            <link href="css/workshopsHanze.css" rel="stylesheet" type="text/css"/>
            <title>Hanze Experience Havo</title>
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
                    <div class="introduction" id="introduction">
                        <h1>Hanze Experience</h1>
                        <div id="correctAnswered" ><h2>Goed gedaan!</h2>
                            Je hebt de puzzel goed ingevuld! Hier zijn
                            de sequenties waarmee je verder kunt werken!
                            <p id = "fasta">Bacterie_1<br/>
                                TACGTAGGGTGCGAGCGTTATCCGGATTTATTGGGCGTAAAGGGCTCGTAGGCGGTTCGTCGCGTCCGGTGTGAAAGTCC<br/>
                                Bacterie_2<br/>
                                ACGTAGGTGGCAAGCGTTATCCGGATTTATTGGGCGTAAAGCGAGCGCAGGCGGTTTTTTAAGTCTGATGTGAAAGCCCT<br/>
                                Bacterie_3<br/>
                                CGGATCAGCACGCCGCGGTGAATACGTTCCCGGGCCTTGTACACACCGCCCGTCACACCACGAGAGTTTGTAACACCCGA
                            </p>
                        </div>
                    </div>
                    <!--End of content-->
                </div>
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
