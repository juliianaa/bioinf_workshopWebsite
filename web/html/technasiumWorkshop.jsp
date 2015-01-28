<%-- 
    Document   : technasiumWorkshop
    Created on : Dec 11, 2014, 8:49:56 AM
    Author     : mldubbelaar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <!--javascript for saving and loading notes-->
        <script src="js/NoteHandler.js" type="text/javascript"></script>
        <!--javascript for saving and loading slides of the assignment by ajax-->
        <script src="js/loadTechnasiumSlides.js" type="text/javascript"></script>
        <!--general styling used at most pages-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <!--styling only used on this page-->
        <link href="css/technasiumWorkshop.css" rel="stylesheet" type="text/css"/>
        <jsp:include page="../includes/loginHtmlHeader.jsp">
            <jsp:param name="page_title" value="Techasium" />	
        </jsp:include>     
    </head>
    <body>
        <div id="main1">
            <%@include file="../includes/bodyHeader.jsp" %>

            <div id="site_content">
                <div id="top_border"></div>

                <ul id="images">
                    <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                <c:choose>
                    <c:when test="${empty sessionScope.user}">
                        <jsp:include page="../includes/loginForm.jsp">
                            <jsp:param name="location" value="html/technasiumWorkshop.jsp" />
                        </jsp:include>
                    </c:when>
                    <c:otherwise>
                        <jsp:include page="../includes/logout.jsp">
                            <jsp:param name="location" value="html/technasiumWorkshop.jsp" />
                        </jsp:include>
                        <jsp:include page="../includes/technasiumAssignment.jsp"/>                

                    </c:otherwise>
                </c:choose>
                <!--End of content-->         
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
