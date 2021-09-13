package com.registrationform;

import java.sql.*;

public class RegisterDao 
{
	public static int register(User1Bean u)
	{
		int status=0;
	
		try
		{
			Connection con=ConnectionProvider.getCon();
		
			PreparedStatement pstmt=con.prepareStatement("insert into user1 values(?,?)");
			pstmt.setString(1,u.getUname());
			pstmt.setString(2,u.getCity());
			
			status=pstmt.executeUpdate();
		
		}
	
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return status;
	}

}
