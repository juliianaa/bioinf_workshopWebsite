/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.note_handler;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * SavedText saves the text within a file. The text from the textbox on the
 * website will be written into the user specific file.
 *
 * @author mldubbelaar
 */
public class NoteSaver {

    /**
     * The path is where all the files will be saved. The file will get the name
     * of the user with the addition of _notes.txt .txt has been chosen because
     * this type of file can be overwritten a .tmp creates an new file every
     * time a user saves.
     */
    private boolean fileSaved = false;

    /**
     *
     * @param notes are the notes from the user file.
     * @param filePath is the path to the user file
     * @return true when the data is saved or overwritten, false id the data
     * cannot be saved.
     * @throws IOException IOException
     */
    public final boolean createTxt(final String notes, final String filePath)
            throws IOException {
        File file = new File(filePath);
        /*
         The folowing options are necessary to make the file executable for
         everyone. This can be changed, the true can be changed to false
         to change the usage rights.
         */
        file.setReadable(true);
        file.setExecutable(true);
        file.setWritable(true);
        /*
         The notes which were added on the site are written into the
         user file and fileSaved will be changed into true.
         */
        try (PrintWriter writer = new PrintWriter(file, "UTF-8")) {
            /*
             The notes which were added on the site are written into the
             user file and fileSaved will be changed into true.
             */
            writer.println(notes);
            fileSaved = true;
        } catch (Exception e) {
            System.out.println(e);
        }
        return fileSaved;
    }

}
