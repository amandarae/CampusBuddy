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
		text-align: center;
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
                    <jsp:param name="embeddedPageName" value="user_buddies.jsp"/>
                  </jsp:forward>
                <%
           }
      %>
      <div class="alert alert-warning">
		     <h4>Your Buddies</h4>
		   </div>
	<div class="center span12">
      	<table class="well span12">
      	<thead><tr><th colspan="3"><h3>Your Buddies</h3></th></tr></thead>
      	<tbody>
      	    <tr>
      			<td><strong>Jenny Chan</strong></td>
      			<td><a href="mailto:jchan5@mail.georgebrown.ca">Email Your Buddy</a></td>
      			<td><a href="activity.jsp">Past Activity</a></td>
      		</tr>
      	</tbody>
      </table>
      </div>
 
    <script>
		$(document).ready(function() {	
			$('.nav > li.dropdown').addClass('active');
		});
	</script>
