

public class Shoes extends Cloth { 		//Cloth Ŭ���� �� Shoes Ŭ����
	int size;
	
	public Shoes(String pname,int price,int size) {
		this.pname=pname;
		this.price=price;
		this.size=size;
	}
	public void printExtra() {
		System.out.print(" ������:"+size);
	}
}
