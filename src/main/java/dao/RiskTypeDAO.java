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

	public ArrayList<RiskType> getAllType() {
		ArrayList<RiskType> list = new ArrayList<RiskType>();
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

	public RiskType getRiskStateByTime(String type, String starttime, String endtime) {
		String sql = "select * from risk_submit where type = '" + type + "'";
		ResultSet rs = DbUtil.getResultSet(sql);
		String sql2 = "select * from risk_submit join risk_trace on risk_submit.riskid=risk_trace.riskid where type = '" + type + "' and isProblem = 'yes'";
		ResultSet rs2 = DbUtil.getResultSet(sql2);
		try {
			rs.last();
			int i = rs.getRow();
			rs2.last();
			int j = rs2.getRow();
			System.out.println(type);
			System.out.println(i);
			System.out.println(j);
			return new RiskType(type, i, j,"");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return new RiskType(type, 0, 0,"");
		}
	}
	

	public ArrayList<RiskType> getAllRiskStateByTime(String starttime, String endtime) {
		ArrayList<RiskType> list = new ArrayList<RiskType>();
		list.add(getRiskStateByTime("范围风险",starttime,endtime));
		list.add(getRiskStateByTime("进度风险",starttime,endtime));
		list.add(getRiskStateByTime("成本风险",starttime,endtime));
		list.add(getRiskStateByTime("质量风险",starttime,endtime));
		list.add(getRiskStateByTime("技术风险",starttime,endtime));
		list.add(getRiskStateByTime("管理风险",starttime,endtime));
		list.add(getRiskStateByTime("商业风险",starttime,endtime));
		list.add(getRiskStateByTime("法律风险",starttime,endtime));
		list.add(getRiskStateByTime("社会环境风险",starttime,endtime));
		list.add(getRiskStateByTime("其他",starttime,endtime));
		return list;
	}
}
