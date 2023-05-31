<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	

<html>
  <head>
    <title>webshop</title>

<style> 
body {
  margin: 0;
  min-width: 992px;
  font-family: "Helvetica";
}
h1{
 text-align: center;
 margin-top: 50px;
 margin-bottom: 60px;
 font-size: 24px;
 font-style: bold;
}
li{
  list-style-type: none;
  float: left;
  margin-right: 30px; 
}
a{
  text-decoration: none;
  color: black;
  float: left;
  font-size: 16px;
}
img {
  width: 208px;
  height: 225px;
  margin-left: 30px;
  margin-bottom: 20px;
}
p {
   margin-left:30px;
}
nav {
	height:300px;
	width:400px;
}
nav>a{
margin-left:5px;
}
nav>div>a>img {
height:300px;
width:1400px;
margin-left:30px;
display:inline-block;
}

footer {
height:300px;
}
footer>h1{
margin-left:200px;
text-decoration:underline;
}

</style>

<% 
String user_id = (String) session.getAttribute("id");
%>

  </head>
  <body>
  <header>
    <div class="navbar">
      <ul style= " float: right;">
        <li><a href="#">Home</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="#">Cart</a></li>
		<li><a href="./login.jsp">Login</a></li>
		<li><% out.println(user_id+ "님 로그인중"); %></li>	
      </ul>

      <ul style= " float: left;">
        <li><a href="#">아트협업</a></li>
        <li><a href="#">5월 선물</a></li>
        <li><a href="#">추천</a></li>
        <li><a href="#">추천</a></li>
        <li><a href="#">랭크</a></li>
        <li><a href="#">남성</a></li>
        <li><a href="#">여성</a></li>
      </ul>
    </div>
    <h1> 쇼핑몰 </h1>
    </header>
    
    <nav>
    <div class="event">
    <a href="#">
    <img src="">
    </a>
    </div>
    </nav>
    
    
    <footer>
    <h1>상품 목록</h1>
    <div class="products" >
      <a href="#">
        <img src="">
        <p>상의</p>
        <p class="price">49,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>하의</p>
        <p class="price">89,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>신발</p>
        <p class="price">69,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>운동화</p>
        <p class="price">79,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>슬리퍼</p>
        <p class="price">29,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>모자</p>
        <p class="price">99,000</p>
      </a>

      <a href="#">
        <img src="">
        <p>하의</p>
        <p class="price">39,000</p>
      </a>

    </div>
    </footer>
  </body>
</html>