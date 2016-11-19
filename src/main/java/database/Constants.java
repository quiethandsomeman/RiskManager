/**
 * Copyright 2016 Iflytek, Inc. All rights reserved.
 */
package database;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * <p>
 * <code>Constants</code>
 * </p>
 *
 * @author dkhe
 * @since 1.0
 * @version 1.0
 */
public class Constants {
	
	// JDBC驱动
	public static final String DRIVER = getConstants()[0];
	// 数据库地址 
	public static final String URL = getConstants()[1];
	// 用户名
	public static final String USER = getConstants()[2];
	// 密码
	public static final String PASSWORD = getConstants()[3];
	
	public static final String INITDB="src/main/java/initDB.sql";
	
	private static String[] getConstants(){
		String[] constants=new String[4];
		InputStream inputStream = Constants.class.getClassLoader().getResourceAsStream("mysql-config.properties");
	    Properties p = new Properties();
		try
		{
			p.load(inputStream);
		}catch(IOException e1){
			e1.printStackTrace();
		}
		
		constants[0]=p.getProperty("driver");
		constants[1]=p.getProperty("url");
		constants[2]=p.getProperty("user");
		constants[3]=p.getProperty("password");
		
		return constants;
	}

}
