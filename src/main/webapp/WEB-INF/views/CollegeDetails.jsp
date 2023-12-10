<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>
<%
	College collegeDetails = new College();
	int college_id = Integer.parseInt(request.getParameter ("college_id"));
	HashMap Values =  collegeDetails.getCollegeDetails(college_id);	
%>
<script>
    function openWin(url)
    {
        location.href = url;
    }
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <% if(request.getParameter("msg") != null) { %>
		<div class="msg"><%=request.getParameter("msg") %></div>
	  <% } %>
      <!-- main body --> 
      <!-- ################################################################################################ -->
      <div class="group btmspace-30">
        <!-- Middle Column -->
        <div class="one_half comments" style="width:68%"> 
          <!-- ################################################################################################ -->
          <h2>College Name : <%=Values.get("college_name")%></h2>
          <ul class="nospace listing" style="padding:1px 1px; margin:1px 1px">
            <li class="clear" style="padding:1px 1px; margin:1px 1px">
              <div class="imgl borderedbox"><img src="collegeImages/<% out.print(Values.get("college_image")); %>" style="height:80px; width:80px;"></div>
              <p class="nospace btmspace-15"><a href="#"><%=Values.get("college_name")%></a></p>
              <p><%=Values.get("college_description")%></p>
            </li>
          </ul>
          <!-- ################################################################################################ --> 
          <table>
              <tr>
                  <th>College Name</th>
                  <td><%=Values.get("college_name")%></td>
              </tr>
              <tr>
                  <th>College City</th>
                  <td><%=Values.get("city_name")%></td>
              </tr>
              <tr>
                  <th>College State</th>
                  <td><%=Values.get("state_name")%></td>
              </tr>
              <tr>
                  <th>College Contact</th>
                  <td><%=Values.get("college_mobile")%></td>
              </tr>
              <tr>
                  <th>College Email</th>
                  <td><%=Values.get("college_email")%></td>
              </tr>
              <tr>
                  <th>College Website</th>
                  <td><%=Values.get("college_website")%></td>
              </tr>
              <tr style="background-color:#ffffff">
                <td colspan="2">
                    <b><u>College Description : </u></b><br /><br />
                    <%=Values.get("college_description")%>
                </td>
              </tr>
          </table>
        </div>
        <!-- / Middle Column --> 
        <!-- / main body -->
       <div style="float: right">
        	<div><img src="images/save_1.jpg" style="width: 250px"></div><br>
        	<div><img src="images/save_2.jpg" style="width: 250px"></div>
        </div>
      </div>
      
      <div class="clear"></div>
    </main>
  </div>
</div>
<%@ include file="includes/footer.jsp" %>

