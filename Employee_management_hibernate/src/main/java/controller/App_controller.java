package controller;

import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;
import database.hibernate.App_data;
import java.io.IOException;
import java.util.List;

public class App_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		
		switch (page) {
		case "view":
			view(request, response);
			break;
		case "update":
			update_get(request,response);
			break;
		case "delete":
			delete(request,response);
			break;

		default:
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String page = request.getParameter("page");
		switch (page) {
		case "update":
			update_post(request, response);
			break;
		case "default":
			request.getRequestDispatcher("index.jsp").forward(request, response);
			break;
		}
	}

	void view(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Employee> employees = new App_data().list_employee();
		request.setAttribute("employeelist", employees);
		request.getRequestDispatcher("employeelist.jsp").forward(request, response);
	}

	void update_post(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Employee employee = new Employee(request.getParameter("ename"), request.getParameter("id"),
				request.getParameter("department"), Integer.parseInt(request.getParameter("experience")));
		request.setAttribute("employee", employee);
		request.getRequestDispatcher("update_employee.jsp").forward(request, response);
	}

	void update_get(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//System.out.println("exp : "+request.getParameter("department"));
		boolean status = new App_data().update_employee(request.getParameter("ename"), request.getParameter("id"),
				request.getParameter("department"),
				3);
		if (status) {
			response.sendRedirect("App_controller?page=view");
		} else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
	}
	
	void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		boolean status= new App_data().delete(request.getParameter("id"));
		if(status) {
		response.sendRedirect("App_controller?page=view");
		}
		else {
			request.getRequestDispatcher("error.jsp").forward(request, response);
		}
		}
}
