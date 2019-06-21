package wepapps.mvc.CONTROLLER;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import wepapps.mvc.DAO.UserDAO;


@WebServlet("/CheckUserIDServlet")
public class CheckUserIDServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public CheckUserIDServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    private UserDAO userDAO = new UserDAO();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String user_id = request.getParameter("user_id");
		try {
		 if (userDAO.checkUserID(user_id)) {
	          response.getWriter().write("<img src=\"img/not-available.png\" />");
	     } else {
	          response.getWriter().write("<img src=\"img/available.png\" />");
	     }
		}catch(Exception e)
		{
			 System.out.println("Error" + e.getMessage());
		}
	}

}
