/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.NoteHandler;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 *
 * @author mldubbelaar
 */
public class GetNoteText {
    
    String textFromNotes;
    
    /**
     *
     * @param filePath
     * @return
     * @throws FileNotFoundException
     * @throws IOException
     */
    public String getSavedNotes(File filePath) throws FileNotFoundException, IOException {
        FileReader fr = new FileReader(filePath);
        try (BufferedReader br = new BufferedReader(fr)) {
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();
            while (line != null) {
                sb.append(line);
                sb.append(System.lineSeparator());
                line = br.readLine();
            }
            textFromNotes = sb.toString();
        }
        return textFromNotes;
    }
}
