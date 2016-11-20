package riskmanager.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RiskPlanDAO;
import dao.RiskTypeDAO;
import model.RiskPlan;
import model.RiskType;

/**
 * Servlet implementation class ManageRA
 */
public class ManageRA extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public static String username;
    private static String RAname;
    private static String tempstring="";
    private static String RAdes;
    RiskPlanDAO rd=new RiskPlanDAO();
    RiskTypeDAO rt=new RiskTypeDAO();
    private ArrayList<RiskType> typelist=new ArrayList<RiskType>();
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ManageRA() {
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
		tempstring=request.getParameter("tempString");
		RAdes=request.getParameter("RAdes");
		System.out.println(tempstring+username+RAname);
		if(tempstring!=null){
			System.out.println("77777777");
		String[] type=tempstring.split(",");
		for(int i=0;i<type.length;i++){
			String[] templist=type[i].split(";");
			for(int j=0;j<templist.length;j++){
				System.out.println(templist[j]);
			}
			RiskType tempty=new RiskType(templist[0],Integer.parseInt(templist[1]),Integer.parseInt(templist[2]),RAname);
			typelist.add(tempty);
		}
		RiskPlan riskplan=new RiskPlan(RAname,RAdes,username,typelist);
		rd.createRiskPlan(riskplan);
		}
		ArrayList<RiskType> typelist=rd.getAllRiskByname(RAname);
		request.setAttribute("typelist", typelist);
		request.setAttribute("username",username);
		request.setAttribute("RAname", RAname);
		request.getRequestDispatcher("RAmanage.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
