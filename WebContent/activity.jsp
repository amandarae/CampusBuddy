
<style>
	.well{
		background-color: #fff;
	}
	h3{
		color: #2F96B4;
		border-bottom: 1px solid #e3e3e3;
	}
	table > tbody > tr > td{
		padding: 15px;
		border-bottom: 1px solid #e3e3e3;
	}
	#buddyUp{
		display: none;
	}
	#buddyUpLabel{
		border: none;
	}
	#buddyUp > .footer{
		display: none;
	}
	.space{
		margin: 20px 0 0;
	}
</style>
<title>CampusBuddy - Buddy Up!</title>
</head>
<body>

    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="activity.jsp"/>
                    <jsp:param name="submitPageName" value="home.jsp" />
                  </jsp:forward>
                <%
           }
      %>


	<div class="well span9">
      	<h3>Aide moi en francais!</h3>
      	<h4>Need a buddy to help with my conversational french weekly! Lunch meetups welcome!</h4>

      	<table>
      		<tr>
      			<td><strong>Campus</strong></td>
      			<td>Casa Loma</td>
      		</tr>
      		<tr>
      			<td><strong>Primary Language</strong></td>
      			<td>English</td>
      		</tr>
      		<tr>
      			<td><strong>Buddy's Language</strong></td>
      			<td>French</td>
      		</tr>
      </table>
       <a class="btn btn-info space" href="#buddyUp" data-toggle="modal">Buddy Up!</a>
      </div>
      
      <div class="modal" id="buddyUp" tabindex="-1" role="dialog" aria-labelledby="buddyUpLabel" aria-hidden="true">
	  <div class="modal-header">
	    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
	    <h3 id="buddyUpLabel">Apply to be a buddy!</h3>
	  </div>
	  	<div class="modal-body">
		    <label>Name:<br>
				<input type="text" name="name" class="input-xlarge">
			</label>
			<label>Briefly describe your interest in this activity:<br>
				<textarea class="textarea input-xlarge" rows="8"></textarea>
			</label>
	  	</div>
	  	<div class="modal-footer">
		    <button class="btn" data-dismiss="modal" aria-hidden="true">Close</button>
		    <input type="submit" class="btn btn-primary" value="Submit">
	     </div>
	     </div>
      <%@ include file="/WEB-INF/partials/_sidebar.jsp"%>
