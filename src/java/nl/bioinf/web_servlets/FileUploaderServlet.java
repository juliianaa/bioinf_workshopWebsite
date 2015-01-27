/**
 *
 * @author jwlgoh/ aroeters
 */
package nl.bioinf.web_servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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

    private static final String uploadPath = "/commons/Themas/Thema10/fileSaver/"; // Path to temporary files
    private String filePath;
    private File storeFile;


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


        // Configure a repository (to ensure a secure temp location is used)
        ServletContext servletContext = this.getServletConfig().getServletContext();
        File repository = (File) servletContext.getAttribute("javax.servlet.context.tempdir");
        factory.setRepository(repository);


        // Create a new file upload handler
        ServletFileUpload upload = new ServletFileUpload(factory);



        // sets temporary location to store files
//        factory.setRepository(new File(System.getProperty("java.io.tmpdir")));

//        ServletFileUpload upload = new ServletFileUpload(factory);


        // creates the directory if it does not exist
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) {
            uploadDir.mkdir();
        }

        try {
            // parses the request's content to extract file data
            @SuppressWarnings("unchecked")
            List<FileItem> formItems = upload.parseRequest(request);
            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields in this case the file
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        long millis = System.currentTimeMillis();

                        filePath = uploadPath + File.separator + millis + fileName;

                        storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);
                    }
                }

                //Calls the script that checks the file
                ValidateScript checkScript = new ValidateScript();
                checkScript.start(filePath);

                //gets an number back as result. The number indicates how many correct answers the program found in the user file
                int result = checkScript.getResult();
                String resultMessage = checkScript.getResultContent();
                
                //delete file afterwards
                if(!storeFile.delete()){
                    request.setAttribute("message",
                            "There was an error: file could not be deleted");
                } else {
                
                    //If size is not the same, this will then be shown in the jsp
                    request.setAttribute("resultMessage", resultMessage);
                    //the result
                    request.setAttribute("result", result);
                    // redirects client to page
                    RequestDispatcher view = request.getRequestDispatcher("/html/assignmentsMasterClassNHanzexperience/assignment1bc.jsp");
                    view.forward(request, response);
                }


            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
        }

        //delete file afterwards
        if(!storeFile.delete()){
            request.setAttribute("message",
                    "There was an error: file could not be deleted");
        } else {
            // redirects client to page
            RequestDispatcher view = request.getRequestDispatcher("/html/assignmentsMasterClassNHanzexperience/assignment1bc.jsp");
            view.forward(request, response);
        }

    }

}
