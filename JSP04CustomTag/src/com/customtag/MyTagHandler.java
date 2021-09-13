package com.customtag;

import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler extends TagSupport 
{

	@Override
	public int doStartTag() throws JspException 
	{
		try
		{
			JspWriter out=pageContext.getOut();
		
			out.println("<h3>this is mytaghander class<h3>");
			out.println("<h3>this is custom tag<h3>");
			out.println("<h3>today's date is :"+new Date().toString()+"</h3>");
		}
		
		catch (Exception e) 
		{
			e.printStackTrace();
		}
		return super.doStartTag();
	}

}
