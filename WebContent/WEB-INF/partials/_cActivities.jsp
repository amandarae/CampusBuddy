<table class="well">
  	<thead><tr><th><h3><a href="home?activities=completed">Completed Activities</a></h3></th></tr></thead>
	  	<tbody>
		  	<c:forEach var="cActivity" items="${cActivities}">
		 	    <tr>
		 			<td>${cActivity.title}</td>
		    	</tr>
			</c:forEach>
	    </tbody>
    </table>