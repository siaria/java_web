<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Goods"%>
<%@ page import="dao.GoodRepository" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>

<jsp:useBean id="goodDAO" class="dao.GoodRepository" scope="session" />

<html>
<head>
<link rel = "stylesheet"
		href = "https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<%-- <jsp:include page="menu.jsp" /> --%>
	<div class="jumbotron">
        <div class="container">
            <h1 class="display-3">상품 목록</h1>
        </div>
    </div>
    <div class="container">
        <div class="row" align="center">
        	<%@ include file="dbconn.jsp" %>
            <%
                PreparedStatement pstmt = null;
            	ResultSet rs = null;
            	String sql = "select * from product";
            	pstmt = conn.prepareStatement(sql);
            	rs = pstmt.executeQuery();
            	while (rs.next()) {
            %>
            <div class="col-md-4">
                <h3><%=rs.getString("p_gname")%></h3>
                <p><%=rs.getString("p_brand")%>
                <p><%=rs.getString("p_gprice")%>원
                <p> 
                <a href="./Goods.jsp?id=<%=rs.getString("p_goodid")%>" 
                class="btn btn-secondary" role="button"> 상세 정보 &raquo;</a>
            </div>
            <%
                }
            	if(rs != null) 
            	rs.close();
            	if(pstmt != null) 
            	pstmt.close();
            	if(conn != null)
            	conn.close();
			%>
        </div>
        <hr>
    </div>
   <%--  <jsp:include page="footer.jsp" /> --%>

</body>
</html>