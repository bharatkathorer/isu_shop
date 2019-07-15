package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.ben.dao.AllDao;
import com.ben.model.ProductModel;

public class ShowAllProducts extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductModel pm=new ProductModel();
	
		try {
			AllDao dao=new AllDao();
			List<ProductModel> list=dao.showProduct();
			HttpSession slist=request.getSession();
			slist.setAttribute("product", list);
			response.sendRedirect("products.jsp");
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
