package beans;

public class User {
	private String firstname;
	private String lastname;
	
	public User(){
		firstname="Elango";
		lastname="Kulandhaivel";
	}
	
	public void setfirstname(String name) {
		firstname=name;
	}
	
	public void setlastname(String name) {
		lastname=name;
	}
	
	public String getfirstname() {
		return firstname;
	}
	
	public String getlastname() {
		return lastname;
	}
}
