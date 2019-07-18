package com.ben.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.junit.jupiter.params.shadow.com.univocity.parsers.common.processor.ObjectRowWriterProcessor;

import com.ben.dao.AllDao;
import com.ben.model.CartModel;
import com.google.gson.Gson;
import com.mysql.cj.xdevapi.JsonArray;

/**
 * Servlet implementation class CartProduct
 */
public class CartProduct extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String uid=request.getParameter("uid");
	
		try {
			AllDao dao=new AllDao();
			List<CartModel> cm=dao.showCart(uid);
			response.setContentType("application/json");
			Gson gson=new Gson();
			String job=gson.toJson(cm);
			pw.println(job);
			
			
			HttpSession se=request.getSession();
			se.setAttribute("cart_items", cm);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter pw=response.getWriter();
		String uid=request.getParameter("uid");
		String pid=request.getParameter("pid");
		try {
			AllDao dao=new AllDao();
			int i=dao.addCart(uid,pid);
			if(i>0) {
				pw.print("done");
			}else {
				pw.print("Error");
			}
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
