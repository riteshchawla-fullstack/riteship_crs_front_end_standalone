<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>

<%
	College collegeDetails = new College();
	ArrayList allCollege = collegeDetails.getAllCollege(0);
%>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div class="scrollable">
        <h2>College Report</h2>
		<% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
		<% } %>
        <table>
          <thead>
            <tr>
              <th>ID</th>
              <th>Image</th>
              <th>Name</th>
              <th>Mobile</th>
              <th>Email</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
			<% for(int i=0;i<allCollege.size();i++) 
			{ 
				HashMap CollegeDetails = new HashMap();
				CollegeDetails = (HashMap)allCollege.get(i);
			%>
				<tr>
				  <td style="text-align:center;"><% out.print(CollegeDetails.get("college_id")); %></td>
				  <td>
					<a href="college-details?college_id=<% out.print(CollegeDetails.get("college_id")); %>">
						<img src="collegeImages/<% out.print(CollegeDetails.get("college_image")); %>" style="height:80px; width:80px;">
					</a>
				  </td>
				  <td><% out.print(CollegeDetails.get("college_name")); %></td>
				  <td><% out.print(CollegeDetails.get("college_mobile")); %></td>
				  <td><% out.print(CollegeDetails.get("college_email")); %></td>
				  <td> <a href="college?college_id=<% out.print(CollegeDetails.get("college_id")); %>">Edit</a> </td>
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
