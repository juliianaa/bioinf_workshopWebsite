/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import nl.bioinf.NoteHandler.GetNoteText;
import nl.bioinf.NoteHandler.SaveAsTxt;
import nl.bioinf.ValidateScripts.ValidateScript;
import nl.bioinf.web_login_servlets.LoginServlet;

/**
 *
 * @author mldubbelaar
 */
public class AssignmentTechnasium extends HttpServlet {

    /**
     * userName. bla
     */
    private final String userName = "piet";
//    private String userName;
    /**
     * filePath.
     */
    //String filePath = "/homes/mldubbelaar/Desktop/test/"+userName+
    // "_notes.txt";
    private final String filePath = "/Users/mldubbelaar/Desktop/test/"
            //            + "piet"
            + userName
            + "_notes.txt";

//    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
//            throws ServletException, IOException {
//        LoginServlet session = (LoginServlet) request.getSession().getAttribute("user");
//            userName = session.getInitParameter("username");
//            System.out.println(userName);
//        System.out.println(session);
//    }
//        response.setContentType("text/html;charset=UTF-8"); 
//        String user = request.getParameter("username");
//        HttpSession session = request.getSession();
//        if(session.isNew()){
//            if(user.equals("")){
//                request.setAttribute("error", "An error had occured");  
//            }   
//        }else{
//            session.setAttribute("user", user);
//        }
//        
//
//        RequestDispatcher view = request.getRequestDispatcher("html/assignmentsMasterClassNHanzexperience/assignment1.jsp");
//        view.forward(request, response);

//                HttpSession session = request.getSession();
//                //Calls the script that checks the file
//                ValidateScript checkScript = new ValidateScript();
//                checkScript.start(filePath);
//                
//                //gets an number back as result. The number indicates how many correct answers the program found in the user file
//                int result = checkScript.getResult();
//                String resultContent = checkScript.getResultContent();
//                session.setAttribute("resultContent", resultContent);
//                session.setAttribute("result", result);
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
        File file = new File(filePath);
        GetNoteText getNoteText = new GetNoteText();
        String savedNotes = getNoteText.getSavedNotes(file);
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
//        HttpSession session = request.getSession();
        String notes = request.getParameter("notes");
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
