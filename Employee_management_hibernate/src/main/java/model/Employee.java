package model;

import javax.persistence.*;

@Entity(name="employees")
@Table(name="employees")
public class Employee {

	@Column(name="ename")
	private String ename;
	@Id
	@Column(name="id")
	private String id;
	@Column(name="department")
	private String department;
	@Column(name="experience")
	private int experience;

	public Employee() {
	}

	public Employee(String ename, String id, String department, int experience) {
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
