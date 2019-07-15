package com.ben.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ben.dao.AllDao;
import com.ben.model.CartModel;
import com.google.gson.Gson;

/**
 * Servlet implementation class ShowLikes
 */
public class ShowLikes extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter ot=response.getWriter();
		String uid =request.getParameter("uid");
		
		try {
			AllDao dao =new AllDao();
			List<CartModel> li = dao.showLike(uid);
			response.setContentType("application/json");
			Gson json=new Gson();
			String lik=json.toJson(li);
			
			ot.print(lik);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


}
