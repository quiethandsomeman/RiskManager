package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.SubmitterDAO;
import model.RiskInfo;

/**
 * Servlet implementation class SubCheckProject
 */
public class SubCheckProject extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    SubmitterDAO dao = new SubmitterDAO();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubCheckProject() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		String role=CheckAccount.role;
		String pname=request.getParameter("pname");
		String pdescription=request.getParameter("pdescription");
		String pid=request.getParameter("pid");
		System.out.println("########"+pname+"###pidpidpid"+pid);
		ArrayList<RiskInfo> risklist = dao.getRiskListByPid(Integer.parseInt(pid));
		//String username= request.getParameter("username");
		System.out.println("@@@@@@@@@@"+risklist.size());
		//RiskInfo temp = risklist.get(1);
		//System.out.println("@@@@@@@@@@"+temp.getRiskId());
		//System.out.println("@@@@@@@@@@"+temp.getType());
		//System.out.println("@@@@@@@@@@"+temp.getDescription());
		//System.out.println("@@@@@@@@@@"+temp.getPossibility());
		//System.out.println("@@@@@@@@@@"+temp.getImpact());
		//System.out.println("@@@@@@@@@@"+temp.getTrigger());
		String success_url = "risklistofsubmitter.jsp";
		if(role.equals("sub")){
			
		}else if(role.equals("tra")){
			success_url = "risklistoftracer.jsp";
		}
		request.setAttribute("username", CheckAccount.username);
		request.setAttribute("pname", pname);
		request.setAttribute("pdescription", pdescription);
		request.setAttribute("pid", pid);
		request.setAttribute("risklist", risklist);
		//System.out.println("********* begin forward");
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
