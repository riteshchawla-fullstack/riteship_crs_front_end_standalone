<%@ page import= "java.util.*" %>
<%@ page import="com.riteship.campus.recruitment.systems.application.entities.Employee" %>

<%
	Employee employee_obj = new Employee();
	if((request.getParameter("act")).equals("Save"))
	{
		HashMap employee_data = new HashMap();
		employee_data.put("employee_id",request.getParameter("employee_id"));
		employee_data.put("employee_user",request.getParameter("employee_user"));
		employee_data.put("employee_password",request.getParameter("employee_password"));
		employee_data.put("employee_level","1");
		employee_data.put("employee_sal",request.getParameter("employee_sal"));
		employee_data.put("employee_first_name",request.getParameter("employee_first_name"));
		employee_data.put("employee_middle_name",request.getParameter("employee_middle_name"));
		employee_data.put("employee_last_name",request.getParameter("employee_last_name"));
		employee_data.put("employee_gender",request.getParameter("employee_gender"));
		employee_data.put("employee_address",request.getParameter("employee_address"));
		employee_data.put("employee_village",request.getParameter("employee_village"));
		employee_data.put("employee_state",request.getParameter("employee_state"));
		employee_data.put("employee_country",request.getParameter("employee_country"));
		employee_data.put("employee_landline",request.getParameter("employee_landline"));
		employee_data.put("employee_mobile",request.getParameter("employee_mobile"));
		employee_data.put("employee_email",request.getParameter("employee_email"));
		employee_data.put("employee_status",request.getParameter("employee_status"));
		employee_data.put("employee_deparment",request.getParameter("employee_deparment"));
		employee_data.put("employee_dob",request.getParameter("employee_dob"));
		employee_data.put("employee_nationalty",request.getParameter("employee_nationalty"));
	
	
		if((request.getParameter("employee_id")).equals(""))
		{
			employee_obj.saveEmployee(employee_data);
			response.sendRedirect("report-employee?msg=Employee Saved Successfully");
		}
		else
		{
			employee_data.put("employee_id",request.getParameter("employee_id"));
			out.print(employee_obj.updateEmployee(employee_data));
			
			if(request.getParameter("employee_id").equals(session.getAttribute("login_emp_id")))
			{
				response.sendRedirect("employee?employee_id="+session.getAttribute("login_emp_id")+"&msg=Account Updated Successfully");
			}
			else
			{
				response.sendRedirect("redirectToReportEmployee?msg=Employee Updated Successfully");
			}
		}
	}
	if((request.getParameter("act")).equals("delete"))
	{
		int employee_id = Integer.parseInt(request.getParameter("employee_id"));
		if(employee_obj.deleteEmployee(employee_id))
			response.sendRedirect("register?msg=Record Deleted Successfully");
		else
			response.sendRedirect("register?msg=Problem in Deletion.");
	}
%>
