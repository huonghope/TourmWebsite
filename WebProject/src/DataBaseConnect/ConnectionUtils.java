package DataBaseConnect;

import java.sql.*;
public class ConnectionUtils {
	 public static Connection getConnection() 
             throws ClassNotFoundException, SQLException {
       	return ConnectionDB.Instance.getMySQLConnection();
   }  
   public static void closeQuietly(Connection conn) {
       try {
           conn.close();
       } catch (Exception e) {
       }
   }
   public static void rollbackQuietly(Connection conn) {
       try {
           conn.rollback();
       } catch (Exception e) {
       }
   }
}
