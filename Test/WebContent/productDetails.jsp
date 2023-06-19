<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
<%@ page import="dto.Product"%>

<%
    // 전달받은 상품 ID 파라미터 확인
    int productId = Integer.parseInt(request.getParameter("productId"));

    // 상품 정보를 가져오기 위한 SQL 쿼리
    String sql = "SELECT * FROM product WHERE product_id = ?";
    PreparedStatement pstmt = conn.prepareStatement(sql);
    pstmt.setInt(1, productId);
    ResultSet rs = pstmt.executeQuery();

    Product product = null;

    if (rs.next()) {
        // 상품 정보 가져오기
        int productPrice = rs.getInt("product_price");
        String name = rs.getString("name");
        String brand = rs.getString("brand");

        product = new Product(productId, productPrice, name, brand);
    }

    rs.close();
    pstmt.close();
    conn.close();
%>

<!DOCTYPE html>
<html>
<head>
    <title>상품 상세 정보</title>
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
    <h1>상품 상세 정보</h1>
    <% if (product != null) { %>
    <table>
        <tr>
            <th>상품 아이디</th>
            <th>상품 가격</th>
            <th>상품 이름</th>
            <th>브랜드</th>
        </tr>
        <tr>
            <td><%= product.getProductId() %></td>
            <td><%= product.getProductPrice() %></td>
            <td><%= product.getName() %></td>
            <td><%= product.getBrand() %></td>
        </tr>
    </table>
    <% } else { %>
    <p>상품을 찾을 수 없습니다.</p>
    <% } %>
</body>
</html>