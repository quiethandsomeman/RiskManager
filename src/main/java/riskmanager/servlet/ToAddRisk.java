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
 * Servlet implementation class ToAddRisk
 */
public class ToAddRisk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	RiskTypeDAO typedao = new RiskTypeDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToAddRisk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//String username=request.getParameter("username");
		request.setCharacterEncoding("UTF-8");
		String pname=request.getParameter("pname");
		String pdescription = request.getParameter("pdescription");
		String pid= request.getParameter("pid");
		ArrayList<RiskType> types = typedao.getAllType();
		ArrayList<String> typelist = new ArrayList<String>();
		for(int i = 0;i<types.size();i++){
			typelist.add(types.get(i).getTypename());
		}
		request.setAttribute("username", CheckAccount.username);
		request.setAttribute("pname", pname);
		request.setAttribute("pdescription", pdescription);
		request.setAttribute("pid", pid);
		request.setAttribute("typelist", typelist);
		String success_url = "addriskofsubmitter.jsp";
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
