<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    List<String> cartItems = (List<String>) session.getAttribute("cartItems");
    if (cartItems == null) {
        cartItems = new ArrayList<>();
        session.setAttribute("cartItems", cartItems);
    }


    cartItems.clear();
%>

<!DOCTYPE html>
<html>
<head>
    <title>결제 페이지</title>
</head>
<body>
    <h1>결제 페이지</h1>

    <p>결제가 완료되었습니다.</p>

    <form action="main.jsp">
        <input type="submit" value="홈으로">
    </form>
</body>
</html>