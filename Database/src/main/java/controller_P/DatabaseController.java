package controller_P;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Employee;

import java.io.IOException;

import javax.sql.DataSource;

import database.Connectivity;

public class DatabaseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	@Resource(name = "jdbc/project")
	private DataSource data;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String pagetype = request.getParameter("page");

		switch (pagetype) {
		case "listemployees":
			listemployees(request, response);
			break;
			
		case "deleteemployee":
			deleteemployee(request, response);
			break;
			
		default:
			errorpage(request, response);
			break;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String formtype=request.getParameter("formtype");
		switch(formtype){
		case "addemployee":
			addemployee(request,response);
			break;
			
		case "updateemployee":
			updateemployee(request,response);
			break;
		default:
			errorpage(request, response);
			break;
		}
		

	}

	
	protected void addemployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(new Connectivity().addemployees(data, new Employee(request.getParameter("ename"),Integer.parseInt(request.getParameter("id")),request.getParameter("department"),Integer.parseInt(request.getParameter("experience"))))) {
			listemployees(request,response);
		}
		else {
			errorpage(request,response);
		}
		
		
	}
			
			
	protected void updateemployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(new Connectivity().updateemployees(data, new Employee(request.getParameter("ename"),Integer.parseInt(request.getParameter("id")),request.getParameter("department"),Integer.parseInt(request.getParameter("experience"))))) {
			listemployees(request,response);
		}
		else {
			errorpage(request,response);
		}
		
		
	}
	
	
	protected void deleteemployee(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		if(new Connectivity().deleteemployee(data, Integer.parseInt(request.getParameter("id")))) {
			listemployees(request,response);
		}
		else {
			errorpage(request,response);
		}
		
		
	}
			
			
			
			
	protected void listemployees(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setAttribute("employee", new Connectivity().getemployees(data));
		request.getRequestDispatcher("employees.jsp").forward(request, response);
	}
	
	
	protected void errorpage(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.getRequestDispatcher("error.jsp").forward(request, response);
	}

}
