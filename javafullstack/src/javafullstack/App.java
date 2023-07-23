package javafullstack;



class Custom implements Comparable<Custom>{
	String name;
	Custom(String name){
		this.name=name;
	}
	@Override
	public int compareTo(Custom o) {
		System.out.println(o.name);
		return name.compareTo(o.name);
	}
	void setname(String name) {
		this.name=name;
	}
}

public class App {
	public static void main(String[] args) {
		
	Custom obj=new Custom("elango");
	
	
	System.out.println(obj.compareTo(new Custom("elang")));
	}
}
