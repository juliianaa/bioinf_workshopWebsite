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
 *
 * @author jwlgoh
 */
public class ValidateScript {
    private String fileContent;
    private String ResultString;
    private String resultContent;
    private List<String> userMain;
    private List<String> answerMain;
    private int correctAnswer;
    private int wrongAnswer;
    
    
    public void start(String filePath) throws IOException {
        readFile(filePath);
        ResultString = getMain(fileContent);
        checkIfMainIsValid(ResultString);
        
    }

    public void readFile(String filepath) throws FileNotFoundException, IOException {
//        String filePath = filepath.replace("\\","\\\\");
        fileContent = new String(Files.readAllBytes(Paths.get(filepath))).replace("\t", "");
    }
    
     private String getMain(String fileContent) {
       String pattern = "main\\(\\):\n(.*)while not";
       String resultString = "";
       Pattern p = Pattern.compile(pattern, Pattern.DOTALL);
       Matcher regexMatch = p.matcher(fileContent);
       if(regexMatch.find()){
           resultString = regexMatch.group(1);
       }
       return resultString;
       
       
    }


    private void checkIfMainIsValid(String mainFunction) {
        userMain = new ArrayList<>(Arrays.asList(mainFunction.split("\n")));
        try {
            String f = new String(Files.readAllBytes(Paths.get("/commons/Themas/Thema10/fileSaver/uitwerking/zoekGen_werkend.py")));
            String answerContent = getMain(f).replace("\t", "");
            answerMain =  new ArrayList<>(Arrays.asList(answerContent.split("\n")));
            
            
            if(userMain.size() == answerMain.size()){
                for (int i = 0; i < answerMain.size(); i++) { 
                    if(userMain.get(i).equals(answerMain.get(i))){
                        correctAnswer = correctAnswer+1;
                    }else{
                        wrongAnswer = wrongAnswer+1;
                    }
                }
            }else{
                resultContent="Size is not the same";
            }
            
            
        } catch (IOException ex) {
            Logger.getLogger(ValidateScript.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    public int result(){
       return correctAnswer;
    }
    
    

   

    
}
