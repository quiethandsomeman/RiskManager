package dao;

import database.DbUtil;
import model.RiskPlan;

public class RiskPlanDAO {

	public RiskPlanDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public int createRiskPlan(RiskPlan riskplan){
		String sql = "insert into risk_plan(name,description) values('"
				+ riskplan.getName() + "','" + riskplan.getDescription() + "')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
	}
}
