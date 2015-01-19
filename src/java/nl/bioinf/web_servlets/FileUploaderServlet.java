/**
 *
 * @author jwlgoh
 */
package nl.bioinf.web_servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import nl.bioinf.ValidateScripts.ValidateScript;


import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * A Java servlet that handles file upload from client.
 *
 */
public class FileUploaderServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    // constructs the directory path to store upload file
    // this path is relative to application's directory
    
//    private static final String uploadPath = "/commons/Themas/Thema10/fileSaver"; // Path for at school
    private static final String uploadPath = "C:\\Users\\Juliana\\Documents\\test"; //Path for windows (change to the path where the file should be written)


    /**
     * Upon receiving file upload submission, parses the request to read upload
     * data and saves the file on disk.
     *
     * @param request
     * @param response
     * @throws javax.servlet.ServletException
     * @throws java.io.IOException
     */
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // checks if the request actually contains upload file
        if (!ServletFileUpload.isMultipartContent(request)) {
            // if not, we stop here
            PrintWriter writer = response.getWriter();
            writer.println("Error: Form must has enctype=multipart/form-data.");
            writer.flush();
            return;
        }

        // configures upload settings
        DiskFileItemFactory factory = new DiskFileItemFactory();

        // sets temporary location to store files
        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

        ServletFileUpload upload = new ServletFileUpload(factory);

        
        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            String filePath = "";
            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields in this case the file
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        filePath = uploadPath + File.separator + fileName;

                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);

                    }

                }
                
                HttpSession session = request.getSession();
                
                //Calls the script that checks the file
                ValidateScript checkScript = new ValidateScript();
                checkScript.start(filePath);
                
                //gets an number back as result. The number indicates how many correct answers the program found in the user file
                int result = checkScript.result();
                String resultContent = checkScript.resultContent();
                session.setAttribute("resultContent", resultContent);
                
                
                
            

            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
        }
        // redirects client to page
        RequestDispatcher view = request.getRequestDispatcher("/html/assignmentsMasterClassNHanzexperience/assignment1bc.jsp");
        view.forward(request, response);
    }
}
