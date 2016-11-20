package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.RiskInfo;
import model.RiskType;

public class RiskTypeDAO {

	public RiskTypeDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public ArrayList<RiskType> getAllType(){
		ArrayList<RiskType> list=new ArrayList<RiskType>();
		list.add(new RiskType("范围风险"));
		list.add(new RiskType("进度风险"));
		list.add(new RiskType("成本风险"));
		list.add(new RiskType("质量风险"));
		list.add(new RiskType("技术风险"));
		list.add(new RiskType("管理风险"));
		list.add(new RiskType("商业风险"));
		list.add(new RiskType("法律风险"));
		list.add(new RiskType("社会环境风险"));
		list.add(new RiskType("其他"));
		return list;
	}
	
	public ArrayList<RiskType> getAllIdentifiedRiskByTime(String starttime,String endtime){
		ArrayList<RiskType> list=new ArrayList<RiskType>();
		String sql = "select * from risk_submit where type = '范围风险'";
		ResultSet rs = DbUtil.getResultSet(sql);
		try {
			rs.last();
			int i=rs.getRow();
			System.out.println(i);
			list.add(new RiskType("范围风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql2 = "select * from risk_submit where type = '进度风险'";
		ResultSet rs2 = DbUtil.getResultSet(sql2);
		try {
			rs2.last();
			int i=rs2.getRow();
			System.out.println(i);
			list.add(new RiskType("进度风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql3 = "select * from risk_submit where type = '成本风险'";
		ResultSet rs3 = DbUtil.getResultSet(sql3);
		try {
			rs3.last();
			int i=rs3.getRow();
			System.out.println(i);
			list.add(new RiskType("成本风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql4 = "select * from risk_submit where type = '质量风险'";
		ResultSet rs4 = DbUtil.getResultSet(sql4);
		try {
			rs4.last();
			int i=rs4.getRow();
			System.out.println(i);
			list.add(new RiskType("质量风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql5 = "select * from risk_submit where type = '技术风险'";
		ResultSet rs5 = DbUtil.getResultSet(sql5);
		try {
			rs5.last();
			int i=rs5.getRow();
			System.out.println(i);
			list.add(new RiskType("技术风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql6 = "select * from risk_submit where type = '管理风险'";
		ResultSet rs6 = DbUtil.getResultSet(sql6);
		try {
			rs6.last();
			int i=rs6.getRow();
			System.out.println(i);
			list.add(new RiskType("范围风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql7 = "select * from risk_submit where type = '商业风险'";
		ResultSet rs7 = DbUtil.getResultSet(sql7);
		try {
			rs7.last();
			int i=rs7.getRow();
			System.out.println(i);
			list.add(new RiskType("商业风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql8 = "select * from risk_submit where type = '法律风险'";
		ResultSet rs8 = DbUtil.getResultSet(sql8);
		try {
			rs8.last();
			int i=rs8.getRow();
			System.out.println(i);
			list.add(new RiskType("法律风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql9 = "select * from risk_submit where type = '社会环境风险'";
		ResultSet rs9 = DbUtil.getResultSet(sql9);
		try {
			rs9.last();
			int i=rs9.getRow();
			System.out.println(i);
			list.add(new RiskType("社会环境风险",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		String sql10 = "select * from risk_submit where type = '其他'";
		ResultSet rs10 = DbUtil.getResultSet(sql10);
		try {
			rs10.last();
			int i=rs10.getRow();
			System.out.println(i);
			list.add(new RiskType("其他",i,0));
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return list;
	}
}
