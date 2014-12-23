<%-- 
    Document   : assignments
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
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <style>
            #makeMeDraggable { float: left; width: 300px; height: 300px; background: red; }
            #makeMeDroppable_1 {width: 200px; height: 20px; border: 1px solid #999; position: absolute; left: 215px; top:680px}
            
            #makeMeDroppable_2 {width: 200px; height: 20px; border: 1px solid #999; position: absolute; left: 215px; top:750px}
            
            #makeMeDroppable_3 {width: 200px; height: 20px; border: 1px solid #999; position: absolute; left: 510px; top:820px}
            
            #makeMeDroppable_4 {width: 200px; height: 20px; border: 1px solid #999; position: absolute; left: 215px; top:960px}
        </style>

        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
        <script src="js/visualize.js" type="text/javascript"></script>
      <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main">
            
            <%@include file="../../includes/bodyHeader.jsp" %>


            <div id="site_content">
                <div id="top_border"></div>
                
                <ul id="images">
                   <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                
                <div class="content" style = "width: 800px;">
                    <img src="images/hanzeXperience_MBO/nr1.png" alt="" id="draggable1"/>
                    <img src="images/hanzeXperience_MBO/nr2.png" alt="" id="draggable2"/>
                    <img src="images/hanzeXperience_MBO/nr3.png" alt="" id="draggable3"/>
                    <img src="images/hanzeXperience_MBO/nr4.png" alt="" id="draggable4"/>
                    

                    <div id="makeMeDroppable_1"> </div>
                    <div id="makeMeDroppable_2"> </div>
                    <div id="makeMeDroppable_3"> </div>
                    <div id="makeMeDroppable_4"> </div>

                    <img src="images/hanzeXperience_MBO/HanzeXperience(drag and drop).png" alt=""/>
                    
                </div>
                <!--End of content-->
            </div>

            <%@include file="../../includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>
