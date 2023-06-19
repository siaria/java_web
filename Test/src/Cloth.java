

public abstract class Cloth {    //�Ƿ� Ŭ����
	String pname;
	int price;
	
	public String getPname() {
		return pname;
	}
	
	public void setPname(String pname) {
		this.pname=pname;
	}
	
	public void printCloth() {
		System.out.print("��ǰ��: "+pname+" ");
		System.out.print("����: "+price+" ");
		printExtra();
		System.out.println(" ");
	}
	public abstract void printExtra();
}
