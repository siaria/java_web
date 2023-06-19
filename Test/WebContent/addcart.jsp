<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product"%>

<%
    int productId = Integer.parseInt(request.getParameter("productId"));

   
    String sql = "SELECT * FROM product WHERE product_id = ?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, productId);
    ResultSet rs = pstmt.executeQuery();

    Product product = null;

    if (rs.next()) {
        int productPrice = rs.getInt("product_price");
        String name = rs.getString("name");
        String brand = rs.getString("brand");

   
        product = new Product(productId, productPrice, name, brand);
    }

    rs.close();
    pstmt.close();
    conn.close();

  
    if (product != null) {
        List<Product> cartItems = (List<Product>) session.getAttribute("cartItems");
        if (cartItems == null) {
            cartItems = new ArrayList<>();
        }
        cartItems.add(product);
        session.setAttribute("cartItems", cartItems);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>장바구니에 추가</title>
</head>
<body>
    <h1>장바구니에 추가</h1>
    <% if (product != null) { %>
        <p>상품이 장바구니에 추가되었습니다.</p>
        <p>장바구니를 확인하려면 <a href="cart.jsp">여기</a>를 클릭하세요.</p>
    <% } else { %>
        <p>상품을 찾을 수 없습니다.</p>
    <% } %>
</body>
</html>