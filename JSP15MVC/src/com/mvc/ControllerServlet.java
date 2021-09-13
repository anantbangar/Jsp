package com.mvc;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ControllerServlet extends HttpServlet
{
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	{
		processRequest(req,res);
	}
	
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws ServletException,IOException
	{
		processRequest(req,res);
	}
	
	public void processRequest(HttpServletRequest req, HttpServletResponse res) throws ServletException,IOException
	{
		res.setContentType("text/html");
		PrintWriter out=res.getWriter();
		
		String name=req.getParameter("name");
		String password=req.getParameter("password");
		
		LoginBean loginbean=new LoginBean();
		loginbean.setName(name);
		loginbean.setPassword(password);
		
		req.setAttribute("loginbean",loginbean);
		
		boolean status=loginbean.validate();
		
		if(status)
		{
			RequestDispatcher rd=req.getRequestDispatcher("login_success.jsp");
			rd.forward(req,res);
		}
		
		else
		{
			RequestDispatcher rd=req.getRequestDispatcher("login_error.jsp");
			rd.forward(req, res);
		}
	}
}
