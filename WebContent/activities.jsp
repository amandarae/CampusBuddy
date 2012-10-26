<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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


	<div class="span9 pull-left">
		<%@ include file="/WEB-INF/partials/_activities.jsp"%>
    </div>
      
      <%@ include file="/WEB-INF/partials/_sidebar.jsp"%>