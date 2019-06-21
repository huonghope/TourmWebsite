package wepapps.mvc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import DataBaseConnect.ConnectionDB;
import wepapps.mvc.MODEL.Product;

public class CategoryDAO {
	public static String getCoutryByCategoryID(int id)
	{
		String result = "";
		Connection con = ConnectionDB.Instance.getMySQLConnection();
		String sql = "select * from category where id =" + id;
		try {
			PreparedStatement ps = con.prepareCall(sql);
	        ResultSet rs = ps.executeQuery();
	        while (rs.next()) {
	        	result = rs.getString("category");
				return result;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;		
	}
}
