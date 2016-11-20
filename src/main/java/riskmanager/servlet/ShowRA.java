package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RiskTypeDAO;
import model.RiskType;

/**
 * Servlet implementation class ShowRA
 */
public class ShowRA extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String username; 
	
	RiskTypeDAO rt=new RiskTypeDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShowRA() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		username=request.getParameter("username");
		ArrayList<RiskType> typelist=new ArrayList<RiskType>();
		typelist=rt.getAllRiskStateByTime("", "");
		request.setAttribute("username", username);
		request.setAttribute("risktypelist", typelist);
		request.getRequestDispatcher("addRAItem.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
