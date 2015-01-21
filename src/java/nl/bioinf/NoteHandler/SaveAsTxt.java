/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.NoteHandler;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;

/**
 *
 * @author mldubbelaar
 */
public class SaveAsTxt {

    /**
     * The path is where all the files will be saved. The file will get the name
     * of the user with the addition of _notes.txt .txt has been chosen because
     * this type of file can be overwritten a .tmp creates an new file every
     * time a user saves.
     */
    private boolean fileSaved = false;

    /** 
     * 
     * @param notes bla bla
     * @param filePath bla
     * @return bla
     * @throws IOException bla 
     */
    public boolean createTxt(final String notes, final String filePath)
            throws IOException {
        File file = new File(filePath);
        if (file.exists()) {
            try {
                String tempFile = filePath;
                /*
                The notes which were added on the site are written into the
                user file and fileSaved will be changed into true.
                 */
                try (PrintWriter writer = new PrintWriter(tempFile, "UTF-8")) {
                    /*
                    The notes which were added on the site are written into the
                    user file and fileSaved will be changed into true.
                    */
                    writer.println(notes);
                }
                    fileSaved = true;
            } catch (FileNotFoundException | UnsupportedEncodingException e) {
                System.out.println(e);
            }
        } else if (!file.exists()) {
            file.createNewFile();
            try {
            FileWriter fw = new FileWriter(file.getAbsoluteFile());
            BufferedWriter bw = new BufferedWriter(fw);
            bw.write(notes);
            fileSaved = true;
            } catch (Exception e) {
                System.out.println(e);
            }
        }
        return fileSaved;
    }

}
