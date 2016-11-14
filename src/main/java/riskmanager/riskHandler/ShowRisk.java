package riskmanager.riskHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import riskmanager.jdbc.Open;


public class ShowRisk {
	public static ArrayList<Risk> getRiskList(int proid) throws SQLException{
		ArrayList<Risk> risklist=new ArrayList<Risk>();
		Connection conn=Open.open();
		String sql="select*from risk where projectid=?";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ps.setInt(1,proid);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					Risk risk=new Risk(rs.getInt("projectid"),rs.getInt("riskid"),rs.getString("rname"),rs.getString("possiblity"),rs.getString("effect"),rs.getInt("value"),rs.getString("uploader"),rs.getString("tracker"),rs.getString("info"));
					risklist.add(risk);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
		}
		return risklist;
	}
}
