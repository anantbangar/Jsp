package com.customtag;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class MyTagHandler1 extends TagSupport 
{

	@Override
	public int doStartTag() throws JspException 
	{
		try
		{
			JspWriter out=pageContext.getOut();
			
			out.println("<h3> this is mytaghandler1 class <h3>");
			
		}
		
		catch (Exception e) 
		{
			e.printStackTrace();
			
		}
		
		return super.doStartTag();
	}
	

}
