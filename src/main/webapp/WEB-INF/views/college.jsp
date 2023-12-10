<%@ include file="includes/header.jsp" %>
<%@ page import= "java.util.*" %>
<%@ page import= "com.riteship.campus.recruitment.systems.application.*" %>
<%@ page import="com.riteship.campus.recruitment.systems.application.entities.College" %>
<%
	College collegeDetails = new College();
	int college_id = Integer.parseInt(request.getParameter ("college_id"));
	HashMap Values =  collegeDetails.getCollegeDetails(college_id);	
%>
<script>
function validImage() {
	var val = $("#college_image").val();
	var id = $("#college_id").val();
	if(id == '' || val != '')
	{
		if(val == '') {
			alert('Choose the College Image');
			return false;
		}
		if (!val.match(/(?:gif|jpg|png|bmp)$/)) {
			// inputted file path is not an image of one of the above types
			alert("inputted file path is not an image!");
			return false;
		}
	}
	return true;
}
</script>
<div class="wrapper row3">
  <div class="rounded">
    <main class="container clear"> 
      <!-- main body --> 
      <div id="comments" style="width: 70%; float:left; margin-right:30px">
      <h2>College Form</h2>
		<form method="post" action="UploadCollege" enctype="multipart/form-data" onsubmit="return validImage()">
          <div class="half_width">
            <label for="email">College Name<span>*</span></label>
            <input type="text" name="college_name" id="college_name" value="<% out.print(Values.get("college_name")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">College Contact Number<span>*</span></label>
            <input type="text" name="college_mobile" id="college_mobile" value="<% out.print(Values.get("college_mobile")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">College Email<span>*</span></label>
            <input type="text" name="college_email" id="college_email" value="<% out.print(Values.get("college_email")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">College Website<span>*</span></label>
            <input type="text" name="college_website" id="college_website" value="<% out.print(Values.get("college_website")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">College Contact Number<span>*</span></label>
            <input type="text" name="college_mobile" id="college_mobile" value="<% out.print(Values.get("college_mobile")); %>" size="22" style="width:300px;" required>
          </div>
          <div class="half_width">
            <label for="email">College Logo<span>*</span></label>
            <input type="file" name="college_image" id="college_image" style="width:300px">
          </div>
           <div class="half_width">
            <label for="email">College City<span>*</span></label>
            <select style="height: 40px; width:300px" name = "college_city" id = "college_city" required>
            	<% out.print(collegeDetails.getCityOption((Integer) Values.get("college_city"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">College State<span>*</span></label>
            <select style="height: 40px; width:300px" name = "college_state" id = "college_state" required>
            	<% out.print(collegeDetails.getStateOption((Integer) Values.get("college_state"))); %>
            </select>
          </div>
          <div style="clear:both">
            <label for="email">College Country<span>*</span></label>
            <select style="height: 40px; width:300px" name = "college_country" id = "college_country" required>
            	<% out.print(collegeDetails.getCountryOption((Integer) Values.get("college_country"))); %>
            </select>
          </div>
          <div class="half_width">
            <label for="email">College Address<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="college_address" required><% out.print(Values.get("college_address")); %></textarea>
          </div> 
          <div class="half_width">
            <label for="email">Description<span>*</span></label>
			<textarea style="width:300px; height:100px;" name="college_description" required><% out.print(Values.get("college_description")); %></textarea>
          </div>
          <% if(!Values.get("college_image").equals("")) { %>
          <div class="half_width">
			<img src="collegeImages/<% out.print(Values.get("college_image")); %>" style="height:100px; width:100px;">
          </div>
          <% } %>
          <div class="block clear"></div>
          <div>
            <input name="submit" type="submit" value="Save College">
            &nbsp;
            <input name="reset" type="reset" value="Reset Form">
          </div>
		  <input type="hidden" name="image_name" value="<% out.print(Values.get("college_image")); %>" />
		  <input type="hidden" name="act" value="Save" />
		  <input type="hidden" name="type_id" value="0" />
		  <input type="hidden" id="college_id" name="college_id" value="<% out.print(Values.get("college_id")); %>"/>
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
