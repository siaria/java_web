<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
	

<html>
  <head>
    <title>webshop</title>

<style>
body {
	margin: 0;
	min-width: 992px;
	font-family: "Segoe UI,Noto Sans,sans-serif,Helvetica Neue,Noto Sans KR";
}

h1 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 60px;
	font-size: 24px;
	font-style: bold;
}

li {
	list-style-type: none;
	float: left;
	margin-right: 30px;
}

a {
	text-decoration: none;
	color: black;
	float: left;
	font-size: 16px;
}

img {
	width: 90px;
	height: 40px;
	display: block;
	position: relative;
}

p {
	margin-left: 30px;
}

nav {
	height: 300px;
	width: 400px;
}

nav>a {
	margin-left: 5px;
	display: inline-block;
}

nav>div>a>img {
	height: 300px;
	width: 1400px;
	margin-left: 30px;
	display: inline-block;
}

footer {
	height: 300px;
}

footer>h1 {
	margin-left: 200px;
	text-decoration: underline;
}

.tab {
	position: relative;
	color: #222;
	cursor: pointer;
	border-bottom: 2px solid #222;
}

.nav_main {
	font-weight: 700;
}
</style>

<%-- <% 
String user_id = (String) session.getAttribute("id");
%> --%>

<script type="text/javascript">
function logout(){
	var logout=confirm("로그아웃 하시겠습니까?");
	if(logout==true){
		location.href="logout.jsp"; 
	}
	}
</script>


  </head>
  <body>
<%--   <header>
    <div class="navbar">
      <ul style= " float: right;">
        <li><a href="./main.jsp" class="nav_main">Home</a></li>
        <li><a href="#">Shop</a></li>
        <li><a href="./cart.jsp">Cart</a></li>
        	<%if(user_id==null){
        	%>
		<li><a href="./login.jsp">Login</a></li>
			<%	}
        	else{
				%>	
		<li><a onclick = "logout()">Logout</a></li>
		<li><% out.println(user_id+ "님 로그인중"); %></li>	
		<%} %>
      </ul>

      <ul style= " float: left;">
        <li ><a href="./event_diablo.jsp"><img src="d4-logo.png"></a></li>
        <li><a href="#" class="tab">5월 선물</a></li>
        <li><a href="#" class="tab">추천</a></li>
        <li><a href="#" class="tab">추천</a></li>
        <li><a href="#" class="tab">랭크</a></li>
        <li><a href="#" class="tab">남성</a></li>
        <li><a href="#" class="tab">여성</a></li>
      </ul>
    </div>
    <h1> 쇼핑몰 </h1>
    </header> --%>
    
    <%@ include file="_navbar.jsp" %>
    
    <nav>
    <div class="event">
    <a href="#">
    <img src="">
    </a>
    </div>
    </nav>
    
    
<%--     <div>
    <h1> 상품 목록 </h1>
    <div class="products" >
      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>상의</p>
        <p class="price">49,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>하의</p>
        <p class="price">89,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>신발</p>
        <p class="price">69,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>운동화</p>
        <p class="price">79,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>슬리퍼</p>
        <p class="price">29,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>모자</p>
        <p class="price">99,000</p>
      </a>

      <a href="./goods.jsp?id=<%=rs.getString("p_id") %>" class="btn btn-secondary" role="button">
        <img src="">
        <p>하의</p>
        <p class="price">39,000</p>
      </a>
      
     
    </div>
    </div> --%>
  </body>
</html>