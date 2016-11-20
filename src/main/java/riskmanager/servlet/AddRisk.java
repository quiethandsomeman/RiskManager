package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RiskTypeDAO;
import dao.SubmitterDAO;
import model.RiskInfo;

/**
 * Servlet implementation class AddRisk
 */
public class AddRisk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	SubmitterDAO subdao = new SubmitterDAO();
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
		String pdescription=request.getParameter("pdescription");
		String pid=request.getParameter("pid");
		//System.out.println(type+"+"+description);
		String success_url = "SubCheckProject";
		//System.out.println(username+"+"+pname);
		RiskInfo target = new RiskInfo(Integer.parseInt(pid),type,description,
				Integer.parseInt(possibility),Integer.parseInt(impact),threshold,username);
		subdao.SubmitRisk(target);
		request.setAttribute("pname", pname);
		request.setAttribute("pdescription", pdescription);
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
