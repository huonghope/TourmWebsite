package wepapps.mvc.DAO;

import java.sql.*;

import org.apache.catalina.User;

import DataBaseConnect.ConnectionDB;
import wepapps.mvc.MODEL.Users;


public class UserDAO {
	//check Email 
	public static boolean checkUserID(String _userID) throws SQLException {
		// TODO Auto-generated method stub
		Statement stmt = null;
		Connection conn = ConnectionDB.Instance.getMySQLConnection();
		String sql= "select * from Users where user_id = '" + _userID + "'";
		stmt = conn.createStatement();
		try {
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next())
			{
				conn.close();
				return true;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	//add Account
	public static boolean insertUser(Users _user)
	{
		PreparedStatement ps = null;
		Connection conn = ConnectionDB.Instance.getMySQLConnection();
		String sql= "insert into users(user_id,username,userpwd,email) values(?,?,?,?)";
		try {
			ps = conn.prepareCall(sql);
			ps.setNString(1,_user.getUserID());
			ps.setNString(2,_user.getUserName());
			ps.setNString(3,_user.getUserPassword());
			ps.setNString(4,_user.getUserEmail());
			ps.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	public static Users checkAccount(String user_id, String password)
	{
			Connection con = ConnectionDB.Instance.getMySQLConnection();
			String sql = "select * from users where user_id='" + user_id + "' and userpwd='" + password + "'";
			PreparedStatement ps;
			try {
				ps = (PreparedStatement) con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				if (rs.next()) {
					Users user = new Users();
					user.setUserID(rs.getString("user_id"));
					user.setUserName(rs.getString("username"));
					user.setUserPassword(rs.getString("userpwd"));
					user.setUserEmail(rs.getString("email"));
					con.close();
					return user;
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			return null;
	}
	public static void main(String[] args) {}
}
