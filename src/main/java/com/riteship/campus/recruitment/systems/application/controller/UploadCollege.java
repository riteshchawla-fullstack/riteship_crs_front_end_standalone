package com.riteship.campus.recruitment.systems.application.controller;


import com.riteship.common.apis.components.RiteShipDatabaseOperationsBean;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
 
@WebServlet("/UploadCollege")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UploadCollege extends HttpServlet {
    private static final String SAVE_DIR = "collegeImages";

	private static String driverClassName = "com.mysql.jdbc.Driver";
	private static String databaseUrl = "jdbc:mysql://localhost:3307/riteship_crs_college_microservice?createDatabaseIfNotExist=true&allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC&useLegacyDatetimeCode=false";
	private static String databaseUserName = "root";

	private static String databasePassword = "RiteShip1421#$";

	private static RiteShipDatabaseOperationsBean databaseOperationsBean;

	static {
		databaseOperationsBean = RiteShipDatabaseOperationsBean.getInstance(driverClassName,
				databaseUrl, databaseUserName, databasePassword);
	}
     
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//// Logic for Upload the File ////
        String appPath = request.getServletContext().getRealPath("");
        String savePath = appPath + File.separator + SAVE_DIR;
        File fileSaveDir = new File(savePath);
        if (!fileSaveDir.exists()) {
            fileSaveDir.mkdir();
        }
		long unixTime = System.currentTimeMillis() / 1000L;
	
		Part part;
        part = request.getPart("college_image");
        String fileName = extractFileName(part);
        if(!fileName.equals("")) {
			fileName = unixTime+"_"+extractFileName(part);
			part.write(savePath + File.separator + fileName);
		} else {
			fileName = request.getParameter("image_name");
		}
		//// Upload File Complete///
		
		/////Save the College Details /////
		String emp_id = "0";
		if((request.getParameter("act")).equals("Save"))
		{
			HashMap results = new HashMap();

			results.put("college_name",request.getParameter("college_name"));
			results.put("college_city",request.getParameter("college_city"));
			results.put("college_state",request.getParameter("college_state"));
			results.put("college_country",request.getParameter("college_country"));
			results.put("college_mobile",request.getParameter("college_mobile"));
			results.put("college_email",request.getParameter("college_email"));
			results.put("college_address",request.getParameter("college_address"));
			results.put("college_id",request.getParameter("college_id"));
			results.put("college_description",request.getParameter("college_description"));
			results.put("college_website",request.getParameter("college_website"));
			results.put("college_image",fileName);
					
			if((request.getParameter("college_id")).equals(""))
			{
				databaseOperationsBean.saveCollege(results);
				request.setAttribute("message", "College Saved Successfully !!!!");
				getServletContext().getRequestDispatcher("/report-college.jsp").forward(request, response);
			}
			else
			{
				results.put("college_id",request.getParameter("college_id"));
				databaseOperationsBean.updateCollege(results);
				request.setAttribute("message", "College Updated Successfully !!!!");
				getServletContext().getRequestDispatcher("/report-college.jsp").forward(request, response);
			}
		}
    }
    /**
     * Extracts file name from HTTP header content-disposition
     */
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
    }
}
