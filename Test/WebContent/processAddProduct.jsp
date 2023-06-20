<%@ page contentType="text/html; charset=utf-8" %>
<%@ page import="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.*" %>
<%@ page import="dto.Product" %>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>

<%
    request.setCharacterEncoding("UTF-8");

    String productId = request.getParameter("product_id");
    String productPrice = request.getParameter("product_price");
    String name = request.getParameter("name");
    String brand = request.getParameter("brand");
	String filename = request.getParameter("file_name");
    Integer price;

    if (productPrice == null || productPrice.isEmpty()) {
        price = 0;
    } else {
        try {
            price = Integer.parseInt(productPrice);
        } catch (NumberFormatException e) {
            price = 0; // 숫자로 변환할 수 없는 경우 기본값으로 설정
        }
    }

    PreparedStatement pstmt = null;
    String sql = "INSERT INTO product (product_id, product_price, name, brand,file_name) VALUES (?, ?, ?, ?,?)";
    pstmt = conn.prepareStatement(sql);
    pstmt.setString(1, productId);
    pstmt.setInt(2, price);
    pstmt.setString(3, name);
    pstmt.setString(4, brand);
    pstmt.setString(5, filename);
    pstmt.execute();

    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();

    response.sendRedirect("products.jsp");
%>