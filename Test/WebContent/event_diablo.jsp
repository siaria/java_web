<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="java.util.ArrayList" %>
<%@ include file="dbconn.jsp" %>
<%
    String productId = request.getParameter("id");

    PreparedStatement pstmt = null;
    ResultSet rs = null;
    String sql = "SELECT * FROM member ORDER BY RAND() LIMIT 5";
    pstmt = conn.prepareStatement(sql);
    rs = pstmt.executeQuery();

    ArrayList<String> names = new ArrayList<>();
    while (rs.next()) {
        String name = rs.getString("id");
        names.add(name);
    }

    if (names.size() > 0) {
        String randomWinner = names.get((int) (Math.random() * names.size()));
        String result = "축하합니다! " + randomWinner + "님 당첨되셨습니다!";
        //out.println("alert('" + result + "');");
    }
       
    if (rs != null)
        rs.close();
    if (pstmt != null)
        pstmt.close();
    if (conn != null)
        conn.close();
%>

<!DOCTYPE html>
<html>
<head>
    <title>디아블로4 이벤트 페이지</title>
    <style>
        body {
            text-align: center;
        }

        img {
            vertical-align: bottom;
        }

        iframe {
            width: 1000px;
            height: 550px;
        }
    </style>
    <script>
        function runLottery() {
            var names = [<%
                for (int i = 0; i < names.size(); i++) {
                    if (i > 0) {
                        out.print(", ");
                    }
                    out.print("'" + names.get(i) + "'");
                }
            %>];
            var randomNum = Math.random();
            var result = "";

            if (randomNum < 0.5) {
                var randomIndex = Math.floor(Math.random() * names.length);
                var winner = names[randomIndex];
                result = "축하합니다! " + winner + "님 당첨되셨습니다!";
                alert(result);
            } else {
                result = "아쉽게도 꽝입니다.";
                alert("아쉽게도 꽝입니다.");
            }

            document.getElementById("result").innerHTML = result;
        }
    </script>
</head>
<body>
    <h1></h1>
    <div style='background-color: black'>
        <img src="diablo4.jpg" alt="디아블로 4 이미지"><br>
        <img src="diablo_1.jpg" alt="디아블로 4 이미지"><br>
        <img src="diablo_2.jpg" alt="디아블로 4 이미지"><br>
        <img src="diablo_3.jpg" alt="디아블로 4 이미지"><br>
        <img src="diablo_4.jpg" alt="디아블로 4 이미지"><br>
        <img src="diablo_5.jpg" alt="디아블로 4 이미지"><br>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/VB0JPu6NUyI" frameborder="0"
            allowfullscreen></iframe>
    </div>
    <div>
        <p>디아블로 4 이벤트 입니다. 추첨하여 디아블로4 패키지를 받아가세요!</p>
        <p>이벤트 확률은 50% 입니다.</p>
        <p>추첨을 진행하여 당첨자를 확인하세요.</p>
        <button class="btn" onclick="runLottery()">추첨하기</button>
       	
        <p id="result"></p>
    </div>
</body>
</html>