package riskmanager.login;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import riskmanager.jdbc.Open;

public class Login {
	public static boolean login(String username,String password) throws SQLException{
		boolean res=false;
		Connection conn=Open.open();
		String sql="";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				sql="use riskmanager;";
				stmt.execute(sql);
				sql="select * from user where uname='"+username+"'&password='"+password+"';";
				res=stmt.execute(sql);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
		}
		return res;
	}
}
