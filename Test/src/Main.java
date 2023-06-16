
import java.util.Scanner;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.util.*;


public class Main extends Printmenu {
	public static void main(String args[]) {
		Scanner sc=new Scanner(System.in);
		int pass=0;
		
		
		while(true) {
			Print_menu();
			int ans=sc.nextInt();
			sc.nextLine();
			if(ans==1) {
				System.out.println("로그인을 위해 ID를 입력하세요.");
				System.out.print("ID입력:");
				String id=sc.nextLine();
				System.out.print("비밀번호 입력: ");
				String pw=sc.nextLine();
				
				File file=new File("C:\\Users\\삼성\\Desktop\\Member\\MemberDB.txt");
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
						}
						bufReader.close();
					} catch (IOException e) {
						e.printStackTrace();
					}
				}catch (FileNotFoundException e) {
					e.printStackTrace();
				}
			}
			else if(ans==2) {
				File file=new File("C:\\Users\\삼성\\Desktop\\Member\\MemberDB.txt");
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
						System.out.println("회원가입 완료");
						}
					filewriter.close();
				}catch(IOException e) {
					e.printStackTrace(); 
				}
			}
			}
	}
}