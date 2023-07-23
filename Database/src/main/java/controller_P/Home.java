package controller_P;


import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pagetype = request.getParameter("page");

		switch (pagetype) {
		case "home":
			home(request, response);
			break;
			
		case "addemployee":
			addemployees(request, response);
			break;
			
		case "updateemployee":
			updateemployees(request, response);
			break;	
		
		default:
			errorpage(request, response);
			break;
		}
	}

	protected void home(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("index.jsp").forward(request, response);
	}

	protected void addemployees(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("addemployee.jsp").forward(request, response);
	}

	protected void updateemployees(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.getRequestDispatcher("updateemployee.jsp").forward(request, response);
	}
	
	protected void errorpage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("error.jsp").forward(request, response);
	}

}
