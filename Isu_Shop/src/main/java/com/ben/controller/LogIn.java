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

/**
 * Servlet implementation class LogIn
 */
public class LogIn extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogIn() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
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
						HttpSession session=request.getSession();
						session.setAttribute("email", user);
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

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
