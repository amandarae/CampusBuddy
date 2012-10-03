<style>
	table > thead > tr > th > h3{
		margin: 0;
		padding: 0;
		text-align: center;
		background: #D9EDF7;
		border-bottom: 1px solid #e3e3e3;
	}
	table > tbody > tr > td{
		padding: 15px;
		border-bottom: 1px solid #e3e3e3;
	}
</style>

    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="activities.jsp"/>
                  </jsp:forward>
                <%
           }
      %>


	<table class="well span9 pull-left">
      	<thead><tr><th><h3>Latest Activities</h3></th></tr></thead>
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
      
      <%@ include file="/WEB-INF/partials/_sidebar.jsp"%>