<%-- 
    Document   : assignment1bc_terminal
    Created on : Jan 15, 2015, 1:17:10 PM
    Author     : aroeters/jwlgoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">   
            <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                      <!--contains the overall style of the website-->
                    <link rel="stylesheet" type="text/css" href="css/style.css" />
                    <!--contains more styling specific to the workshop-->
                    <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
                    <!--contain jQuery and jQuery-ui-->
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js"></script>
                    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.9/jquery-ui.min.js"></script>
                     <!--contains the script that uses ajax to navigate through the pages-->
                    <script src="js/navigateQuestionsMBO.js" type="text/javascript"></script>
                    </head>

    <body>
        <div id="main1">
            <%@include file="../../includes/bodyHeader.jsp" %>
            <div id="site_content">
                <div id="top_border"></div>
                <ul id="images">
                    <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                <!--this div is the div that is refershed with ajax-->
                <div class="content" id="question" style = "width: 800px;" >
                    <div>
                        <c:choose>
                            <!--gets the attribute result out of the requestScope and compares it to know which page to load-->
                            <c:when test="${requestScope.result == 5}">
                                <%@include file="assignment1c.jsp" %>
                            </c:when>
                            <c:otherwise>
                                <!--gives the error message for when the script that is uploaded is not filled in correctly-->
                                <h1>${requestScope.resultMessage}</h1>
                                <%@include file="assignment1b.jsp" %>
                            </c:otherwise>
                        </c:choose>
                    </div>

                                </div>
                                <!--the navigation button that use ajax to load other pages-->
                                <button id="previous_question_button" class="button" type="button">Vorige vraag</button>
                                <button id="next_question_button" class="button" type="button">Volgende vraag</button>
                                <!--End of content-->
                            </div>
                            <%@include file="../../includes/bodyFooter.jsp" %>
                        </div>
                    </body>
                    </html>

