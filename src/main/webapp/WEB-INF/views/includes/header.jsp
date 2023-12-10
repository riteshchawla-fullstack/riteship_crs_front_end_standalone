<html>
<head>
<title>Campus Recruitment System</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-1.10.2.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.validate.js"></script>
<style>
.ui-datepicker {
	font-family: "Trebuchet MS", "Helvetica", "Arial",  "Verdana", "sans-serif";
	font-size: 12px;
}
.ui-datepicker select.ui-datepicker-month, .ui-datepicker select.ui-datepicker-year {
	float:left;
}
</style>
<script>
jQuery('document').ready(function() {
	jQuery("#Form").validate();
});
</script>
</head>
<body id="top">
<div class="wrapper row0">
  <div id="topbar" class="clear"> 
    <nav>
      <ul>
		<% if(session.getAttribute("login_id")!=null) { %>
		<li>Welcome <% out.print(session.getAttribute("login_name")); %></li>
        <li><a href="model/login?act=logout">Logout</a></li>
		<% } else { %>
		<li><a href="index">Home</a></li>
        <li><a href="about">About Us</a></li>
        <li><a href="contact-us">Contact Us</a></li>
		<li><a href="login?title=Adminstrator">Admin Login</a></li>
		<% } %>
      </ul>
    </nav>
  </div>
</div>
<div class="wrapper row1">
  <header id="header" class="clear"> 
    <div id="logo" class="fl_left">
       <div style="float:left; margin-top:-11px;"><h1 style="font-size:36px;"><a href="index">Campus Recruitment System</a></h1>
      <p style="color:#ffffff">A complete solution for managing Vacancies, Placements, Colleges and Students</p>
      </div>
    </div>
  </header>
</div>
<div class="wrapper row2">
  <div class="rounded">
    <nav id="mainav" class="clear"> 
      <ul class="clear">
        <li class="active"><a href="index">Home</a></li>        
        <!-- Menu System for Super Admin Login -->
        <% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>
		<!-- Menu System for Super Admin Login -->
		<li><a href="Jobs?company_id=0">All Jobs</a></li>
		<li><a href="#" class="drop" >Add New</a>
         <ul>
            <li><a href="job?job_id=0">Add Job</a></li>
            <li><a href="college?college_id=0">Add College</a></li>
          </ul>
        </li>
		<li><a href="#" class="drop" >Reports</a>
          <ul>
            <li><a href="report-job">Job Report</a></li>
            <li><a href="report-college">College Report</a></li>
          </ul>
        </li>
        <li><a href="change-password">Change Password</a></li>
        <li><a href="model/login?act=logout">Logout</a></li>
		<% } %>
		<!-- End of the Super Admin Menu Section -->
		
	
		<% if(session.getAttribute("login_level") == null) { %>
      <li><a href="about">About Us</a></li>
      <li><a href="Colleges?company_id=0">All Colleges</a></li>
			<li><a href="Jobs?company_id=0">All Jobs</a></li>
			<li><a href="login-page">Login</a></li>      
			<li><a href="contact-us">Contact Us</a></li>
		<% } %>
      </ul>
    </nav>
  </div>
</div>
