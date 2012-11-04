package ca.arae.campusbuddy;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.catalina.core.ApplicationContext;
import org.apache.catalina.loader.WebappClassLoader;


/**
 * Servlet implementation class ActivitiesServlet
 */
@WebServlet({ "/ActivitiesServlet", "/home"})
public class ActivitiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public ActivitiesServlet() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String page = null;
		String home = "home.jsp"; 
		String create = "create_activity.jsp";
		String live = "activities.jsp"; 
		String complete = "completed.jsp";
		
		List<Activities> activities = ActivityDataAccess.fetchActivities("?$filter=(completed%20eq%20false)");
		List<Activities> cActivities = ActivityDataAccess.fetchActivities("?$filter=(completed%20eq%20true)");

		if( request.getParameter("activities") != null){
			String param = request.getParameter("activities");
			if(param.equals("live")){
				request.setAttribute("activities",activities);
				page = live;
			}else if(param.equals("completed")){
				request.setAttribute("cActivities",cActivities);
				page = complete;
			}else if(param.equals("create")){
				page = create;
			}
		}else{ 
			String name = "Your";
			ServletContext app = this.getServletContext();
			if(request.getParameter("name") != null && !request.getParameter("name").equals("")){
				//skip sign in for now and assign user name to app-wide variable
				name = request.getParameter("name")+ "'s ";
			}
			app.setAttribute("name", name);
			request.setAttribute("activities",activities);
			request.setAttribute("cActivities",cActivities);
			page = home;
		}
		RequestDispatcher disp = request.getRequestDispatcher(page);
		disp.forward(request, response);
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
