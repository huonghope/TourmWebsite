package wepapps.mvc.CONTROLLER;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ResultCitySite
 */
@WebServlet("/ResultCitySite")
public class ResultCitySite extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ResultCitySite() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String category = request.getParameter("category");
			String index = request.getParameter("index");
			String resultURL = "";
			switch(category)
			{
			case "1": //Japan
				resultURL = "/japan"+index;
				break;
			case "2": //Vietnam
				resultURL = "/vietnam"+index;
				break;
			case "3": //Korea
				resultURL = "/korea"+index;
				break;
			
			}
			RequestDispatcher rd = getServletContext().getRequestDispatcher(resultURL+".jsp");
			rd.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
