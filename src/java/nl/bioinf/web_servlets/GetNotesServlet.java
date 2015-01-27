/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import nl.bioinf.NoteHandler.GetNoteText;

/**
 * GetNotesServlet returns the notes which where saved within the userFile.
 * The text which is found within the userfile is returned by the function
 * getSavedNotes.
 * @author mldubbelaar
 */
public class GetNotesServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        /*
        The parameter of userPath is saved as filePath.
        */
        String filePath = request.getParameter("userPath");
        if (!filePath.isEmpty()) {
            /*
            The function getSavedNotes will be used if the file exists.
            The text found can be used further.
            In this case the text is used within the js file.
            */
            GetNoteText getNoteText = new GetNoteText();
            String savedNotes = getNoteText.getSavedNotes(filePath);
            try (PrintWriter pw = response.getWriter()) {
                pw.print(savedNotes);
                pw.flush();
            }
        } else {
            try (PrintWriter pw = response.getWriter()) {
                pw.print("Maak hier je aantekeningen over de verdachten!");
                pw.flush();
            }
        }
    }

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
        processRequest(request, response);
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
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
