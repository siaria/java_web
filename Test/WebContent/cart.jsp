<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product"%>

<!DOCTYPE html>
<html>
<head>
    <title>장바구니</title>
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
	</script>
</head>
<body>
    <h1>장바구니</h1>
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
            <% for (Product product : cartItems) { %>
                <tr>
                    <td><%= product.getProductId() %></td>
                    <td><%= product.getProductPrice() %></td>
                    <td><%= product.getName() %></td>
                    <td><%= product.getBrand() %></td>
                    <td><input type="button" value="구매" onclick="Buy()"></td>
                </tr>
                
            <% } %>
        </table>
    <% } else { %>
        <p>장바구니가 비어있습니다.</p>
    <% } %>
</body>
</html>