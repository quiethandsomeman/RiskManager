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
 * Servlet implementation class AddRiskItem
 */
public class AddRiskItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String username; 
	private static String RAname;
	
	RiskTypeDAO rt=new RiskTypeDAO();  
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddRiskItem() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		username=request.getParameter("username");
		RAname=request.getParameter("RAName");
		ArrayList<RiskType> typelist=new ArrayList<RiskType>();
		typelist=rt.getAllRiskStateByTime("", "");
		request.setAttribute("username", username);
		request.setAttribute("risktypelist", typelist);
		request.setAttribute("RAname", RAname);
		request.getRequestDispatcher("UpdateRA.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
