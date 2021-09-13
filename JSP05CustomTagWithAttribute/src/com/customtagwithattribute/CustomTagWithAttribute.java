package com.customtagwithattribute;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class CustomTagWithAttribute extends TagSupport 
{
	public int number;
	public String color;

	public void setNumber(int number) {
		this.number = number;
	}
	
	public void setColor(String color)
	{
		this.color=color;
	}


	@Override
	public int doStartTag() throws JspException 
	{
		JspWriter out=pageContext.getOut();
		
		try
		{
			out.println("<div style='color:"+color+"'>");
			
			for(int i=1;i<=10;i++)
			{
				out.println((i*number)+" ");
			}
			
			out.println("</div>");
		}
		
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		
		return super.doStartTag();
	}

	

}
