package ca.arae.campusbuddy;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ActivityServlet
 */
@WebServlet({"/ActivityServlet", "/activity"})
public class ActivityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ActivityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Activities> activity;
		if( request.getParameter("id") != null){
			String id = request.getParameter("id");
			String param = "?$filter=(id%20eq%20" + id + ")";
			activity = ActivityDataAccess.fetchActivities(param);
			request.setAttribute("activity",activity.get(0));
			RequestDispatcher disp = request.getRequestDispatcher("activity.jsp");
			disp.forward(request, response);
		}else{
			response.sendRedirect("home?activities=live");
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//create an activity
		String[] params = request.getParameterValues("activity");
		if(ActivityDataAccess.saveActivity(params).equals("SUCCESS")){
			response.sendRedirect("home?activities=live");
		}else{
			response.sendRedirect("home?activities=create");
		}
		
	}
}
