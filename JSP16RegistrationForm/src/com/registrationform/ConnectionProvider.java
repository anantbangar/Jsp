package com.registrationform;
import static com.registrationform.Provider.*;

import java.sql.DriverManager;
import java.sql.*;

public class ConnectionProvider 
{
	private static Connection con=null;
	
	static
	{
		try
		{
			Class.forName(DRIVER);
			con=DriverManager.getConnection(CONNECTION_URL,USERNAME,PASSWORD);
			
			System.out.println("Connection done with MySql database");
		}
		
		catch(Exception e)
		{
			e.printStackTrace();
		}
	}
	
	public static Connection getCon()
	{
		return con;
	}
}
