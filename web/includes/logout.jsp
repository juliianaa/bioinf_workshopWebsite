<%-- 
    Document   : logout
    Created on : 3-jan-2015, 20:52:33
    Author     : Raozinga, styling and scriptlet by mkslofstra
--%>
<form id = "logout" class="login" action="logout.do" method="POST" action="#">
    <input type="hidden" name="location" value="${param.location}">
    <div class="main" id = "logout">
        <label> Hallo, ${sessionScope.user.username}</label><br/>
        <!--by mkslofstra-->
        <%
            //This scriptlet gets the date
            java.util.Date date = new java.util.Date();
        %>
        <br/>
        <p id = "time">Tijd en datum:<br/> <%= date%></p>
        <table>
            <input type="submit" value="Log uit" name="logout" id="login" class="logoutButton"/>    
        </table>
    </div>
</form>
