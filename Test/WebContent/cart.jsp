<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product"%>

<!DOCTYPE html>
<%
    String cartId = session.getId();
%>
<html>
<head>
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
    </script>
    
<style>
 table{
 		margin: auto;
	 	border-collapse: collapse;
	 	width: 60%;
	 	text-align: center;
	 }
	 th{
	 font-size: 20px;
	 }
	 td{
	 font-size: 18px;
	 padding-top: 30px; 
	 }

h2 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 60px;
	font-size: 24px;
	font-style: bold;
}
body {
	overflow-x: hidden;
	}
	
.button1{
	background-color: #41b979;
	color: #fff;
	cursor: default;
	padding: 15px;
	border: none;
	width: 15%;
	font-size: 17px;
	letter-spacing: -.16px;
	font-weight: 700;
	height: 55px;
	border-radius: 12px;
	margin: 20px 0;
}
.button2{
	display:inline;
	background-color: #ef6253;
	color: #fff;
	cursor: default;
	padding: 15px;
	border: none;
	text-align:center;
	font-size: 17px;
	letter-spacing: -.16px;
	font-weight: 700;
	border-radius: 12px;

}
.bt{
	width: 50%;
	padding-top:20px;
	padding-left: 25%;
}

._main{
 		margin: auto;
	 	border-collapse: collapse;
	 	width: 60%;
	 	text-align: center;
}
.price{
	margin-top: 50px;
	font-size: 20px;
	font-weight: 700;
}
</style>
 

</head>
<body>

<%@ include file="_navbar.jsp" %>

    <h2>장바구니</h2>
    <% 
        List<Product> cartItems = (List<Product>) session.getAttribute("cartItems");
        if (cartItems != null && !cartItems.isEmpty()) { 
    %>

    <table>
        <tr>
            <th>상품 아이디</th>
            <th>상품 가격</th>
            <th>상품 이름</th>
            <th>브랜드</th>
        </tr>
        <% 
            int totalPrice = 0;
            for (Product product : cartItems) { 
                totalPrice += product.getProductPrice();
        %>
            <tr>
                <td><%= product.getProductId() %></td>
                <td><%= product.getProductPrice() %> 원</td>
                <td><%= product.getName() %></td>
                <td><%= product.getBrand() %></td>
                
            </tr>
        <% } %>
 </table>
 			<div class= "_main">
            <div class= "price"> 합계:  <%= totalPrice %> 원</div>


			<div class= "bt">
            <div><input type="button" class = "button1" value="구매" onclick="Buy()">
           <a href="deleteCart.jsp?cartId=<%= cartId %>" class = "button2">	삭제하기	</a></div>
        	</div>
        	
        	<div>
    <% 
    } else 
    { 
    %>
        <p style="text-align: center;">장바구니가 비어있습니다.</p>
    <% } %>
</body>
</html>