package model;


public class Employee{
	public String ename;
	public int id;
	public String department;
	public int experience;
	
	public Employee(String ename,int id,String department,int experience){
		this.ename=ename;
		this.id=id;
		this.department=department;
		this.experience=experience;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public int getExperience() {
		return experience;
	}

	public void setExperience(int experience) {
		this.experience = experience;
	}
	
	
}