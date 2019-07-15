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
import com.ben.model.ProductModel;
@WebServlet(name ="AddProduct",urlPatterns ="AddProduct")
@MultipartConfig(maxFileSize=1006177216)
public class AddProduct extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String color=null;
		int i=0;
		Part	p_pic=request.getPart("p_pic");
		String	category=request.getParameter("category");
		String	p_name=request.getParameter("p_name");
		String	price=request.getParameter("price");
		String	p_modal=request.getParameter("p_modal");
		String	discount=request.getParameter("discount");
		String	brand=request.getParameter("brand");
		
		String	red=request.getParameter("red");
		String	blue=request.getParameter("blue");
		String	black=request.getParameter("black");
		String	green=request.getParameter("green");
		String	pink=request.getParameter("pink");
		String	gold=request.getParameter("gold");
		String description=request.getParameter("description");
		
		color=red+" "+blue+" "+black+" "+green+" "+pink+" "+gold;
		String co=color.replace("null", "");
		System.out.println(co);
		String	warranty=request.getParameter("warranty");	
		String warranty_years=request.getParameter("warranty_years");
		String	more_info=request.getParameter("more_info");	
		
		ProductModel pm=new ProductModel();
		
		pm.setP_pic(p_pic);
		pm.setCategory(category);
		pm.setP_name(p_name);
		pm.setPrice(price);
		pm.setP_modal(p_modal);
		pm.setDiscount(discount);
		pm.setBrand(brand);
		pm.setColor(co);
		pm.setWarranty(warranty+" "+warranty_years);
		pm.setMore_info(more_info);
		pm.setDescription(description);
		
		String msg=null;
		try {
			AllDao dao=new AllDao();
			i=dao.AddProduct(pm);
			if(i>0) {
				msg=p_name+" is Added";
				response.sendRedirect("home.jsp?msg="+msg);
			}else {
				System.out.println("Error");
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	}
}
