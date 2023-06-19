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
	margin-top: 50px;
}

nav>a {
	margin-left: 5px;
	display: inline-block;
}

nav>div>a>img {
	height: 300px;
	width: 100%;
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

    
    <%@ include file="_navbar.jsp" %>
    
    <nav>
    <div class="event">
    <a href="#">
    <img src="">
    </a>
    </div>
    </nav>
    
  </body>
</html>