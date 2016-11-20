package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.RiskInfo;

public class SubmitterDAO {

	public SubmitterDAO() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see dao.SightDAO#findAll()
	 */
	public int SubmitRisk(RiskInfo riskinfo) {
		// TODO Auto-generated method stub
		String sql = "insert into risk_submit(projectid,type,description,possibility,impact,threshold,submitter,date) values('"
				+ riskinfo.getProjectId() + "','" + riskinfo.getType() + "','" + riskinfo.getDescription() + "','"
				+ riskinfo.getPossibility() + "','" + riskinfo.getImpact() + "','" + riskinfo.getTrigger() + "','"
				+ riskinfo.getSubmitter() + "','" + riskinfo.getDate() + "')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
	}

	public ArrayList<RiskInfo> getRiskListByPid(int pid) {
		// TODO Auto-generated method stub
		String sql = "select * from risk_submit where projectid = " + pid;
		ResultSet rs = DbUtil.getResultSet(sql);
		RiskInfo info = null;
		ArrayList<RiskInfo> list = new ArrayList<RiskInfo>();
		try {
			while (rs.next()) {
				int riskId = rs.getInt(1);
				System.out.println(riskId);
				int projectId = pid;
				String type = rs.getString(3);
				System.out.println(type);
				String description = rs.getString(4);
				System.out.println(description);
				int possibility = rs.getInt(5);
				System.out.println(possibility);
				int impact = rs.getInt(6);
				System.out.println(impact);
				String threshold = rs.getString(7);
				System.out.println(threshold);
				String submitter = rs.getString(8);
				System.out.println(submitter);
				String date = rs.getString(9);
				System.out.println(date);
				info = new RiskInfo();
				info.setRiskId(riskId);
				info.setProjectId(projectId);
				info.setType(type);
				info.setDescription(description);
				info.setPossibility(possibility);
				info.setImpact(impact);
				info.setTrigger(threshold);
				info.setSubmitter(submitter);
				info.setDate(date);
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
