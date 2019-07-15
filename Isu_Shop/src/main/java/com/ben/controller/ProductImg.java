package com.ben.controller;

import java.io.IOException;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ben.dao.AllDao;
import com.ben.model.ProductModel;

/**
 * Servlet implementation class ProductImg
 */
public class ProductImg extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int id=Integer.parseInt(request.getParameter("id"));
		ProductModel pm=new ProductModel();
		
		try {
			AllDao dao=new AllDao();
			pm=dao.productImg(id);
			
			response.setContentType("image/gif");
			OutputStream os=response.getOutputStream();
			os.write(pm.getImg());
			os.flush();
			os.close();
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}


}
