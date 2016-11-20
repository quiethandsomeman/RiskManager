package dao;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;

import model.RiskInfo;
import model.RiskPlan;
import model.TraceInfo;

public class Test {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
        //int result=new UserDAO().login("submitter", "submitter");
        //System.out.println(result);
		
		//new ProjectDAO().getAllProjects();
		
		
		//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		//Timestamp nowdate = new Timestamp(System.currentTimeMillis());
		//System.out.println(sdf.format(nowdate));
		
		//RiskInfo riskinfo=new RiskInfo(1,"范围风险","This is description.",1,1,"This is threshold","submitter");
		//System.out.println(new SubmitterDAO().SubmitRisk(riskinfo));
		
		//TraceInfo traceinfo=new TraceInfo(2,"yes","This is a remark","tracer");
		//System.out.println(new TracerDAO().traceRisk(traceinfo));
		
		//RiskPlan riskplan=new RiskPlan("YJF的RA计划","This is a RA plan.");
		//System.out.println(new RiskPlanDAO().createRiskPlan(riskplan));
		//RiskPlan riskplan2=new RiskPlan("LZT的RA计划","This is a RA plan.");
		//System.out.println(new RiskPlanDAO().createRiskPlan(riskplan2));
		//RiskPlan riskplan3=new RiskPlan("HDK的RA计划","This is a RA plan.");
		//System.out.println(new RiskPlanDAO().createRiskPlan(riskplan3));
		
		System.out.println(new RiskPlanDAO().getAllPlanByUsername("analyzer").size());
	}
}
