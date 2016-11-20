package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.RiskInfo;
import model.TraceInfo;

public class TracerDAO {

	public TracerDAO() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see dao.SightDAO#findAll()
	 */
	public int traceRisk(TraceInfo traceinfo) {
		// TODO Auto-generated method stub
		String sql = "insert into risk_trace(riskid,isProblem,remark,tracer,date) values('" + traceinfo.getRiskId()
				+ "','" + traceinfo.getIsProblem() + "','" + traceinfo.getRemark() + "','" + traceinfo.getTracer()
				+ "','" + traceinfo.getDate() + "')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
	}

	public ArrayList<TraceInfo> getTraceListByRid(int rid) {
		// TODO Auto-generated method stub
		String sql = "select * from risk_trace where riskid = " + rid;
		ResultSet rs = DbUtil.getResultSet(sql);
		TraceInfo info = null;
		ArrayList<TraceInfo> list = new ArrayList<TraceInfo>();
		try {
			while (rs.next()) {
				int traceId = rs.getInt(1);
				System.out.println(traceId);
				int riskId = rid;
				String isProblem = rs.getString(3);
				System.out.println(isProblem);
				String remark = rs.getString(4);
				System.out.println(remark);
				String tracer = rs.getString(5);
				System.out.println(tracer);
				String date = rs.getString(6);
				System.out.println(date);
				info = new TraceInfo();
				info.setTraceId(traceId);
				info.setRiskId(riskId);
				info.setIsProblem(isProblem);
				info.setRemark(remark);
				info.setTracer(tracer);
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
