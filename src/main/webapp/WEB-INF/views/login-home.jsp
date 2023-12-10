<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
	    <div style="width: 70%; float:left; margin-right:30px" id="login-home">
		  <h2>Welcome to Campus Recruitment System</h2>
		  
		
		 <!-- Dashboard For Super Admin Section -->
		 <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
		  <ul>
            <li><a href="job?job_id=0">Add Job</a></li>
            <li><a href="college?college_id=0">Add Colleges</a></li>
            <li><a href="report-employee">System User Report</a></li>
            <li><a href="report-customer">Applicant Report</a></li>
            <li><a href="report-job">Job Report</a></li>
            <li><a href="report-college">College Report</a></li>
			<li><a href="change-password">Change Password</a></li>
			<li><a href="login?act=logout">Logout</a></li>
		  </ul>
		  <% } %>
		  
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
