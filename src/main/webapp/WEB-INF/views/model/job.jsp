<%@ page import= "com.riteship.campus.recruitment.systems.application.entities.Job" %>
<%@ page import= "java.util.*" %>

<%
	Job jobObj = new Job();
	if((request.getParameter("act")).equals("Apply"))
	{
		jobObj.apply(request.getParameter("job_id"),request.getParameter("customer_id"));
		response.sendRedirect("redirectToJobsDetails?msg=You application for job has been successfully submitted&job_id="+request.getParameter("job_id"));
	}
	if((request.getParameter("act")).equals("Save"))
	{
		HashMap results = new HashMap();
		results.put("job_id",request.getParameter("job_id"));
		results.put("job_title",request.getParameter("job_title"));
		results.put("job_company_id",request.getParameter("job_company_id"));
		results.put("job_skills",request.getParameter("job_skills"));
		results.put("job_post_date",request.getParameter("job_post_date"));
		results.put("job_city",request.getParameter("job_city"));
		results.put("job_description",request.getParameter("job_description"));
		results.put("job_jt_id",request.getParameter("job_jt_id"));
		
		if((request.getParameter("job_id")).equals(""))
		{
			out.println(jobObj.saveJob(results));
			response.sendRedirect("redirectToReportJob?customer_id="+session.getAttribute("customer_id")+"&msg=Job Saved Successfully");
		}
		else
		{
			results.put("job_id",request.getParameter("job_id"));
			out.println(jobObj.updateJob(results));
			response.sendRedirect("redirectToReportJob?customer_id="+session.getAttribute("customer_id")+"&msg=Job Updated Successfully");
		}
	}
%>
