package webshop.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Connection conn=null;
		
		String url="jdbc:mysql://localhost:3306/smartweb";
		String user="root";
		String password="1111";
		
		Class.forName("com.mysql.jdbc.Driver");
		conn=DriverManager.getConnection(url, user, password);
		
		return conn;
		
	}
}
