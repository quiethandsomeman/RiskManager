package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ProjectDAO;
import dao.RiskPlanDAO;
import dao.UserDAO;
import model.ProjectInfo;
import model.RiskPlan;

/**
 * Servlet implementation class CheckAccount
 */
public class CheckAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String username;
	public static String role;
	
    UserDAO usrdao = new UserDAO();
    ProjectDAO prodao = new ProjectDAO();
    RiskPlanDAO risdao = new RiskPlanDAO();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckAccount() {
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
		username=request.getParameter("name");
		String pwd = request.getParameter("password");
		
		int result = usrdao.login(username, pwd);
		
		if(result==0||result==1||result==2){
			System.out.println("success");
			String success_url = "indexofsubmitter.jsp";
			
			if(result==0){
				role="sub";
			}else if(result==1){
				role="tra";
				success_url = "indexoftracer.jsp";
			}
			else if(result==2){
				role="ana";
				success_url = "RAlist.jsp";
			}
			ArrayList<ProjectInfo> prolist = prodao.getAllProjects();
			ArrayList<RiskPlan> planlist = risdao.getAllPlanByUsername(username);
			request.setAttribute("prolist", prolist);
			request.setAttribute("username", username);
			request.setAttribute("riskplan", planlist);
			request.getRequestDispatcher("/jsp/"+success_url).forward(request, response);
			//response.sendRedirect(success_url);
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
