/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.NoteHandler;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;

/**
 * GetNoteText reads the data of the txt file. This data will be converted to a
 * string which can be used further.
 *
 * @author mldubbelaar
 */
public class GetNoteText {

    /**
     * textFromNotes should contain the text from the user file in the end.
     */
    private String textFromNotes;

    /**
     * getSavedNotes uses a file and returns the text within this file.
     *
     * @param filePath which is the path of the file.
     * @return textFromNotes.
     * @throws IOException when something whent wrong.
     */
    public final String getSavedNotes(final String filePath)
            throws IOException {
        try {
            FileReader fr = new FileReader(filePath);
            File file = new File(filePath);
            /*
             If the file exists the data from the file is used and saved using a
             stringbuilder.
             */
            if (file.exists()) {
                BufferedReader br = new BufferedReader(fr);
                StringBuilder sb = new StringBuilder();
                String line = br.readLine();
                while (line != null) {
                    sb.append(line);
                    sb.append(System.lineSeparator());
                    line = br.readLine();
                }
                /*
                 The stringbuilder will be converted into a string
                 */
                textFromNotes = sb.toString();
            } else {
                textFromNotes = "Heb je al een file aangemaakt?";
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        /*
         This data will be returned
         */
        return textFromNotes;
    }

}
