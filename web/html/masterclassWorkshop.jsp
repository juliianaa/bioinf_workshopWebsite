<%-- 
    Document   : assignments
    Created on : Dec 1, 2014, 1:38:28 PM
    Author     : jwlgoh/aroeters
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">   
            <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                    <link rel="stylesheet" type="text/css" href="css/style.css" />
                    <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
                    <script src="js/navigateQuestionsMBO.js" type="text/javascript"></script>
                    <title>Masterclass</title>
                    </head>
                    <body>
                        <div id="main1">
                            <%@include file="../../includes/bodyHeader.jsp" %>
                            <div id="site_content">
                                <div id="top_border"></div>
                                <ul id="images">
                                    <img src="images/banner.jpg" width="970" height="300" alt=""/>
                                </ul>

                                <div class="content" id="question" style = "width: 800px;" >
                                    <%@include file="../../html/assignmentsMasterClassNHanzexperience/assignment1a.jsp" %>
                                </div>
                                <button id="previous_question_button" class="button" type="button">Vorige vraag</button>
                                <button id="next_question_button" class="button" type="button">Volgende vraag</button>
                                <!--End of content-->
                            </div>
                            <%@include file="../../includes/bodyFooter.jsp" %>
                        </div>
                    </body>
                    </html>
