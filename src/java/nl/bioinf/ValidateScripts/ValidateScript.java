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
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 *
 * @author jwlgoh
 */
public class ValidateScript {
    private String fileContent;
    private String ResultString;
    private String FoundMainFunction;
    private List<String> userMain;
    private boolean isAValidMain;
    
    public void start(String filePath) throws IOException {
        readFile(filePath);
        getMain(fileContent);
        checkIfMainIsValid(FoundMainFunction);
        
    }

    public void readFile(String filepath) throws FileNotFoundException, IOException {
        String filePath = filepath.replace("\\","\\\\");
        fileContent = new String(Files.readAllBytes(Paths.get(filePath)));
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
    }


    public List<String> getFileContent() {
        return userMain;
    }

   

    
}
