package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddRisk
 */
public class AddRisk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRisk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String type=request.getParameter("rtype");
		String description=request.getParameter("rdescription");
		String possibility=request.getParameter("rpossibility");
		String impact=request.getParameter("rimpact");
		String threshold=request.getParameter("rthreshold");
		String username=request.getParameter("rsubmitter");
		String pname=request.getParameter("pname");
		//System.out.println(type+"+"+description);
		String success_url = "SubCheckProject";
		//System.out.println(username+"+"+pname);
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
