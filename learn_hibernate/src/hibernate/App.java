package hibernate;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import model.Employees;

public class App {

	public static void main(String[] args) {
		SessionFactory factory=new Configuration().configure("hibernate.cfg.xml").addAnnotatedClass(Employees.class).buildSessionFactory();
		Session session=factory.getCurrentSession();
		
		try {
			//create object of the entity class
			Employees employee=new Employees("sugesh","101","IT",23);
			//start transaction
			session.beginTransaction();
			//perform operations this will load the details as row to insert in database
			session.save(employee);
			//commit transaction
			session.getTransaction().commit();
			System.out.println("Row added");
		}finally {
			session.close();
			factory.close();
		}
	}

}
