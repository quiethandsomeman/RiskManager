package dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import database.DbUtil;

public class UserDAO {

	public UserDAO() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see dao.SightDAO#findAll()
	 */
	public int login(String username, String password) {
		// TODO Auto-generated method stub
		String sql = "select * from user where username = '" + username + "' and password = '" + password+"'";
		System.out.println(sql);
		ResultSet rs = DbUtil.getResultSet(sql);

		try {
			if (rs.next()) {
				return rs.getInt(3);//返回角色对应的int
			} else {
				return 3;//数据库不存在记录
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return -1;//数据库 error
		}
	}
}
