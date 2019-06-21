package wepapps.mvc.CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import wepapps.mvc.DAO.UserDAO;
import wepapps.mvc.MODEL.Users;
import wepapps.usingMD5.encodePassword.EncodePassword;

/**
 * Servlet implementation class UsersServlet
 */
@WebServlet("/UsersServlet")
public class UsersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UsersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sessionUser = request.getSession();
		sessionUser = request.getSession(false);
		sessionUser.invalidate();
		RequestDispatcher rd = getServletContext().getRequestDispatcher("/login.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("aa");
			String command = request.getParameter("command");
			String url = "";
			Users users;
			HttpSession sessionUser = request.getSession();
			switch(command)
			{
			case "register":
				String username = request.getParameter("username");
				String user_id = request.getParameter("user_id");
				String password = EncodePassword.encryption(request.getParameter("userpwd"));
				String email = request.getParameter("useremail") + request.getParameter("email_dns");
				users = new Users(username,user_id,password,email);
				if(UserDAO.insertUser(users)) { //Insert Account Sucessful
					sessionUser.setAttribute("user", users);
					url = "/index.jsp";
				}else
				{
					url = "/login.jsp";
				}
				break;
			case "login":
				users = UserDAO.checkAccount(request.getParameter("id"),EncodePassword.encryption(request.getParameter("pwd")));
				if(users != null)
				{
					sessionUser.setAttribute("user", users);
					url = "/index.jsp";
				}else{
					request.setAttribute("Error","아이디 또는 비밀번호를 다시 확인하세요.<br>잘못 입력하셨습니다");
					url = "/login.jsp";
				}			
				break;
			case "logout":
				sessionUser = request.getSession(false);
				sessionUser.invalidate();
				url = "/login.jsp";
				break;
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
			rd.forward(request, response);
	}

}
