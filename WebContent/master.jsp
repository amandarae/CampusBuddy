<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
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
		body, form{
			height: 100%;
			min-height: 600px;
			position: relative;
			height: auto !important;
		}
		form{
			padding-bottom: 60px;
		}
		[class*="span"], well{
			margin-left: 0;
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
		.content{
			min-height: 100%;
			position: relative;
			height: auto !important;
		}
		.footer{
			bottom: 0;
			width: 980px;
			font-size: 11px;
			color: lightblue;
			position: absolute;
			border-top: 1px solid #e3e3e3
		}
	</style>
	<title>CampusBuddy - Buddy Up @ George Brown College</title>
</head>
<body>
     <%
        String embeddedPageName = request.getParameter("embeddedPageName");
        String submitPageName = request.getParameter("submitPageName");
      %>
      <form action="<%= submitPageName %>" method="POST">
	     
	    <div class="navbar navbar-inner">
		   	<ul class="nav">
	           <li id="home"><a href="home" class="brand">CampusBuddy</a></li>
	           <li id="activities"><a href="home?activities=live">Current Activities</a></li>
	           <li id="completed"><a href="home?activities=completed">Completed Activities</a></li>
	           <li class="dropdown pull-right">
                  <a id="title" class="dropdown-toggle" data-toggle="dropdown"><strong> ${name} Dashboard</strong> <b class="caret"></b></a>
                  <ul class="dropdown-menu pull-right">
                  	<li id="create_activity"><a href="home?activities=create">Create an Activity</a></li>
                    <li id="user_activities"><a href="home?user=activities">Your Activities</a></li>
                    <li id="user_buddies"><a href="home?user=buddies">Your Buddies</a></li>
                  </ul>
               </li>
		    </ul>
		</div>
		
         <jsp:include page="<%=embeddedPageName%>">
         	<jsp:param name="fromMasterPage" value="true"/>
         </jsp:include>
		
		
		<div class="clear"></div>
		<div class="footer">
			<span class="pull-left">CampusBuddy &#169; 2012, amanda rae</span>
			<span class="pull-right">created for George Brown College</span>
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