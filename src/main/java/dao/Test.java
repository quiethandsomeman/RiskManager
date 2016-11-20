package dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import model.RiskInfo;

public class Test {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        //int result=new UserDAO().login("submitter", "submitter");
        //System.out.println(result);
		
		//new ProjectDAO().getAllProjects();
		
		
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Timestamp nowdate = new Timestamp(System.currentTimeMillis());
		//System.out.println(sdf.format(nowdate));
		
		RiskInfo riskinfo=new RiskInfo(1,"范围风险","This is description.",1,1,"This is threshold","submitter");
		System.out.println(new SubmitterDAO().SubmitRisk(riskinfo));
	}
}
