/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.ValidateScripts;

import java.io.File;
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
    private List<String> userMain;
    private boolean isAValidMain;
    private String f;
    
    public void start(String filePath) throws IOException {
        readFile(filePath);
        getMain(fileContent);
        checkIfMainIsValid(ResultString);
        
    }

    public void readFile(String filepath) throws FileNotFoundException, IOException {
//        String filePath = filepath.replace("\\","\\\\");
        fileContent = new String(Files.readAllBytes(Paths.get(filepath)));
    }
    
     private void getMain(String fileContent) {
       String pattern = "main\\(\\):\n(.*)main()";
       Pattern p = Pattern.compile(pattern, Pattern.DOTALL);
       Matcher regexMatch = p.matcher(fileContent);
       if(regexMatch.find()){
           ResultString = regexMatch.group(1);
       }
       
       
    }


    private void checkIfMainIsValid(String mainFunction) {
        userMain = new ArrayList<>(Arrays.asList(mainFunction.split("\n")));
        try {
            f = new String(Files.readAllBytes(Paths.get("../../../../../web/scripts/zoekGen_werkend.py")));
            
//        getAnswerScript
        } catch (IOException ex) {
            Logger.getLogger(ValidateScript.class.getName()).log(Level.SEVERE, null, ex);
        }
    }


    public String getFileContent() {
        return f;
    }

   

    
}
