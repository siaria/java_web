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
        String filename = rs.getString("file_name");
        product = new Product(productId, productPrice, name, brand, filename);
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
body, button, input, select, table, textarea {
	font-family: Pretendard Variable, Pretendard, -apple-system,
		BlinkMacSystemFont, system-ui, Segoe UI, Roboto, Ubuntu, Cantarell,
		Noto Sans, sans-serif, Helvetica Neue, Apple SD Gothic Neo,
		Noto Sans KR, Malgun Gothic, Apple Color Emoji, Segoe UI Emoji,
		Segoe UI Symbol;
	color: #222;
	font-feature-settings: "frac" 0, "numr" 0;
}

body, button, dd, div, dl, dt, fieldset, figcaption, figure, form, h1,
	h2, h3, h4, h5, h6, input, legend, li, ol, p, select, table, td,
	textarea, th, ul {
	margin: 0;
	padding: 0;
}

body {
	height: 200%;
	width: 100%;
	touch-action: manipulation;
	font-feature-settings: "frac" 0, "numr" 0;
	position: relative;
	overflow-anchor: none;
}

.img {
	background-color: aqua;
}

._file {
	float: left;
	padding-right: 3.334%;
	width: 100%;
	margin-top: 20%;
	background-color: transparent;
}

.info {
	margin-left: auto;
	margin-right: auto;
	max-width: 1280px;
	overflow: hidden;
	padding: 30px 40px 120px;
}

.in-de {
	position: relative;
	margin-left: 300px; width : 50%;
	padding-left: 3.334%;
	width: 50%;
}

.id {
	border-bottom: 1px solid #ebebeb;
	font-size: 18px;
	letter-spacing: -.09px;
	font-weight: 400;
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	margin-bottom: 10%;
}

.price {
	letter-spacing: -.09px;
	font-weight: 400;
	display: block;
	border-bottom: 1px solid #ebebeb;
	display: inline-block;
	vertical-align: top;
	line-height: 19px;
	padding-top: 1px;
	margin-bottom: 9px;
	font-size: 22px;
	letter-spacing: -.27px;
	font-weight: 800;
}

.name {
	border-bottom: 1px solid #ebebeb;
	margin-top: 20%;
	letter-spacing: -.09px;
	font-weight: 400;
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	border-bottom: 1px solid #ebebeb;
	font-size: 18px;
	letter-spacing: -.09px;
}

.brand {
	border-bottom: 1px solid #ebebeb;
	margin-bottom: 20%;
	font-size: 18px;
	letter-spacing: -.09px;
	font-weight: 400;
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	border-bottom: 1px solid #ebebeb;
	display: inline-block;
	vertical-align: top;
	line-height: 19px;
	padding-top: 1px;
	margin-bottom: 9px;
	font-size: 18px;
	letter-spacing: -.27px;
	font-weight: 800;
}

.send {
	margin-top: 5%;
}

.button {
	background-color: #ef6253;
	color: #fff;
	cursor: default;
	padding: 15px;
	border: none;
	width: 100%;
	font-size: 16px;
	letter-spacing: -.16px;
	font-weight: 700;
	height: 55px;
	border-radius: 12px;
	margin: 20px 0;
}

.submit {
	background-color: #41b979;
	color: #fff;
	cursor: default;
	padding: 15px;
	border: none;
	width: 100%;
	font-size: 16px;
	letter-spacing: -.16px;
	font-weight: 700;
	height: 55px;
	border-radius: 12px;
	margin: 20px 0;
}

.bonus {
	border-bottom: 1px solid #ebebeb;
	margin-bottom: 3%;
}

.del {
	border-bottom: 1px solid #ebebeb;
}

.a {
	font-weight: 700;
}

h2 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 60px;
	font-size: 24px;
	font-style: bold;
}

label {
	font-size: 18px;
	letter-spacing: -.07px;
	line-height: 18px;
	font-weight: 800;
}
</style>
<script type="text/javascript">
	function Buy() {
		if (confirm("이 상품을 구매 하시겠습니까?")) {
			document.addForm.submit();
		} else {
			document.addForm.reset();
		}
	}

	function addToCart() {
		if (confirm("이 상품을 장바구니에 추가합니다?")) {
			document.addForm.submit();
		} else {
			return false;
		}
	}
</script>
</head>
<body style="overflow-x: hidden;">
<%@ include file="_navbar.jsp" %>
    <h2>상품 상세 정보</h2>
    <%
    if (product != null) {
    %>
    <div class="info">
        <div class="in-de">
            <div class="img"><img src= "<%= product.getFilename() %>" alt="image" class= "_file"></div>
            <div class="brand"><%= product.getBrand() %></div>
            <div class="name"><%= product.getName() %></div>
            <label class="label"><b>모델번호:</b></label> 
            <div class="id"><%= product.getProductId() %></div>
            <div class="price">가격 :<%= product.getProductPrice() %> 원</div>
            <div class="send">
                <form action="addcart.jsp" method="post" name="addForm" onsubmit="return addToCart()">
                    <input type="hidden" name="productId" value="<%= product.getProductId() %>">
                    <input type="button" class="button" value="구매" onclick="Buy()">
                    <input type="button" class="submit" value="장바구니에 추가" onclick="addToCart()">                    
               </form>
            </div>
            <div class="bonus">
            <p class="a">추가 해택 </p><br>
            <p>포인트: 계좌 간편결제 시 1% 적립
            
            <p>결제: 네이버페이 포인트 최대 6만원 지급!</p><br>
            </div>
            <div class="del" style="margin-bottom: 240px;">
            <p class="a">배송정보</p><br>
            <p>일반 배송 3000원<br></p>
            <p>50000원 이상 결제 시 배송 무료!</p><br>
            </div>
        </div>
    </div>
    <% } else { %>
    <p>상품을 찾을 수 없습니다.</p>
    <% } %>
    <%@ include file="qwe.jsp"%>
</body>
</html>