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
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
        <script src="js/hideText.js" type="text/javascript"></script>
        <script src="js/myScript.js" type="text/javascript"></script>
        <script src="js/typed.js" type="text/javascript"></script>
        <script src="js/getPage.js" type="text/javascript"></script>
        <link rel="stylesheet" type="text/css" href="css/style.css" />
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
                        <jsp:include page="../includes/loginForm.jsp"/>
                    </c:when>
                    <c:otherwise>
                        <jsp:include page="../includes/logout.jsp"/>
                        <jsp:include page="../includes/technasiumAssignment.jsp"/>
                        
                    </c:otherwise>
                </c:choose>
                <div id = "path"class= "hidden" >http://localhost:8080/Bioinformatica_website/html/technasiumWorkshop.jsp</div>
                <!--End of content-->         
            </div>
            <%@include file="../includes/bodyFooter.jsp" %>
        </div>
    </body>
</html>
