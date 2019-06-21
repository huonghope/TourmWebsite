package wepapps.mvc.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import DataBaseConnect.ConnectionDB;
import wepapps.mvc.MODEL.Product;
import wepapps.mvc.MODEL.Users;

public class ProductDAO {
	
	public static ArrayList<Product> getListProductByCategory(int category_id) throws SQLException
	{
		Connection con = ConnectionDB.Instance.getMySQLConnection();
		String sql = "select * from product where category_id =" + category_id + "";
		PreparedStatement ps;
		ps = (PreparedStatement) con.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> list = new ArrayList<Product>();
		while(rs.next())
		{
			Product prd = new Product();
			prd.setId(Integer.parseInt(rs.getString("id")));
			prd.setTitle(rs.getString("title"));
			prd.setContent(rs.getString("content"));
			prd.setPrice(rs.getString("price"));
			prd.setImage(rs.getString("image"));
			list.add(prd);
		}
		return list;
	}	
	public static Product getProduct(int id)
	{
		Connection con = ConnectionDB.Instance.getMySQLConnection();
		String sql = "select * from product where id =" + id;
		try {
			PreparedStatement ps = con.prepareCall(sql);
	        ResultSet rs = ps.executeQuery();
	        Product product = new Product();
	        while (rs.next()) {
				product.setTitle(rs.getString("title"));
				product.setContent(rs.getString("content"));
				product.setPrice(rs.getString("price"));
				product.setImage(rs.getString("image"));
				con.close();
				return product;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;		
	}
	public static void main(String[] args) throws SQLException {
		for(Product c : ProductDAO.getListProductByCategory(1))
		{
			System.out.println(c.getTitle());
			System.out.println(c.getContent());
			System.out.println(c.getPrice());
			System.out.println(c.getImage());
		}
	}
}
