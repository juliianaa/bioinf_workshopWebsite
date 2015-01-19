<%-- 
    Document   : assignment1bc_terminal
    Created on : Jan 15, 2015, 1:17:10 PM
    Author     : jwlgoh
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
        <script src="js/visualize.js" type="text/javascript"></script>
        <script src="js/hideText.js" type="text/javascript"></script>
        <script src="js/navigateQuestions.js" type="text/javascript"></script>

        <title>Bioinformatics Homepage</title>
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
                    <div>
                        <c:choose>
                            <c:when test="${sessionScope.result == 5}">
                                <%@include file="assignment1c.jsp" %>
                            </c:when>
                            <c:otherwise>
                                <h1>${sessionScope.resultContent}</h1>
                                <%@include file="assignment1b.jsp" %>
                            </c:otherwise>
                        </c:choose>
                    </div>

                </div>
                <button id="previous_question_button" class="button" type="button">Vorige vraag</button>
                <button id="next_question_button" class="button" type="button">Volgende vraag</button>
                <!--End of content-->
            </div>
            <%@include file="../../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>

