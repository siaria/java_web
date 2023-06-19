
public class Customer { 	//�� Ŭ����
	String name;
	String address;
	String phone;
	
	public Customer(String name,String address,String phone) {
		super();
		this.name=name;
		this.address=address;
		this.phone=phone;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name=name;
	}
	public String getAddress(String address) {
		return address;
	}
	public void setAddress(String address) {
		this.address=address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone=phone;
	}
	public void printMember() {
		System.out.print("ȸ����:"+name+" ");
		System.out.print("�ּ�: "+address+" ");
		System.out.print("�޴��� ��ȣ: "+phone+" ");
		System.out.println(" ");
	}
}
