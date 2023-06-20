
public abstract class Cloth {    //의류 클래스
	String pname;
	int price;
	
	public String getPname() {
		return pname;
	}
	
	public void setPname(String pname) {
		this.pname=pname;
	}
	
	public void printCloth() {
		System.out.print("상품명: "+pname+" ");
		System.out.print("가격: "+price+" ");
		printExtra();
		System.out.println(" ");
	}
	public abstract void printExtra();
}