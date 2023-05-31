<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<title>Insert title here</title>
</head>
<body>
	<%@ include file="dbconn.jsp" %>
	<%
		request.setCharacterEncoding("utf-8");
		
		String id = request.getParameter("id");
		String passwd = request.getParameter("password");
		String referrer = request.getParameter("referrer");
		
		Statement stmt=null;
		
		try{
			String sql="INSERT INTO member(id,passwd,referrer) VALUES('"+id+"','"+passwd+"','"+referrer+"')";
			stmt=conn.createStatement();
			stmt.executeUpdate(sql);
			
			response.sendRedirect("./login.jsp");
			
			}catch (SQLException ex) {
				out.println("회원가입 오류<br>");
				out.println("SQLException:"+ex.getMessage());
				
			}finally {
				if(stmt!=null)
					stmt.close();
				if(conn!=null)
					conn.close();
			}
	%>
</body>
</html>