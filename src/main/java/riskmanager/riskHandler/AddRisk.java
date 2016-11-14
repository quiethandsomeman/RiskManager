package riskmanager.riskHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import riskmanager.jdbc.Open;



public class AddRisk {
	public static boolean addRisk(int projectid,String username,String rname,String possiblity,String effect,int value,String info) throws SQLException{
		Connection conn=Open.open();
		boolean res=false;
		String sql="insert into risk(projectid,rname,possiblity,effect,value,uploader,tracker,info) values (?,?,?,?,?,?,?,?)";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1,projectid);
				ps.setString(2,rname);
				ps.setString(3,possiblity);
				ps.setString(4,effect);
				ps.setInt(5,value);
				ps.setString(6,username);
				ps.setString(7,username);
				ps.setString(8,info);
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
}
