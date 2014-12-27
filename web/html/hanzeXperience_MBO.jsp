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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <script src="js/typed.js" type="text/javascript"></script>
        <script src="js/typeText.js" type="text/javascript"></script>
        <style type="text/css">
            #typed {
                top:20px;
                left:250px;
                width: 600px;
                position:relative;
            }
        </style>
      <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main">
            
            <%@include file="../includes/bodyHeader.jsp" %>


            <div id="site_content">
                <div id="top_border"></div>
                
                <div class="content" style = "width: 800px;">
                     <img src="images/textBalloon.png" style="float:right" alt=""/>   
                    <p id="typed"></p>
                    <p>
                            
                           <img src="images/prof.png" width="210" height="400" alt=""/>
                           <a href="html/hanzeXperience_MBO/assignments.jsp" class="button">Start</a>
                            
                        </p>
                        

      
                </div>
                <!--End of content-->
            </div>


            <%@include file="../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
