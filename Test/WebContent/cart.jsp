<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product"%>

<!DOCTYPE html>
<%
    String cartId = session.getId();
%>
<html>
<head>
    <title>장바구니</title>
    <style>
       
    </style>
 
    <script type="text/javascript">
        function Buy() {
            if (confirm("이 상품을 구매 하시겠습니까?")) {
                location.href = "cart.jsp";
            } else {
                document.addForm.reset();
            }
        }
        
        function deleteCart() {
            if (confirm("장바구니를 비우시겠습니까?")) {
                location.href = "deleteCart.jsp";
            }
        }
        
        function addToCart(productId) {
            if (confirm("이 상품을 장바구니에 추가하시겠습니까?")) {
                location.href = "addcart.jsp?productId=" + productId;
            }else{
            	response.sendRedirect("productDetails.jsp");
            }
            	
        }
    </script>
</head>
<body>
    <h1>장바구니</h1>
    <% 
        List<Product> cartItems = (List<Product>) session.getAttribute("cartItems");
        if (cartItems != null && !cartItems.isEmpty()) { 
    %>
    <tr>
        <td align="left"><a href="deleteCart.jsp?cartId=<%= cartId %>" class="btn btn-danger">삭제하기</a></td>
    </tr>
    <table>
        <tr>
            <th>상품 아이디</th>
            <th>상품 가격</th>
            <th>상품 이름</th>
            <th>브랜드</th>
            <th></th>
        </tr>
        <% 
            int totalPrice = 0;
            for (Product product : cartItems) { 
                totalPrice += product.getProductPrice();
        %>
            <tr>
                <td><%= product.getProductId() %></td>
                <td><%= product.getProductPrice() %></td>
                <td><%= product.getName() %></td>
                <td><%= product.getBrand() %></td>
                
            </tr>
        <% } %>
        <tr>
            <td colspan="4">총 가격:</td>
            <td><%= totalPrice %></td>
            <td><input type="button" value="구매" onclick="Buy()"></td>
        </tr>
    </table>
        
    <% } else { %>
        <p>장바구니가 비어있습니다.</p>
    <% } %>
</body>
</html>