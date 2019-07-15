package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.ben.dao.AllDao;
import com.ben.model.RegModel;

/**
 * Servlet implementation class FullReg
 */
@WebServlet(name ="FullReg",urlPatterns ="FullReg")
@MultipartConfig(maxFileSize=106177216)
public class FullReg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FullReg() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegModel rm=new RegModel();
		
		int i=0;
		rm.setEmail(request.getParameter("user_email"));
		System.out.println(rm.getEmail());
		rm.setAddress(request.getParameter("address"));
		rm.setState(request.getParameter("state"));
		rm.setCity(request.getParameter("city"));
		rm.setPhone(request.getParameter("phone"));
	
		rm.setPincode(request.getParameter("pincode"));
		
		Part p_pic=request.getPart("img");
		String msg=null;
		rm.setP_pic(p_pic);
		if(p_pic!=null) {
			System.out.println(p_pic.getContentType()+p_pic.getName());
		}
		try {
			AllDao dao=new AllDao();
			i=dao.setFullReg(rm);
			if(i>0) {
				response.sendRedirect("home.jsp");
			}else {
				msg="Something went Wrong1!";
				response.sendRedirect("home.jsp?msg="+msg);
			}
			
		} catch (Exception e) {
			msg="Something went Wrong2!";
			response.sendRedirect("home.jsp?msg="+msg);
		} 
		
		
	}

}
