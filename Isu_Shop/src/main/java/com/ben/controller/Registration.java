package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.ben.dao.AllDao;
import com.ben.model.RegModel;

public class Registration extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		RegModel rm=new RegModel();
		
		rm.setEmail(request.getParameter("email"));
		rm.setPassword(request.getParameter("password"));
		rm.setFname(request.getParameter("fname"));
		rm.setMname(request.getParameter("mname"));
		rm.setLname(request.getParameter("lname"));
		
		
		String msg=null;
		try {
			AllDao dao=new AllDao();
			int i=dao.getReg(rm);
			if(i>0) {
				HttpSession session=request.getSession();
				session.setAttribute("email", rm.getEmail());
				response.sendRedirect("fullreg.jsp");
			}else {
				
			}
			
		} catch (ClassNotFoundException e) {
			msg="Registration Faill";
			response.sendRedirect("home.jsp?msg="+msg);
		} catch (SQLException e) {
			msg="Dublicate Entry";
			response.sendRedirect("home.jsp?msg="+msg);
		}
		
	}

}
