
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
                    <jsp:param name="submitPageName" value="" />
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
      	<thead><tr><th><h3><a href="activities.jsp">Latest Activities</a></h3></th></tr></thead>
      	<tbody>
      	    <tr>
      			<td><a href="activity.jsp">Aide moi en francais!</a></td>
      		</tr>
      		<tr>
      			<td>Tutor in english</td>
      		</tr>
      		<tr>
      			<td>Asian AGO Meetup</td>
      		</tr>
      		<tr>
      			<td>GBC three-campus party</td>
      		</tr>
      		<tr>
      			<td>Spanish penpal</td>
      		</tr>
      	</tbody>
      </table>
      
     <table class="well span4 pull-right">
      	<thead><tr><th><h3><a href="completed.jsp">Completed Activities</a></h3></th></tr></thead>
      	<tbody>
      		<tr>
      			<td>Sunday Picnic</td>
      		</tr>
      		<tr>
      			<td>Engineering tutor - help!</td>
      		</tr>
      		<tr>
      			<td>GLBT Outing</td>
      		</tr>
      	</tbody>
      </table>
      </div>
      
      <%@ include file="/WEB-INF/partials/_sidebar.jsp"%>
