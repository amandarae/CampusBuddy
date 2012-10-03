<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
	<script type="text/JavaScript" src="js/bootstrap.js"></script>
	<link rel="stylesheet" href="css/bootstrap.css" type="text/css" />
	<link href='http://fonts.googleapis.com/css?family=Lato' rel='stylesheet' type='text/css'>
	<style>
		body{
			width: 980px;
			margin: 0 auto;
			font-family: 'Lato', sans-serif;
		}
		.nav{
			width: 100%;
		}
		.navbar .nav > li.dropdown.pull-right{
			float: right;
		}
		.navbar .nav > li.active{
			background: #04C;
		}
	</style>
</head>
<body>
     <%
        String embeddedPageName = request.getParameter("embeddedPageName");
        String submitPageName = request.getParameter("submitPageName");
      %>
      <form action="<%= submitPageName %>" method="POST">
	     
	    <div class="navbar navbar-inner">
		   	<ul class="nav">
	           <li id="home"><a href="home.jsp" class="brand">CampusBuddy</a></li>
	           <li id="activities"><a href="activities.jsp">Current Activities</a></li>
	           <li id="completed"><a href="completed.jsp">Completed Activities</a></li>
	           <li class="dropdown pull-right">
                  <a id="title" class="dropdown-toggle" data-toggle="dropdown"><strong>Your Dashboard</strong> <b class="caret"></b></a>
                  <ul class="dropdown-menu pull-right">
                  	<li id="create_activity"><a href="create_activity.jsp">Create an Activity</a></li>
                    <li id="user_activities"><a href="user_activities.jsp">Your Activities</a></li>
                    <li id="user_buddies"><a href="user_buddies.jsp">Your Buddies</a></li>
                  </ul>
               </li>
		    </ul>
		</div>
		
         <jsp:include page="<%=embeddedPageName%>">
         	<jsp:param name="fromMasterPage" value="true"/>
         </jsp:include>

		<div class="footer">
		
		</div>
      </form>
     <script>
		$(document).ready(function() {
			$('li#home, li#activites, li#completed, .dropdown-menu > li').removeClass('active');
			page_name = "<%= embeddedPageName %>".replace('.jsp', '');	
			$('.nav > li#' + page_name + ', .dropdown-menu > li#' + page_name).addClass('active');
		});
	</script>
</body>
</html>