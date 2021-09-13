package com.mvc;

public class LoginBean 
{
	private String name;
	private String password;
	
	public void setName(String name)
	{
		this.name=name;
	}
	
	public String getName()
	{
		return this.name;
	}
	
	public void setPassword(String password)
	{
		this.password=password;
	}
	
	public String getPassword()
	{
		return this.password;
	}
	
	public boolean validate()
	{
		if(this.password.equals("admin"))
		{
			return true;
		}
		
		else
		{
			return false;
		}
		
	}

}
