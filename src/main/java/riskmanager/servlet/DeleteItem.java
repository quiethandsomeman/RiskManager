package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RiskPlanDAO;
import model.RiskType;

/**
 * Servlet implementation class DeleteItem
 */
public class DeleteItem extends HttpServlet {
	private static final long serialVersionUID = 1L;
     public static String username;
     private static String RAname;
     private static String typename;
     RiskPlanDAO rp=new RiskPlanDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteItem() {
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
		RAname=request.getParameter("RAname");
		typename=request.getParameter("typename");
		int i=rp.deleteRiskType(RAname, typename);
		if(i==1){
			ArrayList<RiskType> typelist=rp.getAllRiskByname(RAname);
			request.setAttribute("typelist", typelist);
			request.setAttribute("username",username);
			request.setAttribute("RAname", RAname);
			request.getRequestDispatcher("RAmanage.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
