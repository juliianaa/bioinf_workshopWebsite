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
import nl.bioinf.note_handler.NoteSaver;

/**
 * SaveNotesServlets makes sure that the notes on the technasium page are saved.
 * The NoteSaveServlet asks for the parameters of notes and userPath. These
 * parameters will be used when the function createTxt is called. With the use
 * of a boolean there will be a check if the items are saved.
 *
 * @author mldubbelaar
 */
public class NoteSaveServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected final void processRequest(final HttpServletRequest request,
            final HttpServletResponse response)
            throws ServletException, IOException {
        /*
         The parameters from notes and userPath will be saved.
         */
        String notes = request.getParameter("notes");
        String file = request.getParameter("userPath");
        if (notes.isEmpty() || file.isEmpty()) {
            PrintWriter pw = response.getWriter();
            try {
                pw.print("false");
                pw.flush();
            } catch (Exception e) {
                pw.print(e);
                pw.flush();
            }
        }
        /*
         If the function saveAsTemp returns true
         Than the true will be catched so it can be used within myScript.js
         as an extra check.
         */
        NoteSaver saveAsText = new NoteSaver();
        boolean succes = saveAsText.createTxt(notes, file);
        /*
         If the boolean is true the printwriter will be used.
         The true will be transformed into a string and can be used further.
         In this case within the js file.
         */
        if (succes) {
            PrintWriter pw = response.getWriter();
            try {
                pw.print(Boolean.toString(succes));
                pw.flush();
            } catch (Exception e) {
                pw.print(e);
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
