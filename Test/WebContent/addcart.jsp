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
		String filename = rs.getString("file_name");
        product = new Product(productId, productPrice, name, brand, filename);
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
        response.sendRedirect("products.jsp");
    } 
    else {
        response.sendRedirect("products.jsp");
    }
%>