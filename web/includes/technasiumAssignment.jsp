<%-- 
    Document   : technasiumAssignment
    Created on : 4-jan-2015, 19:11:42
    Author     : mkslofstra
--%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div id="text_case">
    <div class = "text">
        <h1>Technasium</h1>
        Welkom ${requestScope.user.username}, <br/>
        <br/>
        We hebben je hulp erg nodig, we moeten drie personen ondervragen over de moord van het hoofd van de labratoria
        van het Instituut voor Life Science & Technology. <br/>
        Je kan aantekeningen maken, over wat je van de verdachten vindt en dit kan later weer worden bekeken. 
        Help ons bij het vinden van de dader.<br/>
        Heel veel succes!! 
    </div>
    <!--By mkslofstra-->
    <div id="question_div" data-question-number="1" data-imgNumber="tafel" >
        <div class="imageBoxes" id = "questionImage" > 
            <img data-imgNumber="tafel" id = "image" src="images/houtenTafel.jpg" alt=""/> 
            <div class ="black">
                <p>Het hoofd van het laboratorium van ISLT is vermoord! 
                    <br/>Hier volgen de bewijsstukken die gevonden zijn.</p>
            </div>
        </div>
        <!--By mldubbelaar-->
        <div class="noteBox">
            <label for="basic">Aantekeningen:</label>
            <form  id="save_notes_form" action="#" method="post">
                <!--<textarea cols="35" rows="24" name="notes" id = "notes">Maak hier je aantekeningen over de verdachten!</textarea>-->
                <c:choose>
                    <c:when test="${empty sessionScope.savedNotes}">
                        <textarea cols="35" rows="24" name="notes" id = "notes">Maak hier je aantekeningen over de verdachten!</textarea>
                    </c:when>
                    <c:otherwise>
                        <textarea cols="35" rows="24" name="notes" id = "notes">${sessionScope.savedNotes}</textarea>
                    </c:otherwise>
                </c:choose>
                <input type="submit" value="Save"/></form>
            <button id="get_notes" class="imageButton">Aantekeningen</button>
            <button id ="first" class = "imageButton"><<</button>
            <button id="last_question_button" class = "imageButton"><b>< Vorige</b></button>
            <button id="next_question_button" class = "imageButton"><b>> Volgende</b></button>
            <button id ="last" class = "imageButton">>></button>
            <button id="bewijsMateriaal" class="imageButton">Bewijs materiaal</button>
            <button id="nextPage" class="imageButton">Vul tabel in!</button>
        </div>
    </div>
</div>
