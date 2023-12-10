<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>

<%
	Job jobDetails = new Job();
	int company_id = Integer.parseInt(request.getParameter ("company_id"));
	ArrayList allJob = jobDetails.getAllJob(company_id);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30">
        <!-- Middle Column -->
        <div class="one_half" style="width:68%"> 
          <!-- ################################################################################################ -->
          <h2>Search Job By Companies</h2>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
          <% for(int i=0;i<allJob.size();i++) 
			{ 
				HashMap JobDetails = new HashMap();
				JobDetails = (HashMap)allJob.get(i);
		  %>
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><a href="JobsDetails?job_id=<%=JobDetails.get("job_id")%>"><img src="companyImages/<% out.print(JobDetails.get("company_image")); %>" style="height:80px; width:80px;"></a></div>
              <p class="nospace btmspace-15"><a href="JobsDetails?job_id=<%=JobDetails.get("job_id")%>"><%=JobDetails.get("job_title")%></a></p>
              <p><%=JobDetails.get("company_description")%></p>
            </li>
           <%
              }
           %>
          </ul>
          <!-- ################################################################################################ --> 
        </div>
        <!-- / Middle Column --> 
         <div style="float: right">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      </div>
      <!-- / main body -->
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>


