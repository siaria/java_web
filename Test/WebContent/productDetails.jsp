<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ include file="dbconn.jsp" %>
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
%>

<!DOCTYPE html>
<html>
<head>
    <title>상품 상세 정보</title>
    <style>
        
    </style>
    <script type="text/javascript">
	function Buy(){
		if(confirm("이 상품을 구매 하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addForm.reset();
		}
	}
	function addToCart(){
		if(confirm("이 상품을 장바구니에 추가하시겠습니까?")){
			document.addForm.submit();
		} else{
			document.addForm.reset();
		}
		
	}
</script>
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
            <th>구매/장바구니</th> 
        </tr>
        <tr>
            <td><%= product.getProductId() %></td>
            <td><%= product.getProductPrice() %></td>
            <td><%= product.getName() %></td>
            <td><%= product.getBrand() %></td>
            <td>
                <form action="addcart.jsp" method="post">
                    <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                    <input type="button" value="구매" onclick="Buy()">
                    <input type="submit" value="장바구니에 추가" onclick="addToCart()">
                    
                </form>
            </td>
        </tr>
    </table>
    <% } else { %>
    <p>상품을 찾을 수 없습니다.</p>
    <% } %>
</body>
</html>