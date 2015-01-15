/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_servlets;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author mldubbelaar
 */
public class AssignmentTechnasium extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(final HttpServletRequest request,
            final HttpServletResponse response) throws
            ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet AssignmentAnsweringServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet AssignmentAnsweringServlet at " +
                    request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        } finally {
            out.close();
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
//        processRequest(request, response);
        String userName = "piet";
        
       // File file = new File("/Users/mldubbelaar/Desktop/test/"+userName+"_notes.txt");
         File file = new File("/homes/mldubbelaar/Desktop/test/"+userName+"_notes.txt");
//        String path = file.getAbsolutePath();
//        String savedNotes = getSavedNotes(file);
//        
         try (PrintWriter pw = response.getWriter()) {
                pw.print(file);
                pw.flush();
         
         
//        if (savedNotes.isEmpty()) {
//            try (PrintWriter pw = response.getWriter()) {
//                pw.print("Er is iets fout gegaan met het ophalen van de notities!\n"
//                        + "Neem contact op met de docent.");
//                pw.flush();
//            }
//        } else {
//             try (PrintWriter pw = response.getWriter()) {
//                pw.print(savedNotes);
//                pw.flush();
//            }
        }
    }

    private String getSavedNotes(File filePath) throws FileNotFoundException, IOException {
        FileReader fr = new FileReader(filePath);
        BufferedReader br = new BufferedReader(fr);
        String textFromNotes = "";
        try {
            StringBuilder sb = new StringBuilder();
            String line = br.readLine();
            while (line != null) {
                sb.append(line);
                sb.append(System.lineSeparator());
                line = br.readLine();
            }
            textFromNotes = sb.toString();
        } finally {
            br.close();
        }

        return textFromNotes;
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
        //processRequest(request, response);
        
        String notes = request.getParameter("notes");
//        Logger.getLogger(AssignmentTechnasium.class.getName()).log(Level.INFO, "****{0}", notes);
        String userName = "piet";
        //request.getSession().getAttribute("user_name");

        /*
        If the function saveAsTemp returns true
        Than the true will be catched so it can be used within myScript.js as an extra check.
        */
        boolean succes = saveAsTemp(notes, userName);
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

    /**
     * saveAsTemp will be called by the doPost.
     * This function writes the notes made by the user in its own file.
     *
     * @param notes are the notes given by the user.
     * @param userName is the name of the user.
     * @return only true if the notes are correctly saved within its file
     * @throws IOException when the notes or userName cannot be found..
     */
    private boolean saveAsTemp(final String notes, final String userName)
            throws IOException {
        /*
        The path is where all the files will be saved
        The file will get the name of the user with the addition of _notes.txt
        .txt has been chosen because this type of file can be overwritten a
        .tmp creates an new file every time a user saves.
        */
//        String path = "/Users/mldubbelaar/Desktop/test/";
        String path = "/homes/mldubbelaar/Desktop/test/";
        String prefix = userName + "_notes";
        String suffix = ".txt";
        boolean fileSaved = false;

        try {
            String tempFile = path + prefix + suffix;
            //System.out.println("$$$$$$$$$" + tempFile);
            try (PrintWriter writer = new PrintWriter(tempFile, "UTF-8")) {
                /*
                The notes which were added on the site are written into the user file.
                An fileSaved will be changed into true.
                */
                writer.println(notes);
                writer.close();
                fileSaved = true;
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return fileSaved;
    }

//            //File tempFile = File.createTempFile(prefix, suffix);
//            File tempFile = File.createTempFile(prefix, suffix, new File(
//                    "/commons/student/2014-2015/Thema10/bioInfWebsite/"));
//            try (Writer output = new BufferedWriter(new OutputStreamWriter(
//                    new FileOutputStream(tempFile), "UTF8"))) {
//                output.append(notes);
//                output.flush();
//            }
//            tempFile.deleteOnExit();
//            return true;
////        } catch (IOException e) {
////            return false;
//        } catch (IOException e) {
//            return false;
//        }
//    }
}
