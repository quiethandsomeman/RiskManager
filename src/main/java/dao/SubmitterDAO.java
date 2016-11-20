package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import database.DbUtil;
import model.ProjectInfo;

public class SubmitterDAO {
	
	public SubmitterDAO() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see dao.SightDAO#findAll()
	 */
	public int SubmitRisk() {
		// TODO Auto-generated method stub
		String sql = "select * from project";
		System.out.println(sql);
		ResultSet rs = DbUtil.getResultSet(sql);
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
	}
}
