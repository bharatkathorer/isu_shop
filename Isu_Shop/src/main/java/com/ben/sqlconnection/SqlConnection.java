package com.ben.sqlconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class SqlConnection {
	Connection con;
	
	public Connection SqlConnection() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/isu_shop", "root", "bHaRaT@12@12");
		
		return con;
	}

}
