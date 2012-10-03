
<style>
	.control-label{
		font-size: 18px;
		line-height: 18px;
	}
	.controls > input, textarea{
		height: auto;
		font-size: 16px;
		line-height: 16px;
	}
	.btn{
		margin-top: 20px;
	}
	.btn-danger{
		margin-left: 80px;
	}
</style>


    <%
           if (request.getParameter("fromMasterPage") == null)
           {
                %>
                  <jsp:forward page="master.jsp">
                    <jsp:param name="embeddedPageName" value="create_activity.jsp"/>
                    <jsp:param name="submitPageName" value="user_activities.jsp" />
                  </jsp:forward>
                <%
           }
      %>
      
      <div class="alert alert-danger">
		 <h4>Create an Activity</h4>
	  </div>
	  
	  <form class="form-horizontal">
	   <label class="control-label" for="selectCampus">Select Your Campus</label>
    	<div class="controls">
	    	<select id="selectCampus">
			  <option>St. James</option>
			  <option>Casa Loma</option>
			  <option>Waterfront</option>
			  <option>Doesn't matter</option>
			</select>
		</div>
	  <label class="control-label" for="inputTitle">Activity Title</label>
    	<div class="controls">
      		<input type="text" id="inputTitle" placeholder="Tagline to get buddies' attention" class="input-xxlarge">
    	</div>
      <label class="control-label" for="inputDesc">Description</label>
    	<div class="controls">
      		<textarea id="inputDesc" placeholder="What do you want to do?" class="input-xxlarge" rows="7"></textarea>
    	</div>
    	
    	<label class="control-label" for="selectLang">Your Primary Language</label>
    	<div class="controls">
	    	<select id="selectLang">
			  <option>English</option>
			  <option>Mandarin</option>
			  <option>Japanese</option>
			  <option>Korean</option>
			  <option>French</option>
			  <option>Spanish</option>
			  <option>American Sign Language (ASL)</option>
			  <option>Other</option>
			</select>
		</div>
		
		<label class="control-label" for="selectBLang">Buddy's Primary Language</label>
    	<div class="controls">
	    	<select id="selectBLang">
			  <option>English</option>
			  <option>Mandarin</option>
			  <option>Japanese</option>
			  <option>Korean</option>
			  <option>French</option>
			  <option>Spanish</option>
			  <option>American Sign Language (ASL)</option>
			  <option>Other</option>
			</select>
		</div>
		
		<input type="reset" value="Clear" class="btn">
		<input type="submit" value="Submit" class="btn btn-danger">
	  </form>
		  
    <script>
		$(document).ready(function() {	
			$('.nav > li.dropdown').addClass('active');
		});
	</script>
