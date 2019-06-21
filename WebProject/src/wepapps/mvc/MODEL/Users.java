package wepapps.mvc.MODEL;

public class Users {
	private String userID;
	private String userName;
	private String userEmail;
	private String userPassword;
	
	public Users() {
		super();
	}
	public Users(String userID, String userName,String userPassword,String userEmail) {
		super();
		this.userID = userID;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPassword = userPassword;
	}
	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getUserEmail() {
		return userEmail;
	}

	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}

	public String getUserPassword() {
		return userPassword;
	}

	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
}
