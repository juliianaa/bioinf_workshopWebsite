<%-- 
    Document   : workshops
    Created on : Nov 27, 2014, 3:15:34 PM
    Author     : jwlgoh/aroeters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <script src="js/typed.js" type="text/javascript"></script>
        <script src="js/typeText.js" type="text/javascript"></script>
        <style type="text/css">
            .element {
                top: 80px;
                left:250px;
                position:relative;
            }
        </style>
      <title>Bioinformatics Homepage</title>
    </head>
    <body>
        <div id="main1">
            <%@include file="../includes/bodyHeader.jsp" %>
            <div id="site_content">
                <div id="top_border"></div>
                
                <div class="content" style = "width: 800px;">
                    <span class="element" id="element" style="white-space:pre"></span>
                    <img src="images/hanzeXperience_MBO/textBalloon.png" style="float:right" alt=""/>   
                    <p>
                        <img src="images/hanzeXperience_MBO/prof.png" width="210" height="400" alt=""/>
                        <a href="html/assignmentsMasterClassNHanzexperience/assignment1.jsp" class="button">Start</a>
                    </p>
                </div>
                <!--End of content-->
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
