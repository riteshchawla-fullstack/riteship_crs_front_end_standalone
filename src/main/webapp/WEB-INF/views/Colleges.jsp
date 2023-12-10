<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import="com.riteship.campus.recruitment.systems.application.entities.College" %>

<%
	College collegeDetails = new College();
	ArrayList allCollege = collegeDetails.getAllCollege(0);
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
          <h2>All registered colleges</h2>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
          <% for(int i=0;i<allCollege.size();i++) 
			{ 
				HashMap CollegeDetails = new HashMap();
				CollegeDetails = (HashMap)allCollege.get(i);
		  %>
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><a href="CollegeDetails?college_id=<%=CollegeDetails.get("college_id")%>"><img src="collegeImages/<% out.print(CollegeDetails.get("college_image")); %>" style="height:80px; width:80px;"></a></div>
              <p class="nospace btmspace-15"><a href="CollegeDetails?college_id=<%=CollegeDetails.get("college_id")%>"><%=CollegeDetails.get("college_name")%></a></p>
              <p><%=CollegeDetails.get("college_description")%></p>
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


