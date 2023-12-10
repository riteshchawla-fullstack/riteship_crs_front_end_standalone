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
 
@WebServlet("/UploadCompany")
@MultipartConfig(fileSizeThreshold=1024*1024*2, // 2MB
                 maxFileSize=1024*1024*10,      // 10MB
                 maxRequestSize=1024*1024*50)   // 50MB
public class UploadCompany extends HttpServlet {
    private static final String SAVE_DIR = "companyImages";

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
        part = request.getPart("company_image");
        String fileName = extractFileName(part);
        if(!fileName.equals("")) {
			fileName = unixTime+"_"+extractFileName(part);
			part.write(savePath + File.separator + fileName);
		} else {
			fileName = request.getParameter("image_name");
		}
		//// Upload File Complete///
		
		/////Save the Company Details /////
		String emp_id = "0";
		if((request.getParameter("act")).equals("Save"))
		{
			HashMap results = new HashMap();

			results.put("company_name",request.getParameter("company_name"));
			results.put("company_city",request.getParameter("company_city"));
			results.put("company_state",request.getParameter("company_state"));
			results.put("company_country",request.getParameter("company_country"));
			results.put("company_mobile",request.getParameter("company_mobile"));
			results.put("company_email",request.getParameter("company_email"));
			results.put("company_address",request.getParameter("company_address"));
			results.put("company_id",request.getParameter("company_id"));
			results.put("company_description",request.getParameter("company_description"));
			results.put("company_website",request.getParameter("company_website"));
			results.put("company_image",fileName);
			results.put("company_password",request.getParameter("company_password"));
					
			if((request.getParameter("company_id")).equals(""))
			{
				databaseOperationsBean.saveCompany(results);
				request.setAttribute("message", "Your account has been registered successfully. Login to your account !!!");
				getServletContext().getRequestDispatcher("/company-login.jsp").forward(request, response);
			}
			else
			{
				results.put("company_id",request.getParameter("company_id"));
				databaseOperationsBean.updateCompany(results);
				
				if(request.getParameter("company_id").equals(request.getParameter("company_session_id")))
				{
					request.setAttribute("message", "Account Updated Successfully !!!");
					request.setAttribute("company_id", request.getParameter("company_session_id"));
					getServletContext().getRequestDispatcher("/company.jsp?company_id="+request.getParameter("company_id")).forward(request, response);
				}
				else
				{
					request.setAttribute("message", "Company Updated Successfully !!!!");
					getServletContext().getRequestDispatcher("/report-company.jsp").forward(request, response);
				}
					
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

	public RiteShipDatabaseOperationsBean getDatabaseOperationsBean() {
		return databaseOperationsBean;
	}

	public void setDatabaseOperationsBean(RiteShipDatabaseOperationsBean databaseOperationsBean) {
		this.databaseOperationsBean = databaseOperationsBean;
	}
}
