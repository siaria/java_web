<%@page import="javafx.scene.control.Alert"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>

	<%
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("passwd");

		String url = "jdbc:mysql://localhost:3306/projectdb";
		String user = "root";
		String password = "1234";

		String sql = "select * from member where id =? and passwd =?";

		try {
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("[Database 연결 성공]");
			
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			
			rs = pstmt.executeQuery();

			if (rs.next()) {
				if(passwd.equals(rs.getString("passwd"))) 

				session.setAttribute("id", id);
				
				System.out.println("[로그인 성공]");
				response.sendRedirect("main.jsp");

			} else {
				response.sendRedirect("login.jsp");
				
				System.out.println("[로그인 실패]");

			}
			
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect("login.jsp");
		} finally {
			try {
				if (conn != null)
					conn.close();
				if (pstmt != null)
					pstmt.close();
				if (rs != null)
					rs.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	%>

</body>
</html>