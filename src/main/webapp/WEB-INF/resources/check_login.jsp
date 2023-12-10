<%

if(session.getAttribute("login_id")==null)
{
	response.sendRedirect("login?msg=Please login first to continue..........");
}
/*
if(session.getAttribute("login_id")!=null)
{
	if((Integer) session.getAttribute("login_id")==0)
	{
		response.sendRedirect("login?msg=Please login first to continue..........");
	}	
}
*/
%>