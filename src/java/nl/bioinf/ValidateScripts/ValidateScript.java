/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.ValidateScripts;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * This Java class is used to check if the answer that the user has given in
 * the python script is correct.
 *
 * @author jwlgoh/ aroeters
 */
public class ValidateScript {
    /**
    * This string contains the content of the file.
    **/
    private String fileContent;
    /**
    * Contains the main of the script that is uploaded.
    **/
    private String resultString;
    /**
     * Contains the error message from when the uploaded main is not correct.
     */
    private String resultContent;
    /**
     * Contains the number of correct answers.
     */
    private int correctAnswer;


    /**
     * Start the validateScript program.
     *
     * @param filePath should contain the pah to the uploaded file
     * @throws IOException when something goes wrong with the uploading the file
     */
    public final void start(final String filePath) throws IOException {
        readFile(filePath);
        resultString = getMain(fileContent);
        calculateAnswers(resultString);
    }

    /**
     * Reads the file and set it to String.
     *
     * @param filepath should contain the pah to the uploaded file
     * @throws FileNotFoundException when the file is not found
     * @throws IOException when something goes wrong with reading the file
     */
    public final void readFile(final String filepath) throws
            FileNotFoundException, IOException {
        fileContent = new String(Files.readAllBytes(Paths.get(filepath)));

    }

    /**
     * Gets the main function of the script content that is given.
     *
     * @param fileContent is the content of the whole file
     * @return the main that is found in the uploaded file
     */
    public final String getMain(final String fileContent) {
       String pattern = "main\\(\\):\n(.*)while not";
       String foundMain = "";
       Pattern p = Pattern.compile(pattern, Pattern.DOTALL);
       Matcher regexMatch = p.matcher(fileContent);
       if (regexMatch.find()) {
           String main = regexMatch.group(1);
           foundMain = main.replaceAll("\\s", "");
       }
       return foundMain;
    }
    /**
     * Calculates the correct answers that is found in the script.
     * If there are 5 correct answers this means that
     * the script is correct and can be called.
     *
     * @param foundMain should contain the main from the uploaded file
     */
    public final void calculateAnswers(final String foundMain) {
        //The main splitted on () so that only the functions are in the list.
        List<String> userMain = new ArrayList<>(Arrays.asList(foundMain
                .split("\\(\\)")));


        try {
            //Path where the correct script can be found
            String f = new String(Files.readAllBytes(Paths.get("/commons/"
                    + "Themas/Thema10/fileSaver/uitwerking/"
                    + "zoekGen_werkend.py")));

            String answerContent = getMain(f);

            // Contains the correct main.
            List<String> answerMain =  new ArrayList<>(Arrays
                    .asList(answerContent
                    .split("\\(\\)")));

            //Iterates of both Arralist to see if they are the same.
            if (userMain.size() == answerMain.size()) {
                for (int i = 0; i < answerMain.size(); i++) {
                    //if the variable of both Arraylists is the same
                    //one point will be added.
                    if (userMain.get(i).equals(answerMain.get(i))) {
                        correctAnswer = correctAnswer + 1;
                        if (correctAnswer <= 5) {
                            resultContent = "Er zijn " + (5 - correctAnswer)
                                    + "foute antwoord(en),"
                                   + "probeer het nog een keer.";
                        }
                    }
                }
            } else {
                //if the size of both Arraylist are not the same,
                //this will be given
                resultContent = "Niet alle antwoorden zijn gegeven.";
            }


        } catch (IOException ex) {
            Logger.getLogger(ValidateScript.class.getName())
                    .log(Level.SEVERE, null, ex);
        }
    }
    /**
     *
     * @return int which is a number of correct answers
     */
    public final int getResult() {
       return correctAnswer;
    }

    /**
     *
     * @return String resultContent
     */
    public final String getResultContent() {
       return resultContent;
    }




}
