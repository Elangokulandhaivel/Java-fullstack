package model;

import javax.persistence.*;

@Entity
@Table(name = "eit.employees")
public class Employees {
	
	@Column(name="ename")
	String ename;
	@Id
	@Column(name="id")
	String id;
	@Column(name="department")
	String department;
	@Column(name="experience")
	int experience;
	
	public Employees(String ename, String id, String department, int experience) {
		super();
		this.ename = ename;
		this.id = id;
		this.department = department;
		this.experience = experience;
	}
	
	public String getEname() {
		return ename;
	}
	public void setEname(String ename) {
		this.ename = ename;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
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
