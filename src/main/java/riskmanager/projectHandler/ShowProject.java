package riskmanager.projectHandler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import riskmanager.jdbc.Open;


public class ShowProject {
	public static ArrayList<Project> getProList() throws SQLException{
		ArrayList<Project> prolist=new ArrayList<Project>();
		Connection conn=Open.open();
		String sql="select*from project";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				stmt.execute("use riskmanager;");
				PreparedStatement ps=conn.prepareStatement(sql);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					Project pro=new Project(rs.getString("username"),rs.getInt("projectid"),rs.getString("proname"),rs.getString("proinfo"));
					prolist.add(pro);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
		}
		return prolist;
	}
	public static void main(String []args) throws SQLException{
		System.out.print(getProList().get(0).getProname());
	}
}
