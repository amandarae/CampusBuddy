<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
	body{
		margin-top: 20px;
	}
	.navbar, #myModal{
		display: none;
	}
	.welcome-list > div.alert{
		width: 60%;
		margin: 20px auto;
		text-align: center;
	}
	.bottom{
		height: 40px;
		text-align: center;
	}
	.bottom > a{
		width: 60%;
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
                    <jsp:param name="embeddedPageName" value ="index.jsp"/>
                    <jsp:param name="submitPageName" value ="home.jsp"/>
                  </jsp:forward>
                <%
           }
      %>
      
      <div class="alert alert-info">
        <h2>Welcome to CampusBuddy!</h2>
       </div>
        <div class="welcome-list">
	        <div class="alert alert-notice">
	        	<h4>Sign Up!</h4>
	        </div>
	         <div class="alert alert-notice">
	        	<h4>Shout out for a buddy!</h4>
	        </div>
	        <div class="alert alert-notice">
	        	<h4>Buddy Up!</h4>
	        </div>
	    </div>
        <div class="alert alert-info bottom">
       	 <a data-toggle="modal" href="#myModal" class="btn btn-primary btn-large">Let's Get Started!</a>
       </div>
 
	 <div class="modal" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="myModalLabel">Sign Up/Sign In</h3>
	  </div>
	  <form action="/home.jsp">
	  	<div class="modal-body">
	  	
		    <label>Name:
				<input type="text" name="name">
			</label>
			<label>Email:
				<input type="text" name="email">
			</label>
			<label>Password:
				<input type="password" name="password">
			</label>
	  	</div>
	  	<div class="modal-footer">
		    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		    <input type="submit" class="btn btn-primary" value="Submit">
	     </div>
	  </form>
	 
	</div>
 
 
</body>
</html>