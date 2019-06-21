package DataBaseConnect;

import java.awt.print.Book;
import java.sql.*;

public class ConnectionDB {

	public static ConnectionDB Instance;
	
	public static ConnectionDB getInstance() {
		if(Instance == null)
		{
			Instance = new ConnectionDB();
		}
		return Instance;
	}
	public static void setInstance(ConnectionDB instance) {
		Instance = instance;
	}
	private ConnectionDB() {}
	
	public static java.sql.Connection getMySQLConnection()
	{
		java.sql.Connection conn = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String jdbcurl = "jdbc:mysql://localhost:3306/WEBPROJECT_TOURISTDB";
			conn = DriverManager.getConnection(jdbcurl, "jeong", "1234");
		} catch (Exception e) {
			 e.printStackTrace();
			 System.out.println(e);
		}	
		return conn;
	}
	 public static void main(String[] args) {
	        System.out.println(getMySQLConnection());
	    }
}
