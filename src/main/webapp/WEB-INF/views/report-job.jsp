<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>

<%
	Job jobDetails = new Job();
	ArrayList allJob = jobDetails.getAllJob(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>Job Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Image</th>
              <th>Company</th>
              <th>Job Title</th>
              <th>Skills</th>
              <th>Type</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allJob.size();i++) 
			{ 
				HashMap JobDetails = new HashMap();
				JobDetails = (HashMap)allJob.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(JobDetails.get("job_id")); %></td>
				  <td>
					<a href="job-details?job_id=<% out.print(JobDetails.get("job_id")); %>">
						<img src="companyImages/<% out.print(JobDetails.get("company_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(JobDetails.get("company_name")); %></td>
				  <td><% out.print(JobDetails.get("job_title")); %></td>
				  <td><% out.print(JobDetails.get("job_skills")); %></td>
				  <td><% out.print(JobDetails.get("jt_title")); %></td>
				  <td> <a href="job?job_id=<% out.print(JobDetails.get("job_id")); %>">Edit</a> </td>
				</tr>
			<%
			}
			%>
			</tbody>
        </table>
        </div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
