package riskmanager.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.serializer.SerializerFeature;

import dao.RiskTypeDAO;
import model.RiskDAOcoll;
import model.RiskType;

/**
 * Servlet implementation class identityrisk
 */
public class identityrisk extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public identityrisk() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String start=request.getParameter("date1");
		String finish=request.getParameter("date2");
		//System.out.println(start);
		//System.out.println(finish);
		RiskTypeDAO rtd=new RiskTypeDAO();
		ArrayList<RiskType> art=rtd.getAllRiskStateByTime(start, finish);
		int[] num=new int[10];
		for(int i=0;i<10;i++){
			num[i]=art.get(i).getIdentified();
		}
		String[] name=new String[10];
		for(int i=0;i<10;i++){
			name[i]=art.get(i).getTypename();
		}
		RiskDAOcoll rco=new RiskDAOcoll();
		rco.setA(num);
		rco.setB(name);
		//System.out.println(name[1]);
		String str=JSON.toJSONString(rco,SerializerFeature.BrowserCompatible);
        PrintWriter out = response.getWriter();
        out.write(str);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
