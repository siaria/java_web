<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>
<%@ include file="dbconn.jsp"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>

<script type="text/javascript">

	function deleteConfirm(id) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteP.jsp?productId=" + product.getProductId();
		else
			return;
	}
</script>

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
        String filename = rs.getString("file_name");

        Product product = new Product(productId, productPrice, name, brand, filename);
        products.add(product); 
    }
%>

<!DOCTYPE html>
<html>
<head>

<title>상품 페이지</title>
<style>
._product {
	width: 90%;
	margin-left: 15%;
	margin-right: 15%;
	margin-top: 50px;	
}

.product {
	display: block;
	width: 25%;
	text-align: center;
	text-decoration: none;
	color: black;
	float: left;
	margin-top: 80px;
	margin-bottom: 80px;
	margin-right: 50px;
	margin-left: 50px;
}

.product>a {
	text-align: center;
}
.file{
    overflow-clip-margin: content-box;
    overflow: clip;
}

._file {
	width: 80%;
	object-fit: cover;
	image-rendering: auto;
	border: 0;
	box-sizing: border-box;
}

.brand {
	overflow: hidden;
	display: inline-block;
	vertical-align: top;
	height: 17px;
	line-height: 20px;
	padding-bottom: 2px;
	font-size: 13px;
	font-weight: 700;
	color: #222;
	width: fit-content;
	margin-bottom: 2px
}

.name {
	margin-bottom: 4px;
	line-height: 16px;
	white-space: normal;
	font-size: 15px;
	color: #222;
}

.price {
	display: inline-block;
	line-height: 17px;
	font-size: 16px;
	font-weight: 700;
	letter-spacing: -.04px;
}

._admin {
	display: block;
	width: 100%;
	text-align: center;
	text-decoration: none;
	color: black;
	float: left;
	margin-top: 80px;
	margin-bottom: 40px;
	margin-left: 20px;
}

body {
	overflow-x: hidden;
}

button[type=button]{

    background-color: #222 ;
    color: #fff;
    cursor: default;
	padding: 5px;
	border: none;
	width: 30%;
    font-size: 17px;
    letter-spacing: -.16px;
    font-weight: 700;
    height: 50px;
    border-radius: 12px;
}
._bt{

padding: 20px 0;

}


</style>

<script type="text/javascript">
	function deleteConfirm(productId) {
		if (confirm("해당 상품을 삭제합니다!!") == true)
			location.href = "./deleteP.jsp?id=" + productId;
		else
			return;
	}
</script>


<%@ include file="_navbar.jsp"%>
</head>
<body>
		<div class="_product">
			<% for (Product product : products) { %>
			<div class="product">
					<div class="file">
						<img src="<%= product.getFilename() %>" alt="image" class="_file">
					</div>
					<div class="ptext">
						<div class="brand"><%= product.getBrand() %></div>
						<div class="name"><%= product.getName() %></div>
						<div class="price"><%= product.getProductPrice() %> 원</div>
						<div class= "_bt">
						<button type="button" onclick="deleteConfirm('<%= product.getProductId()%>')" class="_bt"> 삭제</button>
						</div>
					</div>
			</div>
			<% 
			}
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (conn != null)
				conn.close();
		%>
</div>
			
</body>
</html>