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
    private String resultString;
    private String resultContent;
    private int correctAnswer;
    
    /**
     *
     * @param filePath
     * @throws IOException
     */
    public void start(String filePath) throws IOException {
        readFile(filePath);
        resultString = getMain(fileContent);
        calculateAnswers(resultString);
        
    }

    /**
     *
     * @param filepath
     * @throws FileNotFoundException
     * @throws IOException
     */
    public void readFile(String filepath) throws FileNotFoundException, IOException {
        String filePath = filepath.replace("\\","\\\\"); // Comment if your not working on windows
        fileContent = new String(Files.readAllBytes(Paths.get(filepath))).replace("\t", "");
    }
    
    /**
     *
     * @param fileContent
     * @return
     */
    public String getMain(String fileContent) {
       String pattern = "main\\(\\):\n(.*)while not";
       String foundMain = "";
       Pattern p = Pattern.compile(pattern, Pattern.DOTALL);
       Matcher regexMatch = p.matcher(fileContent);
       if(regexMatch.find()){
           foundMain = regexMatch.group(1);
       }
       return foundMain;
       
       
    }

    /**
     *
     * @param foundMain
     */
    public void calculateAnswers(String foundMain) {
        List<String> userMain = new ArrayList<>(Arrays.asList(foundMain.split("\n")));
        try {
            //Path for school
//            String f = new String(Files.readAllBytes(Paths.get("/commons/Themas/Thema10/fileSaver/uitwerking/zoekGen_werkend.py")));
            
            //Path to zoekGen_werkend.py on windows
            String f = new String(Files.readAllBytes(Paths.get("C:\\Users\\Juliana\\Documents\\Julia\\InfoWorkshops\\PR_Activiteiten\\HanzeXperience_MBO\\MBOXperience_2013\\Uitwerking\\zoekGen_werkend.py"))); 
            String answerContent = getMain(f).replace("\t", "");
            List<String> answerMain =  new ArrayList<>(Arrays.asList(answerContent.split("\n")));
            
            //Iterates of both Arralist to see if they are the same.
            if(userMain.size() == answerMain.size()){
                for (int i = 0; i < answerMain.size(); i++) { 
                    //if the variable of both Arraylists is the same one point will be added.
                    if(userMain.get(i).equals(answerMain.get(i))){
                        correctAnswer = correctAnswer+1;
                    }
                }
            }else{
                //if the size of both Arraylist are not the same, this will be given
                resultContent="Size is not the same";
            }
            
            
        } catch (IOException ex) {
            Logger.getLogger(ValidateScript.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     *
     * @return int which is a number of correct answers
     */
    public int getResult(){
       return correctAnswer;
    }
    
    /**
     *
     * @return String
     */
    public String getResultContent(){
       return resultContent;
    }
    
    

   

    
}
