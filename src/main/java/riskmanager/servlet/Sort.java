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
 * Servlet implementation class Sort
 */
public class Sort extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String username;
	private static String choose;
	ArrayList<RiskType> typelist=new ArrayList<RiskType>();
	
	RiskTypeDAO rt=new RiskTypeDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Sort() {
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
		choose=request.getParameter("choose");
		System.out.println("___________"+choose);
		if(choose.equals("most recognized")){
			typelist=rt.getAllRiskDescByIdentified();
		}
		else{
			typelist=rt.getAllRiskDescByWorsen();
		}
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
