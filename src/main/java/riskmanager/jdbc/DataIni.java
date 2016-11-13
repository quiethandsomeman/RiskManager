package riskmanager.jdbc;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DataIni {
	public static int initial() throws SQLException{
		Connection conn=Open.open();
		String sql="";
		if(conn!=null){
			try {
				Statement stmt=conn.createStatement();
				sql="drop database if exists riskmanager;";
				stmt.execute(sql);
				sql="create database riskmanager;";
				stmt.execute(sql);
				sql="use riskmanager;";
				stmt.execute(sql);
				sql="create table user(uname varchar(20) NOT NULL,password varchar(20),primary key(uname));";
				stmt.executeUpdate(sql);
				sql="create table project(projectid int(6) NOT NULL auto_increment,proname varchar(20) NOT NULL,proinfo varchar(200),username varchar(20) NOT NULL,primary key(projectid));";
				stmt.executeUpdate(sql);
				sql="create table risk(projectid int(6) NOT NULL,riskid int(6) NOT NULL auto_increment,rname varchar(20),possiblity varchar(20),effect varchar(20),value int(3),uploader varchar(20),tracker varchar(20),info varchar(100),primary key(projectid,riskid));";
				stmt.executeUpdate(sql);
				sql="create table history(projectid int(6) NOT NULL,riskid int(6) NOT NULL,time timestamp NOT NULL default CURRENT_TIMESTAMP,tracker varchar(20) NOT NULL,primary key(projectid,riskid,time));";
				stmt.executeUpdate(sql);
				System.out.print("�����ɹ�");
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally{
				conn.close();
			}
			return 1;
		}
		return -1;
	}
	public static void main(String[] args) throws SQLException{
		initial();
	}
}
