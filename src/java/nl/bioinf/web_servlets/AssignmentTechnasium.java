/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nl.bioinf.web_servlets;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.Writer;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
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
    @SuppressWarnings("empty-statement")
    protected void processRequest(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        String notesOnSuspect;

        notesOnSuspect = request.getParameter("notes");
        try {
            File fileDir = new File("/homes/mldubbelaar/Desktop/data.txt");
            //File fileDir = new File("/Users/mldubbelaar/Desktop/data.txt");
            try (Writer output = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(fileDir), "UTF8"))) {
                output.append(notesOnSuspect);
                output.flush();
            }

        } catch (FileNotFoundException e) {
            System.out.println(e);
        }

        //RequestDispatcher view = request.getRequestDispatcher(
        //        "html/technasiumWorkshop.jsp");
        //view.forward(request, response);
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
        //processRequest(request, response);
        //receives AJAX data from form that is supposed to be saved
        String notes = request.getParameter("notes");
        //Logger.getLogger(AssignmentTechnasium.class.getName()).log(Level.INFO, "****" + notes);
        String userName = "piet";
        //request.getSession().getAttribute("user_name");

        //SAVE IN TEMP FILE
        boolean succes = saveAsTemp(notes, userName);
        if (succes == true) {
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

    private boolean saveAsTemp(String notes, String userName)
            throws IOException {
        String prefix = userName + "_notes";
        String suffix = ".tmp";

        // this temporary file remains after the jvm exits
        try {
            List<String> savedNotes = new ArrayList<>();
            String[] files = new File("/commons/student/2014-2015/Thema10/bioInfWebsite/").list();

            boolean fileExists = false;
            String filename = "";
            for (String file : files) {
                if (file.startsWith(prefix)) {
                    fileExists = true;
                    filename = file;
                }
            }
                if (fileExists == true) {
                    try (Writer output = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(filename), "UTF8"))) {
                    output.append(notes);
                    output.flush();}
                    System.out.println("***"+notes);
                } else {
                    File tempFile = File.createTempFile(prefix, suffix, new File(
                            "/commons/student/2014-2015/Thema10/bioInfWebsite/"));
                    try (Writer output = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(tempFile), "UTF8"))) {
                output.append(notes);
                output.flush();}
                    System.out.println("#####" + tempFile);

                }

//            
//            //File tempFile = File.createTempFile(prefix, suffix);
//            File tempFile = File.createTempFile(prefix, suffix, new File(
//                    "/commons/student/2014-2015/Thema10/bioInfWebsite/"));
//            try (Writer output = new BufferedWriter(new OutputStreamWriter(
//                    new FileOutputStream(tempFile), "UTF8"))) {
//                output.append(notes);
//                output.flush();
//            }
//            tempFile.deleteOnExit();
                return true;
//        } catch (IOException e) {
//            return false;
            }catch (IOException e) {
            return false;
        }
        }

    }
