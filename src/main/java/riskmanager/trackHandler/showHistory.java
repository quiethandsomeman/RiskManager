package riskmanager.trackHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import riskmanager.jdbc.Open;


public class showHistory {
	public static ArrayList<History> getProList() throws SQLException{
		ArrayList<History> history=new ArrayList<History>();
		Connection conn=Open.open();
		String sql="select*from history";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					History his=new History(rs.getInt("projectid"),rs.getInt("riskid"),rs.getString("time"),rs.getString("tracker"));
					history.add(his);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
		}
		return history;
	}
}
