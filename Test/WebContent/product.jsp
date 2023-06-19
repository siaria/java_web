<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<%@ page import="dto.Product" %>
<%@ page import="dao.ProductRepository" %>

<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />

<!DOCTYPE html>
<html>
<head>

<title>상품 상세 정보</title>

<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		}else {
			document.addForm.reset();
		}
	}
</script>

<link rel = "stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
</head>
<body>

		
		<div class="jumbotron">
			<div class="container">
				<h1 class="display-3">
					상품 정보
				</h1>
			</div>
		</div>
		
		<%
			String id = request.getParameter("id");
			ProductRepository dao = ProductRepository.getInstance();
			Product product = dao.getProductById(id);
			
		%>
		
		<div class="container">
			<div class="row">
				<div class="col-md-6">
					<%=product.getProductId()%>
					<h3>이름<%=product.getName()%></h3>
					
					<p><b>상품 코드: </b>
					<span class="bagde badge-danger">
						<%=product.getProductId()%>
					</span>
					<h4><%=product.getProductPrice()%>원</h4>
					<h4>브랜드 <%=product.getBrand()%></h4>
					
					<p><form name="addForm" action="./addCart.jsp?id=<%= product.getProductId()%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()" >상품 주문  &raquo;</a>
					<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a>
					<a href="./products.jsp" class="btn btn-secondary">상품 목록  &raquo;</a>
				</form>
				</div>
			</div>
			<hr>
		</div>

</body>
</html>