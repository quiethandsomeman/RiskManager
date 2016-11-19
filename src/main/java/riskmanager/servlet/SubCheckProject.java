package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SubCheckProject
 */
public class SubCheckProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCheckProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String role=CheckAccount.role;
		String pname=request.getParameter("pname");
		String pdescription="project description la";
		//String username= request.getParameter("username");
		//System.out.println(pname);
		String success_url = "risklistofsubmitter.jsp";
		if(role.equals("sub")){
			
		}else if(role.equals("tra")){
			success_url = "risklistoftracer.jsp";
		}
		request.setAttribute("username", CheckAccount.username);
		request.setAttribute("pname", pname);
		request.setAttribute("pdescription", pdescription);
		request.getRequestDispatcher(success_url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
