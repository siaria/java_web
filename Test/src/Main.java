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
	ArrayList<Cloth> cloths=new ArrayList<>();   //옷 클래스를 ArrayList로 저장
	ArrayList<Customer> customers=new ArrayList<Customer>();	//고객 클래스를 ArrayList로 저장
	Scanner sc=new Scanner(System.in);
	
		public void regProduct() { 	//기존 등록된 상품
			Clothes shory=new Clothes("반팔",25000);
			cloths.add(shory);
			Clothes shorts=new Clothes("반바지",18000);
			cloths.add(shorts);
			Shoes sp=new Shoes("운동화",30000,270);
			cloths.add(sp);
			sp=new Shoes("구두",50000,265);
			cloths.add(sp);
		}
		public void regMember() { 	//기존 등록된 회원
			Customer user=new Customer("가나다","서울","010-1234-5678");
			customers.add(user);
			Customer user1=new Customer("라마바","울산","010-4321-9876");
			customers.add(user1);
			Customer user2=new Customer("사아자","대구","010-4536-6754");
			customers.add(user2);
		}
		
		public void Register() {	 //상품 등록(ArrayList에 추가하는 방식)
			System.out.println("상품 등록");
			System.out.println("1. 의류// 2. 신발");
			try {
				int num=sc.nextInt();
					if(num==2) {	//Shoes에 입력받은 상품 추가
						System.out.println("상품의 이름 입력: ");
						String name=sc.next();
						System.out.println("가격 입력: ");
						int price=sc.nextInt();
						System.out.println("사이즈 입력: ");
						int size=sc.nextInt();
						Shoes s=new Shoes(name,price,size);
						cloths.add(s);
						System.out.println(name+"상품이 상품목록에 추가되었습니다.");
					}
					else if(num==1) {	//Clothes에 입력받은 상품 추가
						System.out.println("상품의 이름 입력: ");
						String name=sc.next();
						System.out.println("가격 입력: ");
						int price=sc.nextInt();
						Clothes p=new Clothes(name,price);
						cloths.add(p);
						System.out.println(name+"상품이 상품목록에 추가되었습니다.");
					}
					else {
						System.out.println("잘못된 값을 입력하셨습니다.");
						System.exit(1);
					}
			}catch(InputMismatchException e) {     //예외처리 입력받은 값이 문자면 예외처리 실행
				System.out.println("잘못된 값을 입력 하셨습니다. 다시 입력하세요.");
				sc.next();
				e.printStackTrace();
			}
		}
		public void remove() {	   //상품 삭제 (입력받은 상품의 이름을 ArrayList와 비교하여 삭제하는 방식)
			System.out.println("상품 삭제를 선택하셨습니다.");
				while(true) {
					boolean b=true;
					System.out.println("삭제하실 상품의 이름을 입력하세요");
					String name=sc.next();
						for(int i=0;i<cloths.size();i++) {
							if(name.equals(cloths.get(i).getPname())) {
								cloths.remove(i);
								System.out.println(name+"의 상품정보가 삭제되었습니다.");
								b=false;
							}
						}
				if(b) {
					System.out.println("상품이 존재하지 않습니다. 다시 시도하세요.");
				}
				else if(b) {
					break;
				}
			break;}
		}
			
		public void member() {		//회원관리 함수
			System.out.println("===================");
			System.out.println("회원관리를 선택하셨습니다.");
			Member_menu();
			int a=sc.nextInt();
				if(a==1) {			//회원 목록 출력
					int i=0;
					for(Customer p:customers) {
						p.printMember();
						i++;
					}
				}
				else if(a==2) {			//회원 등록(ArrayList에 추가하는 방식)
					System.out.println("회원 등록을 선택하셨습니다.");
					System.out.println("추가할 회원의 이름을 입력하세요.: ");
					String name=sc.next();
					System.out.println("추가할 회원의 주소를 입력하세요.: ");
					String address=sc.next();
					System.out.println("추가할 회원의 번호를 입력하세요.: ");
					String phone=sc.next();
					customers.add(new Customer(name,address,phone));
					System.out.println("회원의 정보가 등록되었습니다.");
				}
				else if(a==3) {			//회원 정보 수정(수정할 이름 선택 후 클래스에 저장된 항목 중 선택하여 수정)
					System.out.println("회원 정보 수정을 선택하셨습니다.");
						while (true) {
							boolean b=true;
							System.out.println("수정하실 회원의 이름을 입력하세요.: ");
							String name=sc.next();
								for(int i=0;i<customers.size();i++) {
									if(name.equals(customers.get(i).getName())) {
										b=false;
										System.out.println(name+"님의 수정하실 항목을 선택하세요. 1.이름 2.주소 3.휴대폰 번호");
										int n=sc.nextInt();
											if(n==1) {
												System.out.println("이름을 새로 입력하세요.: ");
												name=sc.next();
												customers.get(i).setName(name);
												System.out.println("회원의 이름이 "+name+"으로 수정되었습니다.");
							
											}
											else if(n==2) {
												System.out.println("주소를 새로 입력하세요.: ");
												String address=sc.next();
												customers.get(i).setAddress(address);
												System.out.println("회원의 주소가 "+address+"으로 수정되었습니다.");
							
											}
											else {
												System.out.println("번호를 새로 입력하세요.: ");
												String phone=sc.next();
												customers.get(i).setAddress(phone);
												System.out.println("회원의 휴대폰 번호가 "+phone+"으로 수정되었습니다.");
							
											}
									}
								}	
					if(b) {
						System.out.println("일치하는 회원의 이름이 존재하지 않습니다. 다시 시도 하세요.");
					}
					else if(b) {
						break;
					}
				break;}
			}
			else if(a==4) {	
				System.out.println("회원 삭제를 선택하셨습니다.");
					while(true) {//회원 삭제(입력 받은 이름 비교 후 일치하면 삭제)
						boolean b=true;
						System.out.println("삭제하실 회원의 이름을 입력하세요");
						String name=sc.next();
							for(int i=0;i<customers.size();i++) {
								if(name.equals(customers.get(i).getName())) {
									customers.remove(i);
									System.out.println(name+"님의 회원 정보가 삭제되었습니다.");
									b=false;
								}
							}
					if(b) {
						System.out.println("회원이 존재하지 않습니다. 다시 시도하세요.");
						
					}
					else if(b) {
						break;
					}
				break;}
			}
			else {
				System.out.println("상품관리 페이지로 돌아갑니다.");
			}
		}
		
		public void start() {		//로그인,회원가입(텍스트 파일 저장 및 비교 방식)
			int pass=0;
			Scanner sc=new Scanner(System.in);
			
				while (true) {
					Print_menu();
					int ans=sc.nextInt();
					sc.nextLine();
						if(ans==1) {	//파일을 한줄씩 읽어와서 id와 pw값이 passId와 passPw값이 일치하면 로그인 성공
							System.out.println("로그인을 위해 ID를 입력하세요.");
							System.out.print("ID입력:");
							String id=sc.nextLine();
							System.out.print("비밀번호 입력: ");
							String pw=sc.nextLine();
							
							File file=new File("C:\\Users\\User\\Desktop\\Member.txt"); //위치
							try {
								if(file.createNewFile()) { //파일 없을 경우 생성
									System.out.println("로그인 파일이 생성되었습니다.");
								}
							}catch(IOException e) {
								System.out.println("지정된 경로를 찾을 수 없습니다.");
								e.printStackTrace();
							}
							
							try {
								FileReader filereader=new FileReader(file);
								BufferedReader bufReader=new BufferedReader(filereader);
								String line="";
								try {
									while((line=bufReader.readLine())!=null) {
										int passId=line.indexOf(id);
										int passPw=line.indexOf(pw);
										if(passId!=-1&&passPw!=-1) {
											System.out.println("로그인 성공");
											pass=1;
										}
									}
										if(pass==0) {
											System.out.println("로그인 실패");
											break;
										}
										bufReader.close();
								} catch (IOException e) {
									e.printStackTrace();
								}
							}catch (FileNotFoundException e) {
								System.out.println("없는 파일 입니다.");
								e.printStackTrace();
						
							}
						}
						else if(ans==2) {
							File file=new File("C:\\Users\\User\\Desktop\\Member.txt");
							try {
								if(file.createNewFile()) {
									System.out.println("로그인 파일이 생성되었습니다.");
								}
							}catch(IOException e) {
								System.out.println("지정된 경로를 찾을 수 없습니다.");
								e.printStackTrace();
							}
							try {
								FileWriter filewriter=new FileWriter(file,true);
								if(file.isFile()&&file.canWrite()) {
									System.out.println("회원가입을 위해 ID와 비밀번호를 입력하세요.");
									System.out.println("ID입력: ");
									filewriter.append(sc.nextLine());
									filewriter.append("\t");
									System.out.println("비밀번호 입력:");
									filewriter.append(sc.nextLine());
									filewriter.append("\r");
									System.out.println("회원가입 완료 다시 로그인 하세요.");
							}
								filewriter.close();
								break;
							}catch(Exception e) {
								System.out.println("회원가입 오류입니다.");
								e.printStackTrace(); 
							}
						}else {
							break;
						}
				
				while(true) {	//상품 관리 항목
				Print_menu2();
				int ans2=sc.nextInt();
				if(ans2==1) {	//상품 목록 출력
					for(Cloth p:cloths) {
						int i=0;
						p.printCloth();
						i++;
					}
				}
				else if(ans2==2) { //상품 등록
					Register();
				}
				else if (ans2==3) { //상품 제거
					remove();
				}
				else if(ans2==4){   //회원 관리 선택
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
	


