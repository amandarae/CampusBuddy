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
	.center{
		margin: 0 20px;
	}
</style>
    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="user_activities.jsp"/>
                  </jsp:forward>
                <%
           }
      %>
      <div class="alert alert-success">
		     <h4>Your Activities</h4>
		   </div>
	<div class="center span12">
      	<table class="well span12">
      	<thead><tr><th colspan="3"><h3>Your Activities</h3></th></tr></thead>
      	<tbody>
      	    <tr>
      			<td><a href="activity.jsp">Aide moi en francais!</a></td>

      		<td>Status:<strong> Current</strong></td>
      		<td><a class="btn btn-warning">Close Activity</a>
      		</tr>

      	</tbody>
      </table>
      </div>
       <a class="btn btn-danger space" href="create_activity.jsp">Create a New Activity</a>
      
    <script>
		$(document).ready(function() {	
			$('.nav > li.dropdown').addClass('active');
		});
	</script>
