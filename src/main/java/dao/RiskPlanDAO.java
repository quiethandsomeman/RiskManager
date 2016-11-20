package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.RiskInfo;
import model.RiskPlan;

public class RiskPlanDAO {

	public RiskPlanDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public int createRiskPlan(RiskPlan riskplan){
		String sql = "insert into risk_plan(name,description) values('"
				+ riskplan.getName() + "','" + riskplan.getDescription() + "','" + riskplan.getUsername()+ "')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
	}
	
	public ArrayList<RiskPlan> getAllPlanByUsername(String username){
		String sql = "select * from risk_plan where username = '" + username + "'";
		ResultSet rs = DbUtil.getResultSet(sql);
		RiskPlan info = null;
		ArrayList<RiskPlan> list = new ArrayList<RiskPlan>();
		try {
			while (rs.next()) {
				String name=rs.getString("2");
				System.out.println(sql);
				String description=rs.getString("3");
				System.out.println(sql);
				info = new RiskPlan();
				info.setName(name);
				info.setDescription(description);
				info.setUsername(username);
				list.add(info);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;// 数据库 error
		}
	}
}
