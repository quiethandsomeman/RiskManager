/**
 * Copyright 2016 Iflytek, Inc. All rights reserved.
 */
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 * <p>
 * <code>DbUtil</code>
 * </p>
 *
 * @author dkhe
 * @since 1.0
 * @version 1.0
 */
public class DbUtil {

	private static Connection conn = null;

	// 构造方法
	public DbUtil() {
	}

	static {
		try {
			Class.forName("com.mysql.jdbc.Driver");// jdbc

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} // 加载驱动程序;

		try {

			conn = DriverManager.getConnection(Constants.URL, Constants.USER, Constants.PASSWORD);// url+用户名+密码
			System.out.println("连接数据库成功");
		} catch (SQLException e) {

			e.printStackTrace();
		}//连接数据库

	}

	public Connection getConn() {
		return conn;

	}
	
	public static void goBatch(String[] sqls) {
        Statement sm = null;
        try {
            sm = conn.createStatement();
            for (int i = 0; i < sqls.length; i++) {
                sm.addBatch(sqls[i]);// 将所有的SQL语句添加到Statement中
            }
            // 一次执行多条SQL语句
            sm.executeBatch();
            System.out.println("执行批处理成功");
            System.out.println("数据库初始化成功");
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
				sm.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
        }
    }

	public static PreparedStatement getPstmt(Connection conn, String sql) {
		PreparedStatement pstmt = null;
		try {
			pstmt = conn.prepareStatement(sql);
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return pstmt;
	}

	public static ResultSet getResultSet(PreparedStatement pstmt) {
		ResultSet rs = null;
		try {
			rs = pstmt.executeQuery();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return rs;
	}
	
	public static ResultSet getResultSet(String sql) {
		ResultSet rs = null;
		try {
			rs = conn.prepareStatement(sql).executeQuery();
		} catch (SQLException e) {

			e.printStackTrace();
		}
		return rs;
	}
	
	public static int executeInsert(String sql) {
		try {
			conn.prepareStatement(sql).executeUpdate();
			return 1;
		} catch (SQLException e) {
            e.printStackTrace();
            return -1;
		}
	}

	public static void close(ResultSet rs, Statement stmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
			rs = null;
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
			stmt = null;
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {

				e.printStackTrace();
			}
			conn = null;
		}

	}

}
