package riskmanager.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CheckAccount
 */
public class CheckAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public static String username;
	public static String role;
       
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
		username=request.getParameter("name");
		String pwd = request.getParameter("password");
		if(username.equals("aaa")&&pwd.equals("aaa")){
			System.out.println("success");
			String success_url = "indexofsubmitter.jsp";
			role = "sub";
			if(role.equals("sub")){
				
			}else if(role.equals("tra")){
				success_url = "indexoftracer.jsp";
			}
			else if(role.equals("ana")){
				
			}
			request.setAttribute("username", username);
			request.getRequestDispatcher(success_url).forward(request, response);
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
