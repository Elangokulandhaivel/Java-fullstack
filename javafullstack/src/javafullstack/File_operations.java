package javafullstack;

import java.io.*;

public class File_operations {

	public static void main(String[] args) {
//		File file=new File("D:\\javanotes\\notes.dat");
//		
//	try {
//	
//		BufferedWriter bf=new BufferedWriter(new FileWriter(file,true));
//		bf.write("hello");
//	
//		bf.close();
//	} catch (FileNotFoundException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	} catch (IOException e) {
//		// TODO Auto-generated catch block
//		e.printStackTrace();
//	}
		
		Details d1=new Details("ela","ioi");
		try(FileInputStream file=new FileInputStream(new File("D:\\javanotes\\notes.dat"))){
			try(ObjectInputStream ois=new ObjectInputStream(file)){
				Details d2=(Details) ois.readObject();
				System.out.println(d2);
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

}

class Details implements Serializable{
	String name;
	@Override
	public String toString() {
		return "Details [name=" + name + ", id=" + id + "]";
	}
	String id;
	Details(String name,String id){
		this.name=name;
		this.id=id;
	}
}