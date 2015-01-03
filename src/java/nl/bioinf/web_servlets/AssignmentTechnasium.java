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
    protected void doPost(final HttpServletRequest request,
            final HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        String notes = request.getParameter("notes");
        //Logger.getLogger(AssignmentTechnasium.class.getName()).log(
        //Level.INFO, "****" + notes);
        String userName = "piet";
        //request.getSession().getAttribute("user_name");

        //SAVE IN TEMP FILE
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
     * saveAsTemp will be called by the doPost
     *
     * @param notes are the notes given
     * @param userName is the name of the person who wants te save the notes.
     * @return true or false
     * @throws IOException
     */
    private boolean saveAsTemp(final String notes, final String userName)
            throws IOException {
        String path = "/Users/mldubbelaar/Desktop/test/";
        String prefix = userName + "_notes";
        String suffix = ".txt";

        try {

            String tempFile = path + prefix + suffix;
           // System.out.println("$$$$$$$$$" + tempFile);

            try (PrintWriter writer = new PrintWriter(tempFile, "UTF-8")) {
                writer.println(notes);
                writer.close();
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return true;
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
