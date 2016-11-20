package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ToRiskStateChange
 */
public class ToRiskStateChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ToRiskStateChange() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String username = CheckAccount.username;
		String riskid = request.getParameter("riskid");
		String pid=request.getParameter("pid");
		String pname=request.getParameter("pname");
		String pdescription = request.getParameter("pdescription");
		request.setAttribute("pid", pid);
		request.setAttribute("pname", pname);
		request.setAttribute("pdescription", pdescription);
		request.setAttribute("riskid", riskid);
		request.setAttribute("username", username);
		String success_url="tracerisk.jsp";
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
