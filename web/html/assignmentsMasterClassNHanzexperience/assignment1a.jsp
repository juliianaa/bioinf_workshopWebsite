<%-- 
    Document   : assignment1a
    Created on : Jan 12, 2015, 3:32:07 PM
    Author     : aroeters
--%>

<div id="number_passer" data-nr="1">
    <div>
        <c:choose>
            <c:when test="${sessionScope.user != null}">
                <h1>Welkom, ${sessionScope.user}</h1>
            </c:when>
            <c:otherwise>
                <h1>No name</h1>
            </c:otherwise>
        </c:choose>
        <h1>Opdracht 1a</h1>
        <h2>Sleep de kaarten naar het correcte vak.</h2>
    </div>
    <div id="answersPile"></div>
    <div id="answersSlots"></div>
    <img src="images/hanzeXperience_MBO/HanzeXperience(drag and drop).png" alt="" style="position:relative"/>
    <div id="successMessage">
        <h2>Het is je gelukt om het schema goed in te vullen!!!</h2>
    </div>
</div>
