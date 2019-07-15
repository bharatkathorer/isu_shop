package com.ben.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ben.dao.AllDao;

/**
 * Servlet implementation class ProductLikes
 */
public class ProductLikes extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductLikes() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pid =request.getParameter("pid");
		String uid =request.getParameter("uid");
		
		try {
			AllDao dao=new AllDao();
			int i=dao.unLike(uid, pid);
			if(i>0) {
				System.err.println("done");
			}else {
				System.out.println("erroe");
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String uid,pid;
		uid=request.getParameter("uid");
		pid=request.getParameter("pid");
	
		AllDao dao;
		try {
			dao = new AllDao();
			int i=dao.setLike(uid, pid);
			if(i>0) {
				System.err.println("done");
			}else {
				System.out.println("erroe");
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
