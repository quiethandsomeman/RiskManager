package riskmanager.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class Open {
	public static Connection open(){
		Connection conn=null;
		String url= "jdbc:mysql://122.112.227.175:3306";
			try {
				Class.forName("com.mysql.jdbc.Driver");
				System.out.println("success");
				conn=DriverManager.getConnection(url,"root","123456");
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		return conn;
	}
	public static void main(String[] args){
		Connection c=open();
		if(c!=null)
			System.out.print("y");
		else
			System.out.print("n");
	}
}
