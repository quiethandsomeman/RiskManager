package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TracerDAO;
import model.TraceInfo;

/**
 * Servlet implementation class SubCheckRiskTrap
 */
public class SubCheckRiskTrap extends HttpServlet {
	private static final long serialVersionUID = 1L;
    TracerDAO dao = new TracerDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCheckRiskTrap() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		String riskid = request.getParameter("riskid");
		ArrayList<TraceInfo> tracelist = dao.getTraceListByRid(Integer.parseInt(riskid));
		String success_url="risktrap.jsp";
		request.setAttribute("username", CheckAccount.username);
		request.setAttribute("tracelist", tracelist);
		request.getRequestDispatcher("/jsp/"+success_url).forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
