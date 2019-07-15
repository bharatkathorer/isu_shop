package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ben.dao.AllDao;
import com.ben.model.ProductModel;

/**
 * Servlet implementation class LikeRatingLove
 */
public class LikeRatingLove extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("pid"));
		String love =request.getParameter("love");
		ProductModel pm=new ProductModel();
		
		try {
			AllDao dao=new AllDao();			
			dao.loveclick(id ,love);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
