/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.NoteHandler;

import java.io.File;
import java.io.PrintWriter;

/**
 *
 * @author mldubbelaar
 */
public class SaveAsTxt {
    /**
        The path is where all the files will be saved.
        The file will get the name of the user with the addition of _notes.txt
        .txt has been chosen because this type of file can be overwritten a
        .tmp creates an new file every time a user saves.
        */
    private boolean fileSaved = false;
    /**
     * saveAsTemp will be called by the doPost.
     * This function writes the notes made by the user in its own file.
     *
     * @param notes are the notes given by the user.
     * @param filePath is the path and the name of the file which will be
     * created.
     * @return only true if the notes are correctly saved within its file
     */
    public boolean createTxt(final String notes, final String filePath) {
        
        File file = new File(filePath);
        if (file.exists()){
            try {
            String tempFile = filePath;
            try (PrintWriter writer = new PrintWriter(tempFile, "UTF-8")) {
                /*
                The notes which were added on the site are written into the
                user file and fileSaved will be changed into true.
                */
                writer.println(notes);
                writer.close();
                fileSaved = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        }        
        return fileSaved;
    }
}