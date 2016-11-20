package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.RiskInfo;
import model.RiskPlan;
import model.RiskType;

public class RiskPlanDAO {

	public RiskPlanDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public void createRiskPlan(RiskPlan riskplan){
		String sql = "insert into risk_plan(name,description,username) values('"
				+ riskplan.getName() + "','" + riskplan.getDescription() + "','" + riskplan.getUsername()+ "')";
		System.out.println(sql);
		DbUtil.executeInsert(sql);
		ArrayList<RiskType> list=riskplan.getList();
		for(RiskType r:list){
			int i=insertRiskType(riskplan.getName(),r);
			System.out.println(i);
		}
	}
	
	public void updateRiskPlan(String name,ArrayList<RiskType> list){
		for(RiskType r:list){
			int i=insertRiskType(name,r);
			System.out.println(i);
		}
	}
	
	public int deleteRiskType(String name,String typename){
		String sql = "delete from plan_detail where name = '"+name+"' and type = '"+typename+"'";
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
				String name=rs.getString(1);
				System.out.println(name);
				String description=rs.getString(2);
				System.out.println(description);
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
	
	public int insertRiskType(String name,RiskType risktype){
		String sql = "insert into plan_detail(type,worsen,identified,name) values('"
				+ risktype.getTypename() + "','" + risktype.getWorsen() + "','" + risktype.getIdentified()+ "','" + name+"')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
	}
	
	public ArrayList<RiskType> getAllRiskByname(String name){
		String sql = "select * from plan_detail where name = '" + name + "'";
		ResultSet rs = DbUtil.getResultSet(sql);
		RiskType info = null;
		ArrayList<RiskType> list = new ArrayList<RiskType>();
		try {
			while (rs.next()) {
				String type=rs.getString(1);
				System.out.println(type);
				int identified=rs.getInt(2);
				System.out.println(identified);
				int worsen=rs.getInt(3);
				System.out.println(worsen);
				info = new RiskType();
				info.setTypename(type);
				info.setIdentified(identified);
				info.setWorsen(worsen);
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
