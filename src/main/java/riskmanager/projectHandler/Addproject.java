package riskmanager.projectHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import riskmanager.jdbc.Open;


public class Addproject {
	public static boolean addProject(String uname,String proname,String proinfo) throws SQLException{
		Connection conn=Open.open();
		boolean res=false;
		String sql="insert into project(proname,proinfo,username) values (?,?,?)";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,proname);
				ps.setString(2,proinfo);
				ps.setString(3, uname);
				int i=ps.executeUpdate();
	            if(i>0){
	                res=true;
	            }
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
		}
		return res;
	}
	public static void main(String[]args) throws SQLException{
		System.out.print(addProject("demo","test","test"));
	}
}
