<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	.well > thead > tr > th > h3{
		margin: 0;
		padding: 0;
		text-align: center;
		background: #D9EDF7;
		border-bottom: 1px solid #e3e3e3;
	}
	.well > tbody > tr > td{
		padding: 15px;
		border-bottom: 1px solid #e3e3e3;
	}
	.span3.pull-right{
		text-align: center;
	}
	.alert > a > .btn {
		margin: 10px 0 0
	}
</style>
<title>CampusBuddy</title>
</head>
<body>

    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="home.jsp"/>
                  </jsp:forward>
                <%
           }
      %>
      <div class="span9 pull-left">
      <div class="alert alert-info">
        <h2>Welcome to CampusBuddy!</h2>
        <h4> Here's what's going on in the community:</h4>
       </div>
       
      <table class="well span4 pull-left">
      	<thead><tr><th><h3>Latest Activities</h3></th></tr></thead>
      	<tbody>
      		<tr>
      			<td>Tutor in english</td>
      		</tr>
      		<tr>
      			<td>Help me learn french</td>
      		</tr>
      		<tr>
      			<td>Asian AGO Meetup</td>
      		</tr>
      	</tbody>
      </table>
      
     <table class="well span4 pull-right">
      	<thead><tr><th><h3>Completed Activities</h3></th></tr></thead>
      	<tbody>
      		<tr>
      			<td>Tutor in english</td>
      		</tr>
      		<tr>
      			<td>Help me learn french</td>
      		</tr>
      		<tr>
      			<td>Asian AGO Meetup</td>
      		</tr>
      	</tbody>
      </table>
      </div>
      
      
      <div class="span3 pull-right">
      
	      <div class="alert alert-danger">
		      <h4>Create an activity!</h4>
		      <a href="create_activity.jsp"><button type="button" class="btn btn-danger">Go!</button></a>
		  </div>

		  <div class="alert alert-success">
		     <h4>Check on your activties!</h4>
		      <a href="user_activies.jsp"><button type="button" class="btn btn-success">Go!</button></a>
		   </div>
		   
		   <div class="alert alert-warning">
		     <h4>Check out your buddies!</h4>
		      <a href="user_buddies.jsp"><button type="button" class="btn btn-warning">Go!</button></a>
		   </div>
	</div>

	  <div class="clear"></div>
</body>
</html>