 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.well > thead > tr > th > h3{
		margin: 0;
		padding: 0;
		text-align: center;
		background: #D9EDF7;
		border-bottom: 1px solid #e3e3e3;
	}
	.well > thead > tr > th > h3 > a{
		color: #000;
	}
	.well > tbody > tr > td{
		padding: 15px;
		border-bottom: 1px solid #e3e3e3;
	}

</style>

    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="home.jsp"/>
                    <jsp:param name="submitPageName" value="ActivitiesServlet" />
                  </jsp:forward>
                <%
           }
      %>
      <div class="span9 pull-left">
      
	      <div class="alert alert-info">
	        <h2>Welcome to CampusBuddy!</h2>
	        <h4> Here's what's going on in the community:</h4>
	       </div>
	       
	     <div class="span4 pull-left">
	     	<%@ include file="/WEB-INF/partials/_activities.jsp"%>
	     </div>
	      
	     <div class="span4 pull-right">
	 		<%@ include file="/WEB-INF/partials/_cActivities.jsp"%>
	     </div>
      
      </div>
      
      <%@ include file="/WEB-INF/partials/_sidebar.jsp"%>
