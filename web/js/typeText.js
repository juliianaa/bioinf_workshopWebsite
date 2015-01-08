/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(function(){

    $("#element").typed({
        strings: ["Welkom, Wij willen je van harte welkom heten op de\nHanzehogeschool Groningen.", 
            "Gedurende deze driedaagse wordt er o.a. aandacht besteed aan de\nverschillende werkvormen(hoorcollege, practica en projecten).",
            "Door het contact met docenten en huidige studenten van de\nhogeschool wordt je in de gelegenheid \ngesteld om al je vragen te stellen en de sfeer te proeven.",
            "Wat houdt het evenement in?",
            "• Je kunt ervaren hoe het is om in het hbo te studeren \nen in het bijzonder bij de Hanzehogeschool Groningen",
            "• Je kunt beleven hoe het is om een specifieke opleiding \nop hbo-niveau te volgen",
            "• Je krijgt informatie over verschillende opleidingen en de\nberoepen die daarbij horen",
            "We hopen dat je veel plezier zult beleven aan dit driedaagse evenement en \ndat het je kan ondersteunen in je keuze of je gaat doorsturen in het hbo."],
        typeSpeed: 0,
        backDelay: 800,
        loop: false,
        loopCount: false
    });
    
    $("#login_text").typed({
        strings: ["Voordat we beginnen, geef jezelf eerst een username voor dit \ndriedaagse workshop", 
            "<form action='answer.do' method='post'>username: <input type='text' name='username'></input><input class='button' type='submit' value='Submit'></input></form>"],
        typeSpeed: 0,
        backDelay: 800,
        loop: false,
        loopCount: false,
        contentType: 'html'
    });
    
    
});

