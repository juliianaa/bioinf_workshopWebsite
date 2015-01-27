<%-- 
    Document   : logout
    Created on : 3-jan-2015, 20:52:33
    Author     : Raozinga
--%>
<form class="login" action="logout.do" method="POST" action="#">
    <input type="hidden" name="location" value="${param.location}">
    <div class="main" id = "logout">
        <label> Hallo, ${sessionScope.user.username}</label><br/>
        <table>
            <input type="submit" value="Log uit" name="logout" id="login" class="logoutButton"/>    
        </table>
    </div>
</form>
