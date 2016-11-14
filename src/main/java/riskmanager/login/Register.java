package riskmanager.login;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import riskmanager.jdbc.Open;


public class Register {
	public static boolean register(String username,String password){
		boolean res=false;
		Connection conn=Open.open();
		String sql="";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				sql="use riskmanager;";
				stmt.execute(sql);
				sql="select * from user where uname='"+username+"';";
				if(!stmt.execute(sql)){
					sql="insert into user values('"+username+"','"+password+"');";
					int i=stmt.executeUpdate(sql);
					if(i>=0){
						return true;
					}
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return res;
	}
}
