package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.TracerDAO;
import model.TraceInfo;

/**
 * Servlet implementation class RiskStateChange
 */
public class RiskStateChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	TracerDAO dao = new TracerDAO();
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RiskStateChange() {
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
		//request.setCharacterEncoding("UTF-8");
		String riskid= request.getParameter("riskid");
		String state = request.getParameter("state");
		String remark = request.getParameter("remark");
		String pid = request.getParameter("pid");
		String pname = request.getParameter("pname");
		String pdescription = request.getParameter("pdescription");
		int suc = dao.traceRisk(new TraceInfo(Integer.parseInt(riskid),state,remark,CheckAccount.username));
		//System.out.println(state);
		//String success_url = "SubCheckProject";
		/*if(suc==1){
			request.setAttribute("pid", pid);
			request.setAttribute("pname", pname);
			request.setAttribute("pdescription", pdescription);
			request.getRequestDispatcher("/jsp/"+success_url).forward(request, response);
		}*/
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
