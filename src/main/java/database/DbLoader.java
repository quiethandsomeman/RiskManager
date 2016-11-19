/**
 * Copyright 2016 Iflytek, Inc. All rights reserved.
 */
package database;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

/**
 * <p>
 * <code>DbLoader</code>
 * </p>
 *
 * @author dkhe
 * @since 1.0
 * @version 1.0
 */
public class DbLoader {

	public DbLoader(){
		load();
	}
	
	private void load(){
		initDatabase();
	}
	
	private void initDatabase(){
		
		String output="";
		try{
	          BufferedReader input = new BufferedReader (new FileReader(Constants.INITDB));
	          StringBuffer buffer = new StringBuffer();
	          String content;
	          while((content = input.readLine()) != null)
	            buffer.append(content);
	            output = buffer.toString();
	            input.close();
	        }
	        catch(IOException ioException){
	          System.err.println("File Error!");
	        }
		String[] sqls=output.split(";");
		DbUtil.goBatch(sqls);
	}
	
}
