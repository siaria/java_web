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
        String filename = rs.getString("file_name");

        Product product = new Product(productId, productPrice, name, brand, filename);
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
	margin-top: 80px; margin-left : 30px; margin-right : 30px;
	margin-bottom: 80px;
	margin-right: 50px;
	margin-left: 50px;
}
.product>a{
	text-align: center;
}

._file{
    width: 80%;
    height: 80%;
    object-fit: cover;
    image-rendering: auto;
   	border: 0;
   	box-sizing: border-box;
}
.file{
    overflow-clip-margin: content-box;
    overflow: clip;
}
.brand{
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
.name{
	margin-bottom: 4px;
	line-height: 16px;
    white-space: normal;
    font-size: 15px;
    color: #222;
}
.price{
    display: inline-block;
    line-height: 17px;
    font-size: 16px;
    font-weight: 700;
    letter-spacing: -.04px;
}
</style>

<%@ include file="_navbar.jsp" %>
</head>
<body>



<div class= "_product">
        <% for (Product product : products) { %>
        <div class=  "product">
        <a href="productDetails.jsp?productId=<%= product.getProductId() %>">
        <div class= "file">
        <img src= "<%= product.getFilename() %>" alt="image" class= "_file">
        </div>
        <div class= "ptext">
        	<div class= "brand"><%= product.getBrand() %></div>
        	<div class= "name"><%= product.getName() %></div>
            <div class= "price"><%= product.getProductPrice() %> 원</div>
            
            
        </div>
           </a>
           </div>
        <% } %>
</div>
</body>
</html>