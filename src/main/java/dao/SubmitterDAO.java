package dao;

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
		String sql = "insert into risk_submit(projectid,type,description,possibility,impact,threshold,submitter,date) values('"+riskinfo.getProjectId()+"','"+
		riskinfo.getType()+"','"+
		riskinfo.getDescription()+"','"+
		riskinfo.getPossibility()+"','"+
		riskinfo.getImpact()+"','"+
		riskinfo.getTrigger()+"','"+
		riskinfo.getSubmitter()+"','"+
		riskinfo.getDate()+"')";
		System.out.println(sql);
		return DbUtil.executeInsert(sql);
		/*
		ProjectInfo info= null;  
        ArrayList<ProjectInfo> list = new ArrayList<ProjectInfo>();
		try {
			while (rs.next()) {
				int id=rs.getInt(1);
				System.out.println(id);
				String name=rs.getString(2);
				System.out.println(name);
				String description=rs.getString(3);
				System.out.println(description);
				info=new ProjectInfo();
				info.setId(id);
				info.setName(name);
				info.setDescription(description);
				list.add(info);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;//数据库 error
		}
		*/
	}
}
