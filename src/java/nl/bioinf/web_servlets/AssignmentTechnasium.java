/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_servlets;

import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import nl.bioinf.NoteHandler.GetNoteText;
import nl.bioinf.NoteHandler.SaveAsTxt;

/**
 *
 * @author mldubbelaar
 */
public class AssignmentTechnasium extends HttpServlet {
    /**
     * userName.
     * bla
     */
    private final String userName = "piet";
    /**
     * filePath.
     */
    //String filePath = "/homes/mldubbelaar/Desktop/test/"+userName+
    // "_notes.txt";
    private final String filePath = "/Users/mldubbelaar/Desktop/test/"
            + userName + "_notes.txt";

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          System.out.println("haalllooooo");
//        response.setContentType("application/octet-stream");
//        response.setHeader("Content-Disposition","attachment;filename=temp.csv");
//        
//        File file = new File(filePath);
//        
//        try (
//            ServletOutputStream out = response.getOutputStream()) {
//            GetNoteText getNoteText = new GetNoteText();
//            String savedNotes = getNoteText.getSavedNotes(file);
//            InputStream in;
//            in = new ByteArrayInputStream(savedNotes.getBytes("UTF-8"));
//
//            byte[] outputByte = new byte[4096];
//            //copy binary contect to output stream
//            while(in.read(outputByte, 0, 4096) != -1)
//            {
//                out.write(outputByte, 0, 4096);
//            }
//            in.close();
//            out.flush();
//        }
//	}

        File file = new File(filePath);
        System.out.println("");
        GetNoteText getNoteText = new GetNoteText();
        String savedNotes = getNoteText.getSavedNotes(file);
        
        System.out.println("$$$$$$$$$$$$$$$$$$$"+savedNotes);

        if (savedNotes.isEmpty()) {
            try (PrintWriter pw = response.getWriter()) {
                pw.print("Er is iets fout gegaan met het ophalen van de notities!"
                        + "Neem contact op met de docent.");
                pw.flush();
            }
        } else {
            try (PrintWriter pw = response.getWriter()) {
                pw.print(savedNotes);
                pw.flush();
            }
        }
    }


    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(final HttpServletRequest request,
            final HttpServletResponse response)
            throws ServletException, IOException {
        String notes = request.getParameter("notes");
        //request.getSession().getAttribute("user_name");
        /*
         If the function saveAsTemp returns true
         Than the true will be catched so it can be used within myScript.js 
         as an extra check.
         */
//        ---------------------------------------------------------------------
        SaveAsTxt saveAsText = new SaveAsTxt();
        boolean succes = saveAsText.createTxt(notes, filePath);
        if (succes) {
            try (PrintWriter pw = response.getWriter()) {
                pw.print(Boolean.toString(succes));
                pw.flush();
            }
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
