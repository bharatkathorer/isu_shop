package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ben.dao.AllDao;
import com.ben.model.RegModel;

public class LogIn extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user,password;
		user=request.getParameter("u_name");
		password=request.getParameter("Log_password");
		
		RegModel rm=new RegModel();
		rm.setEmail(user);
		rm.setPassword(password);
		String msg=null;
		try {
			AllDao dao=new AllDao();
			
			
				if(dao.getLogin(rm)) {
				
					if(dao.checkFReg(user)) {
						rm=dao.getName(user);
						
						HttpSession session=request.getSession();
						session.setAttribute("user", rm);
						response.sendRedirect("home.jsp");
				}else {
					response.sendRedirect("fullreg.jsp");
				}
				}else {
					msg="Invalid creadition!";
					response.sendRedirect("home.jsp?msg="+msg);
				}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
	}

}
