/**
 *
 * @author jwlgoh
 */
package nl.bioinf.web_servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

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

    // location to store file uploaded
    // constructs the directory path to store upload file
    // this path is relative to application's directory
//    private static final String uploadPath = "/commons/Themas/Thema10/Deelopdracht5_Mar_Juul_Dyl/upload";
    private static final String uploadPath = "C:\\Users\\Juliana\\Documents\\test";


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
//            String ploidy = "";
            if (formItems != null && formItems.size() > 0) {
                // iterates over form's fields
                for (FileItem item : formItems) {
                    // processes only fields that are not form fields
                    if (!item.isFormField()) {
                        String fileName = new File(item.getName()).getName();
                        filePath = uploadPath + File.separator + fileName;

                        File storeFile = new File(filePath);

                        // saves the file on disk
                        item.write(storeFile);

                    }//process only form fields like text
//                    if (item.isFormField()) {
//                        String name = item.getFieldName();
//                        String value = item.getString();
//                        ploidy = value;
//                        request.setAttribute("ploidy", ploidy);
//                    }

                }
                
                ValidateScript checkScript = new ValidateScript();
                checkScript.start(filePath);
                
                List<String> content = checkScript.getFileContent();
                
                response.getWriter().println(content);
                
//                response.getWriter().println(filePath);
                
//                HaplotypeFinder haplotypeFinder = new HaplotypeFinder();
//                haplotypeFinder.start(filePath, Integer.parseInt(ploidy), "percentageBased");
//
//                ArrayList<HaplotypeBlock> haploList = haplotypeFinder.getHaplotypeList();
//                request.setAttribute("snpMap", haploList);

            }
        } catch (Exception ex) {
            request.setAttribute("message",
                    "There was an error: " + ex.getMessage());
        }
        // redirects client to message page
//        getServletContext().getRequestDispatcher("/message.jsp").forward(
//                request, response);
    }
}
