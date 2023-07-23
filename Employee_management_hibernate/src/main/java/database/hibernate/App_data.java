package database.hibernate;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import model.Employee;

public class App_data {
	SessionFactory factory = new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employee.class).buildSessionFactory();
	Session session=factory.getCurrentSession();
	public void add_employee(Employee employee) {
		
		try {
		session.beginTransaction();
		session.save(employee);
		session.getTransaction().commit();
		System.out.println("Row added successfully...");
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
			factory.close();
		}
		
	}
	
	
	public List<Employee> list_employee(){
		
		List<Employee> employees=null;
		try {
			session.beginTransaction();
			employees=(List<Employee>)session.createQuery("from employees").getResultList();
			session.getTransaction().commit();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			session.close();
			factory.close();
		}
		
		return employees;
	}
	
	public boolean update_employee(String name,String id, String department, int experience) {
		
		try {
		session.beginTransaction();
		Employee employee=session.load(Employee.class, id);
		employee.setEname(name);
		employee.setDepartment(department);
		employee.setExperience(experience);
		session.update(employee);
		session.getTransaction().commit();
		System.out.println("Row updated successfully...");
		
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			session.close();
			factory.close();
			
		}
		return true;
		
	}
	
	public boolean delete(String id) {
		
		try {
			session.beginTransaction();
			Employee employee=session.get(Employee.class, id);
			session.delete(employee);
			session.getTransaction().commit();
		}
		catch(Exception e) {
			e.printStackTrace();
			return false;
		}
		finally {
			session.close();
			factory.close();
		}
		return true;
	}
	
	
}
