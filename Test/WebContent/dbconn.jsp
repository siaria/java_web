<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@page import="java.sql.*" %>

<%
	Connection conn=null;

	String url="jdbc:mysql://localhost:3306/projectdb";
	String user="root";
	String password="1234";
	
	Class.forName("com.mysql.jdbc.Driver");
	conn = DriverManager.getConnection(url,user,password);
	
	System.out.println("[Database 연결 성공]");
%>