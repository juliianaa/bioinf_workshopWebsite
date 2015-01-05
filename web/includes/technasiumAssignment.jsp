<%-- 
    Document   : technasiumAssignment
    Created on : 4-jan-2015, 19:11:42
    Author     : Mariska
--%>

<div id="text_case">
    <p class = "text">
        Welkom ${requestScope.user.username}, <br/>
        We hebben je hulp erg nodig, we moeten drie personen ondervragen over de moord van het hoofd van de labratoria
        van het Instituus voor Life Science & Technology. <br/>
        Je kan aantekeningen maken, over wat je van de verdachten vindt en dit kan later weer worden bekeken. 
        Help ons bij het vinden van de dader.<br/>
        Heel veel succes!! 
    </p>
    <div id="question_div" data-question-number="1">
        <div class="imageBoxes" id = "questionImage" > 
            <img data-imgNumber="tafel" id = "image" src="images/houtenTafel.jpg" alt=""/> 
            <div class ="black">
                <p>Het hoofd van het laboratorium van ISLT is vermoord! 
                    <br/>Hier volgen de bewijsstukken die gevonden zijn.</p>
            </div>
        </div>
        <div class="noteBox">
            <label for="basic">Aantekeningen:</label>
            <form  id="save_notes_form" action="#" method="post">
                <textarea cols="35" rows="24" name="notes">Maak hier je aantekeningen over de verdachten!</textarea>
                <input type="submit" value="Save"/></form>
            <button id ="first" class = "imageButton"><<</button>
            <button id="last_question_button" class = "imageButton"><b>< Vorige</b></button>
            <button id="next_question_button" class = "imageButton"><b>> Volgende</b></button>
            <button id ="last" class = "imageButton">>></button>
        </div>
    </div>
</div>