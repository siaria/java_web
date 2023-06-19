<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="dto.Product" %>

<%
    List<Product> cartItems = (List<Product>) session.getAttribute("cartItems");
    if (cartItems == null) {
        cartItems = new ArrayList<>();
        session.setAttribute("cartItems", cartItems);
    }

    int totalPrice = 0;
    for (Product product : cartItems) {
        totalPrice += product.getProductPrice();
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>결제 페이지</title>
</head>
<body>
    <h1>총 가격</h1>

    <p>총 가격: <%= totalPrice %></p>

    <form action="main.jsp">
        <input type="submit" value="홈으로">
    </form>
</body>
</html>