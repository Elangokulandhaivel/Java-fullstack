package database;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;

import javax.sql.DataSource;

import model.Employee;

public class Connectivity {

	public List<Employee> getemployees(DataSource data){
		
		//create connection and needed objects
				List<Employee> employees=new ArrayList<>();
				Connection con=null;
				Statement stm=null;
				ResultSet rs=null;
				try {
					con=data.getConnection();
					String query="select * from employees";
					stm=con.createStatement();
					rs=stm.executeQuery(query);
					
					while(rs.next()) {
						employees.add(new Employee(rs.getString(1),rs.getInt(2),rs.getString(3),rs.getInt(4)));
					}
				} catch (SQLException e) {
					
					e.printStackTrace();
				}
		
		return employees;
	}
	
	public boolean addemployees(DataSource data,Employee employee) {
		Connection con=null;
		PreparedStatement stam=null;
		
		try {
			con=data.getConnection();
			String query="insert into employees (ename,id,department,experience) values(?,?,?,?)";
			stam=con.prepareStatement(query);
			stam.setString(1, employee.ename);
			stam.setInt(2, employee.id);
			stam.setString(3, employee.department);
			stam.setInt(4, employee.experience);
			stam.execute();
			return true;
		} catch (SQLException e) {
			return false;	
		}
	}
	
	
	
	public boolean updateemployees(DataSource data,Employee employee) {
		Connection con=null;
		PreparedStatement stam=null;
		
		try {
			con=data.getConnection();
			String query="update employees set ename=?,department=?,experience=? where id=?";
			stam=con.prepareStatement(query);
			stam.setString(1, employee.ename);
			
			stam.setString(2, employee.department);
			stam.setInt(3, employee.experience);
			stam.setInt(4, employee.id);
			stam.executeUpdate();
			return true;
		}
		catch(Exception e) {
			return false;
		}
	
	}
	
	public boolean deleteemployee(DataSource data,int id) {
		Connection con=null;
		PreparedStatement stam=null;
		
		try {
			con=data.getConnection();
			String query="delete from employees where id=?";
			stam=con.prepareStatement(query);
			stam.setInt(1, id);
			stam.execute();
			return true;
		}
		catch(Exception e) {
			return false;
		}
	
	}
	
	
	
}
