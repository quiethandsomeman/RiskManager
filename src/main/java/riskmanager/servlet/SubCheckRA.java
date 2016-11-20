package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RiskPlanDAO;
import model.RiskPlan;

/**
 * Servlet implementation class SubCheckRA
 */
public class SubCheckRA extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static String username; 
    
    RiskPlanDAO risdao = new RiskPlanDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCheckRA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username=request.getParameter("username");
		ArrayList<RiskPlan> planlist = risdao.getAllPlanByUsername(username);
		request.setAttribute("username", username);
		request.setAttribute("riskplan", planlist);
		request.getRequestDispatcher("RAlist.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
