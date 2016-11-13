package riskmanager.trackHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

import riskmanager.jdbc.Open;


public class Addtrack {
	public static boolean addTrack(int proid,int rid,String possibility,String effect,int value,String info,String user) throws SQLException{
		Connection conn=Open.open();
		boolean res=false;
		String sql="update risk set possibility=?,effect=?,value=?,info=? where projectid=? AND riskid=?";
		String sql2="insert into history (projectid,riskid,tracker) values (?,?,?)";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setString(1,possibility);
				ps.setString(2,effect);
				ps.setInt(3, value);
				ps.setString(4,info);
				ps.setInt(5,proid);
				ps.setInt(6,rid);
				int i=ps.executeUpdate();
				ps=conn.prepareStatement(sql2);
				ps.setInt(1,proid);
				ps.setInt(2,rid);
				ps.setString(3,user);
				int j=ps.executeUpdate();
				if(i>0&&j>0){
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
