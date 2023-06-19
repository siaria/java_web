<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.Goods"%>
<%@ page import="dao.GoodRepository"%>

<jsp:useBean id="goodDAO" class="dao.GoodRepository" scope="session"/>
<html>
<head>
<meta charset="utf-8">
<title>상품 상세 정보</title>
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
	<%
		String id = request.getParameter("id");
		GoodRepository dao = GoodRepository.getInstance();
		Goods goods = dao.getGoodById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-6">
				<p><%=goods.getgoodID() %>
				<p><%=goods.getbrand() %><br>
				<p><%=goods.getgname() %><br>
				<p>사이즈
				<a class="nav-link" href="#">사이즈 선택</a>
				<br>
				<p><%=goods.getgPrice()%>
				<br>
				<input type="button" value="구매" onclick="Buy()">
				<input type="button" value="장바구니" onclick="addToCart()">
				<br>
				<p><form name="addForm" action="./addCart.jsp?id=<%=goods.getgoodID()%>" method="post">
					<a href="#" class="btn btn-info" onclick="addToCart()">상품 주문 &raquo;</a>
						<a href="./cart.jsp" class="btn btn-warning"> 장바구니&raquo;</a>
						<a href="./products.jsp" class="btn btn-secondary">상품 목록 &raquo;</a>
				</form>
				<table class="table table-hover">
					<tbody>
						<tr>
							<th>모델번호</th>
							<th>출시일</th>
							<th>컬러</th>
							<th>발매가</th>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>