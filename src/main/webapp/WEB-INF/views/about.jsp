<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>
<div class="wrapper row3">
  <div class="rounded">
    <% if(request.getParameter("msg") != null) { %>
	<div class="msg"><%=request.getParameter("msg") %></div>
	<% } %>
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px; text-align:justify;">
      <h2>About Campus Recruitment System</h2>
		<p>The major objective of campus recruitment is to identify the talented and qualified professionals before they complete their education. This process reduces the time for an industry to pick the candidates according to their need.It is a cumbersome activity and hence majority of the companies find it difficult to trace the right talent. Many students do not understand the importance of recruitment training that is being imparted, whether it is an aptitude training or soft skills. They show the least interest in this due to various factors viz., projects, assignments or more of activities loaded by the colleges as part of their curriculum thinking that it is not useful. It is the responsibility of the companies training on recruitment to make the students equipped on all aspects of career development along with creating a very good impact in them which makes them feel every minute they spend in the recruitment training session is worth being there and will help them in getting placed in their dream companies.</p>
		<p>A presentation about the company will be made during the pre-recruitment talk. Basically the presentation includes the information like selection procedure, company’s milestones, organizational achievements, candidate scope of improvement within the organization if selected, salary, employment benefits. Usually this presentation will end up with question and answer session, students given chance to ask questions about .</p>
        <p>A common topic is placed before the group and a formal discussion or knowledge sharing is expected by the judge. Purpose of this round is to check communication skills, etiquette of person, listening ability, convincing power, group leadership, leader or follower and many more thing are evaluated on the basis of requirement or the particular intention of organisation or company.It is very important to keep yourself updated with latest news and discussion topics for appearing in GD round.</p>
        </div>
        <div style="float: left">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      <div class="clear"></div>
    </main>
  </div>
</div>
<% if(session.getAttribute("login_level") != null && session.getAttribute("login_level").equals("1")) { %>		
	<script>
		 jQuery('#password_row').hide();
	</script>
<% } %>
<%@ include file="includes/footer.jsp" %>
