

import java.sql.DriverManager;
import java.sql.*;
public class DB_test {
	String dbUrl="jdbc:mysql://localhost:3306/javaProjectDB";
	String user="root";
	String password="1234";
	Connection conn=null;
	Statement stmt=null;
	
	DB_test() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn=DriverManager.getConnection(dbUrl,user,password);
			stmt=conn.createStatement();
			System.out.println("mysql jdbc test:connect ok!");
		}catch(Exception e) {
			System.out.println(e);
		}
	}
public static void main(String args[]) {
	new DB_test();
}
}