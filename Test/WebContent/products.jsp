<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product"%>

<%
    String sql = "SELECT * FROM product ORDER BY product_id ASC";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    ResultSet rs = pstmt.executeQuery();

    ArrayList<Product> products = new ArrayList<>();

    while (rs.next()) {
        int productId = rs.getInt("product_id");
        int productPrice = rs.getInt("product_price");
        String name = rs.getString("name");
        String brand = rs.getString("brand");

        Product product = new Product(productId, productPrice, name, brand);
        products.add(product); 
    }

    rs.close();
    pstmt.close();
    conn.close();
%>

<!DOCTYPE html>
<html>
<head>
    <title>상품 페이지</title>
    <style>
        table {
            width: 100%;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
<%@ include file="_navbar.jsp" %>

    <table>
        <tr>
            <th>상품 아이디</th>
            <th>상품 가격</th>
            <th>상품 이름</th>
            <th>브랜드</th>
            <th>상세 정보</th>
        </tr>
        <% for (Product product : products) { %>
        <tr>
            <td><%= product.getProductId() %></td>
            <td><%= product.getProductPrice() %></td>
            <td><%= product.getName() %></td>
            <td><%= product.getBrand() %></td>
            <td><a href="productDetails.jsp?productId=<%= product.getProductId() %>">상세 보기</a></td>
        </tr>
        <% } %>
    </table>
</body>
</html>