package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ben.dao.AllDao;
import com.ben.model.ProductModel;

public class ShowProdById extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("pid"));
		
		try {
			AllDao dao=new AllDao();
			
			ProductModel pm=dao.showProductById(id);
			
			HttpSession se=request.getSession();
			se.setAttribute("pid", pm);
			response.sendRedirect("prodisplaybyid.jsp");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
