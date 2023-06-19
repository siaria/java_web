

public abstract class Cloth {
	String pname;
	int price;
	
	public void printCloth() {
		System.out.print("��ǰ��: "+pname+" ");
		System.out.print("����: "+price+" ");
		printExtra();
		System.out.println(" ");
	}
	public abstract void printExtra();
}
