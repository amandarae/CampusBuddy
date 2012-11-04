<table class="well">
  	<thead><tr><th><h3><a href="home?activities=live">Latest Activities</a></h3></th></tr></thead>
	  	<tbody>
		  	<c:forEach var="activity" items="${activities}">
		 	    <tr>
		 			<td><a href="<c:url value="activity?id=${activity.id}"/>">${activity.title}</a></td>
		    	</tr>
			</c:forEach>
	    </tbody>
    </table>