<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%
    List<String> cartItems = (List<String>) session.getAttribute("cartItems");
    if (cartItems == null) {
        cartItems = new ArrayList<>();
        session.setAttribute("cartItems", cartItems);
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>장바구니</title>
</head>
<body>
    <h1>장바구니</h1>

    <table>
        <tr>
            <th>상품명</th>
            <th>가격</th>
            <th></th>
        </tr>
        
        <% for (String item : cartItems) { %>
            <tr>
                <td><%= item %></td>
                <td>상품 가격</td> 
                <td><a href="removeItem.jsp?item=<%= item %>">삭제</a></td>
            </tr>
        <% } %>
    </table>

    
    <% int totalPrice = 0;
        for (String item : cartItems) {
            
        }
    %>
    <p>총 금액: <%= totalPrice %>원</p>

    <form action="payment.jsp" method="POST">
        <input type="submit" value="결제하기" onclick="showPaymentCompleteMessage()">
    </form>

    <br>

    <form action="main.jsp">
        <input type="submit" value="메인 페이지로 이동">
    </form>

    <script>
        function showPaymentCompleteMessage() {
            alert("결제 페이지로 이동합니다.");
        }
    </script>
</body>
</html>