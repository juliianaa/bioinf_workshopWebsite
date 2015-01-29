/* 
 * By Mldubbelaar
 * To make it possible to save notes and watch the casus on the technasium workshop page
 */

$(document).ready(initialize);


function initialize() {
    
    // By Mldubbelaar
    // Hardcoded path for school -- Do not use unless in case of emergency -- Test path
    // var path = "/commons/Themas/Thema10/savedNotes/Harry_notes.txt";
    // Path for school
    /*
     * @type String contains the path of the given file for each user.
     */
     var path = "/commons/Themas/Thema10/savedNotes/" + $("#userData").attr('value') + "_notes.txt";
    
    // By Mldubbelaar
    /*  
     * @type String contains the the url of the servlet.
     */
    var url = "http://localhost:8080/Bioinformatica_website/getNotes.do";
        var path_data = {'userPath': path};
        /*
         * The path is used to get the text.
         * Whenever the text == null, because the file is empty.
         * The if is used.
         */
        $.get(url, path_data, function(textFromNotes){
               $("#save_notes_form textarea").text(textFromNotes); 
               if (textFromNotes === "null") {
                   $("#save_notes_form textarea").text("Maak hier je eigen aantekeningen"); 
               }
        });  
    /*
     * Whenever save_notes_form is called the servlet makeNotes.do is called.
     * By Mldubbelaar
     */
    $("#save_notes_form").submit(function(event) {
        var url = "http://localhost:8080/Bioinformatica_website/makeNotes.do";
        /*
         * The input of the notes is saved as notes_data.
         */
         notes_data = {'notes': $("#save_notes_form textarea").val(),
         'userPath': path};
        /*
         * The notes_data will be posted to the servlet (url), 
         * if the text is saved the servlet will return true. 
         * Within these lines also known as data.
         * So if data === true, the text was saved succesfully
         */
        $.post(url, notes_data, function(data) {
            if (data === "true"){
                alert("De aantekeningen zijn opgeslagen!");
            } else {
                alert("Er is iets misgegaan. Neem contact op met de docent!");
            }  
            $(".result").html(data);
        });
        event.preventDefault();
    });
}

