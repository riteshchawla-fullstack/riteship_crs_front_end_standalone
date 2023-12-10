<%@ page import= "java.util.*" %>
<%@ page import="com.riteship.campus.recruitment.systems.application.entities.Student" %>

<%
	Student student = new Student();
	String emp_id = "0";
	if(request.getParameter("act").equals("login_status"))
	{
		if(session.getAttribute("student_id") == null) {
			response.sendRedirect("redirectToStudentLogin?msg=Login to continue !!!.");
		}
	}
	
	if((request.getParameter("act")).equals("Save"))
	{
		HashMap results = new HashMap();
		
		results.put("student_name",request.getParameter("student_name"));
		results.put("student_mobile",request.getParameter("student_mobile"));
		results.put("student_email",request.getParameter("student_email"));
		results.put("student_password",request.getParameter("student_password"));
		results.put("student_address",request.getParameter("student_address"));
		results.put("student_city",request.getParameter("student_city"));
		results.put("student_state",request.getParameter("student_state"));
		results.put("student_pincode",request.getParameter("student_pincode"));	
		results.put("student_id",request.getParameter("student_id"));			
		results.put("student_high_college",request.getParameter("student_high_college"));
		results.put("student_high_start",request.getParameter("student_high_start"));
		results.put("student_high_pass",request.getParameter("student_high_pass"));
		results.put("student_high_subject",request.getParameter("student_high_subject"));
		results.put("student_high_persantage",request.getParameter("student_high_persantage"));
		results.put("student_inter_college",request.getParameter("student_inter_college"));
		results.put("student_inter_start",request.getParameter("student_inter_start"));
		results.put("student_inter_pass",request.getParameter("student_inter_pass"));	
		results.put("student_inter_subject",request.getParameter("student_inter_subject"));
		results.put("student_inter_persantage",request.getParameter("student_inter_persantage"));
		results.put("student_graduate_college",request.getParameter("student_graduate_college"));
		results.put("student_graduate_start",request.getParameter("student_graduate_start"));
		results.put("student_graduate_pass",request.getParameter("student_graduate_pass"));
		results.put("student_graduate_subject",request.getParameter("student_graduate_subject"));
		results.put("student_graduate_persantage",request.getParameter("student_graduate_persantage"));
		results.put("student_pg_college",request.getParameter("student_pg_college"));
		results.put("student_pg_start",request.getParameter("student_pg_start"));	
		results.put("student_pg_pass",request.getParameter("student_pg_pass"));
		results.put("student_pg_subject",request.getParameter("student_pg_subject"));
		results.put("student_pg_persantage",request.getParameter("student_pg_persantage"));			
		
						
		if((request.getParameter("student_id")).equals(""))
		{
			out.println(student.saveStudent(results));
			response.sendRedirect("redirectToStudentLogin?msg=You have registered successfully. Login to your account !!!!");
		}
		else
		{
			results.put("student_id",request.getParameter("student_id"));
			out.println(student.updateStudent(results));
			
			if(request.getParameter("student_id").equals(session.getAttribute("student_id")))
			{
				response.sendRedirect("redirectToStudentLogin?student_id="+session.getAttribute("student_id")+"&msg=Account Updated Successfully");
			}
			else
			{
				response.sendRedirect("../report-student?msg=Student Updated Successfully");
			}
		}			
	}
	if((request.getParameter("act")).equals("chk_login"))
	{
		if(student.checkLogin(request.getParameter("login_user"),request.getParameter("login_password")))
		{
			HashMap Values =  student.getLoginDetails(request.getParameter("login_user"),request.getParameter("login_password"));
			
			session.setAttribute("student_id",Values.get("student_id"));
			session.setAttribute("login_id",Values.get("student_id"));
			session.setAttribute("student_name",Values.get("student_name"));
			session.setAttribute("login_level","4");
			session.setAttribute("login_name",Values.get("student_name"));
			if(session.getAttribute("from_shipping") == null) {
				response.sendRedirect("../login-home?msg=You are login successfully.");
				
			} else {
				session.setAttribute("from_shipping",null);
				response.sendRedirect("../checkout");
			}
		}
		else
		{
			response.sendRedirect("../student-login?msg=Invalid User/Password. Please try again.........");			
		}
	}
	if((request.getParameter("act")).equals("logout"))
	{
		session.setAttribute("login_id",null);
		session.setAttribute("login_level",null);
		session.setAttribute("student_id",null);
		session.setAttribute("student_name",null);
		response.sendRedirect("../student-login?msg=You are logout successfully......");			
	}
%>
