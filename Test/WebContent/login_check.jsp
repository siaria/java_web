<%@page import="java.sql.*"%>

<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp"%>

	<%
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		
		String sql="select * from member where id = ?";
		PreparedStatement psmt = conn.prepareStatement(sql);
		ResultSet rs = null;
		
		psmt.setString(1, id);
		rs = psmt.executeQuery();
		
		if(rs.next()){
			if(passwd.equals(rs.getString("passwd"))){
				session.setAttribute("id", rs.getString("id"));
			}
		}
		response.sendRedirect("./main.jsp");
		%>

</body>
</html>