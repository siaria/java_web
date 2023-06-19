
import java.util.Scanner;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;

public class Main extends Printmenu implements shop {
	ArrayList<Cloth> cloths=new ArrayList<>();   //�� Ŭ������ ArrayList�� ����
	ArrayList<Customer> customers=new ArrayList<Customer>();	//�� Ŭ������ ArrayList�� ����
	Scanner sc=new Scanner(System.in);
	
		public void regProduct() { 	//���� ��ϵ� ��ǰ
			Clothes shory=new Clothes("����",25000);
			cloths.add(shory);
			Clothes shorts=new Clothes("�ݹ���",18000);
			cloths.add(shorts);
			Shoes sp=new Shoes("�ȭ",30000,270);
			cloths.add(sp);
			sp=new Shoes("����",50000,265);
			cloths.add(sp);
		}
		public void regMember() { 	//���� ��ϵ� ȸ��
			Customer user=new Customer("������","����","010-1234-5678");
			customers.add(user);
			Customer user1=new Customer("�󸶹�","���","010-4321-9876");
			customers.add(user1);
			Customer user2=new Customer("�����","�뱸","010-4536-6754");
			customers.add(user2);
		}
		
		public void Register() {	 //��ǰ ���(ArrayList�� �߰��ϴ� ���)
			System.out.println("��ǰ ���");
			System.out.println("1. �Ƿ�// 2. �Ź�");
			try {
				int num=sc.nextInt();
					if(num==2) {	//Shoes�� �Է¹��� ��ǰ �߰�
						System.out.println("��ǰ�� �̸� �Է�: ");
						String name=sc.next();
						System.out.println("���� �Է�: ");
						int price=sc.nextInt();
						System.out.println("������ �Է�: ");
						int size=sc.nextInt();
						Shoes s=new Shoes(name,price,size);
						cloths.add(s);
						System.out.println(name+"��ǰ�� ��ǰ��Ͽ� �߰��Ǿ����ϴ�.");
					}
					else if(num==1) {	//Clothes�� �Է¹��� ��ǰ �߰�
						System.out.println("��ǰ�� �̸� �Է�: ");
						String name=sc.next();
						System.out.println("���� �Է�: ");
						int price=sc.nextInt();
						Clothes p=new Clothes(name,price);
						cloths.add(p);
						System.out.println(name+"��ǰ�� ��ǰ��Ͽ� �߰��Ǿ����ϴ�.");
					}
					else {
						System.out.println("�߸��� ���� �Է��ϼ̽��ϴ�.");
						System.exit(1);
					}
			}catch(InputMismatchException e) {     //����ó�� �Է¹��� ���� ���ڸ� ����ó�� ����
				System.out.println("�߸��� ���� �Է� �ϼ̽��ϴ�. �ٽ� �Է��ϼ���.");
				sc.next();
				e.printStackTrace();
			}
		}
		public void remove() {	   //��ǰ ���� (�Է¹��� ��ǰ�� �̸��� ArrayList�� ���Ͽ� �����ϴ� ���)
			System.out.println("��ǰ ������ �����ϼ̽��ϴ�.");
				while(true) {
					boolean b=true;
					System.out.println("�����Ͻ� ��ǰ�� �̸��� �Է��ϼ���");
					String name=sc.next();
						for(int i=0;i<cloths.size();i++) {
							if(name.equals(cloths.get(i).getPname())) {
								cloths.remove(i);
								System.out.println(name+"�� ��ǰ������ �����Ǿ����ϴ�.");
								b=false;
							}
						}
				if(b) {
					System.out.println("��ǰ�� �������� �ʽ��ϴ�. �ٽ� �õ��ϼ���.");
				}
				else if(b) {
					break;
				}
			break;}
		}
			
		public void member() {		//ȸ������ �Լ�
			System.out.println("===================");
			System.out.println("ȸ�������� �����ϼ̽��ϴ�.");
			Member_menu();
			int a=sc.nextInt();
				if(a==1) {			//ȸ�� ��� ���
					int i=0;
					for(Customer p:customers) {
						p.printMember();
						i++;
					}
				}
				else if(a==2) {			//ȸ�� ���(ArrayList�� �߰��ϴ� ���)
					System.out.println("ȸ�� ����� �����ϼ̽��ϴ�.");
					System.out.println("�߰��� ȸ���� �̸��� �Է��ϼ���.: ");
					String name=sc.next();
					System.out.println("�߰��� ȸ���� �ּҸ� �Է��ϼ���.: ");
					String address=sc.next();
					System.out.println("�߰��� ȸ���� ��ȣ�� �Է��ϼ���.: ");
					String phone=sc.next();
					customers.add(new Customer(name,address,phone));
					System.out.println("ȸ���� ������ ��ϵǾ����ϴ�.");
				}
				else if(a==3) {			//ȸ�� ���� ����(������ �̸� ���� �� Ŭ������ ����� �׸� �� �����Ͽ� ����)
					System.out.println("ȸ�� ���� ������ �����ϼ̽��ϴ�.");
						while (true) {
							boolean b=true;
							System.out.println("�����Ͻ� ȸ���� �̸��� �Է��ϼ���.: ");
							String name=sc.next();
								for(int i=0;i<customers.size();i++) {
									if(name.equals(customers.get(i).getName())) {
										b=false;
										System.out.println(name+"���� �����Ͻ� �׸��� �����ϼ���. 1.�̸� 2.�ּ� 3.�޴��� ��ȣ");
										int n=sc.nextInt();
											if(n==1) {
												System.out.println("�̸��� ���� �Է��ϼ���.: ");
												name=sc.next();
												customers.get(i).setName(name);
												System.out.println("ȸ���� �̸��� "+name+"���� �����Ǿ����ϴ�.");
							
											}
											else if(n==2) {
												System.out.println("�ּҸ� ���� �Է��ϼ���.: ");
												String address=sc.next();
												customers.get(i).setAddress(address);
												System.out.println("ȸ���� �ּҰ� "+address+"���� �����Ǿ����ϴ�.");
							
											}
											else {
												System.out.println("��ȣ�� ���� �Է��ϼ���.: ");
												String phone=sc.next();
												customers.get(i).setAddress(phone);
												System.out.println("ȸ���� �޴��� ��ȣ�� "+phone+"���� �����Ǿ����ϴ�.");
							
											}
									}
								}	
					if(b) {
						System.out.println("��ġ�ϴ� ȸ���� �̸��� �������� �ʽ��ϴ�. �ٽ� �õ� �ϼ���.");
					}
					else if(b) {
						break;
					}
				break;}
			}
			else if(a==4) {	
				System.out.println("ȸ�� ������ �����ϼ̽��ϴ�.");
					while(true) {//ȸ�� ����(�Է� ���� �̸� �� �� ��ġ�ϸ� ����)
						boolean b=true;
						System.out.println("�����Ͻ� ȸ���� �̸��� �Է��ϼ���");
						String name=sc.next();
							for(int i=0;i<customers.size();i++) {
								if(name.equals(customers.get(i).getName())) {
									customers.remove(i);
									System.out.println(name+"���� ȸ�� ������ �����Ǿ����ϴ�.");
									b=false;
								}
							}
					if(b) {
						System.out.println("ȸ���� �������� �ʽ��ϴ�. �ٽ� �õ��ϼ���.");
						
					}
					else if(b) {
						break;
					}
				break;}
			}
			else {
				System.exit(0);
			}
		}
		
		public void start() {		//�α���,ȸ������(�ؽ�Ʈ ���� ���� �� �� ���)
			int pass=0;
			Scanner sc=new Scanner(System.in);
			
				while (true) {
					Print_menu();
					int ans=sc.nextInt();
					sc.nextLine();
						if(ans==1) {
							System.out.println("�α����� ���� ID�� �Է��ϼ���.");
							System.out.print("ID�Է�:");
							String id=sc.nextLine();
							System.out.print("��й�ȣ �Է�: ");
							String pw=sc.nextLine();
					
							File file=new File("C:\\Users\\�Ｚ\\Desktop\\Member\\MemberDB.txt");
							try {
								FileReader filereader=new FileReader(file);
								BufferedReader bufReader=new BufferedReader(filereader);
								String line="";
								try {
									while((line=bufReader.readLine())!=null) {
										int passId=line.indexOf(id);
										int passPw=line.indexOf(pw);
										if(passId!=-1&&passPw!=-1) {
											System.out.println("�α��� ����");
											pass=1;
										}
									}
										if(pass==0) {
											System.out.println("�α��� ����");
											break;
										}
										bufReader.close();
								} catch (IOException e) {
									e.printStackTrace();
								}
							}catch (FileNotFoundException e) {
								System.out.println("���� ���� �Դϴ�.");
								e.printStackTrace();
						
							}
						}
						else if(ans==2) {
							File file=new File("C:\\Users\\�Ｚ\\Desktop\\Member\\MemberDB.txt");
							try {
								FileWriter filewriter=new FileWriter(file,true);
								if(file.isFile()&&file.canWrite()) {
									System.out.println("ȸ�������� ���� ID�� ��й�ȣ�� �Է��ϼ���.");
									System.out.println("ID�Է�: ");
									filewriter.append(sc.nextLine());
									filewriter.append("\t");
									System.out.println("��й�ȣ �Է�:");
									filewriter.append(sc.nextLine());
									filewriter.append("\r");
									System.out.println("ȸ������ �Ϸ� �ٽ� �α��� �ϼ���.");
							}
								filewriter.close();
								break;
							}catch(Exception e) {
								System.out.println("ȸ������ �����Դϴ�.");
								e.printStackTrace(); 
							}
						}
				
				while(true) {	//��ǰ ���� �׸�
				Print_menu2();
				int ans2=sc.nextInt();
				if(ans2==1) {	//��ǰ ��� ���
					for(Cloth p:cloths) {
						int i=0;
						p.printCloth();
						i++;
					}
				}
				else if(ans2==2) { //��ǰ ���
					Register();
				}
				else if (ans2==3) { //��ǰ ����
					remove();
				}
				else if(ans2==4){   //ȸ�� ���� ����
					member();
				}
				else {
					break;
				}
				}
	}
}
		
public static void main(String args[]) {
	shop shop=new Main();
	shop.regProduct();
	shop.regMember();
	shop.start();
}
}	
	


