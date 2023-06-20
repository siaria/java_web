public class Shoes extends Cloth { 		//Cloth 클래스 중 Shoes 클래스
	int size;
	
	public Shoes(String pname,int price,int size) {
		this.pname=pname;
		this.price=price;
		this.size=size;
	}
	public void printExtra() {
		System.out.print(" 사이즈:"+size);
	}
}