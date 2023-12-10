<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>
<%
	Job jobDetails = new Job();
	int job_id = Integer.parseInt(request.getParameter ("job_id"));
	HashMap Values =  jobDetails.getJobDetails(job_id);	
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>Job Form</h2>
        <form action="model/job" method="post">
          <div class="half_width">
            <label for="email">Job Title<span>*</span></label>
            <input type="text" name="job_title" id="job_title" value="<% out.print(Values.get("job_title")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">Company Name<span>*</span></label>
            <select style="height: 40px; width:300px" name = "job_company_id" id = "job_company_id" required>
            	<% out.print(jobDetails.getCompanyOption((Integer) Values.get("job_company_id"))); %>
            </select>
          </div>
           <div class="half_width">
            <label for="email">Job City<span>*</span></label>
            <select style="height: 40px; width:300px" name = "job_city" id = "job_city" required>
            	<% out.print(jobDetails.getCityOption((Integer) Values.get("job_city"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">Skill Required<span>*</span></label>
            <input type="text" name="job_skills" id="job_skills" value="<% out.print(Values.get("job_skills")); %>" size="22" style="width:300px;" required>
          </div>
          <div style="clear:both">
            <label for="email">Post Date<span>*</span></label>
            <input type="text" name="job_post_date" id="job_post_date" value="<% out.print(Values.get("job_post_date")); %>" size="22" style="width:300px;" required>
          </div>
          <div style="clear:both">
            <label for="email">Job Type<span>*</span></label>
            <select style="height: 40px; width:300px" name = "job_jt_id" id = "job_jt_id" required>
            	<% out.print(jobDetails.getJobTypeOption((Integer) Values.get("job_jt_id"))); %>
            </select>
          </div>
          
          <div style="clear:both">
            <label for="email">Job Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="job_description" required><% out.print(Values.get("job_description")); %></textarea>
          </div>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save Job">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="job_id" value="<% out.print(Values.get("job_id")); %>"/>
        </form>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>
