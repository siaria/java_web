 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
 
  <link rel="stylesheet" href="_navbar.css">
  
  <div class="header">
  
<% 
String user_id = (String) session.getAttribute("id");
%>
<script type="text/javascript">

function logout(){
	var logout=confirm("로그아웃 하시겠습니까?");
	if(logout==true){
		location.href="logout.jsp"; 
	}
	}

</script>

    <div class="navbar">
      <ul style= " float: right;">
        <li><a href="./main.jsp" class="nav_main">Home</a></li>
        <li><a href="./products.jsp">Shop</a></li>
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
        <li ><a href="./event_diablo.jsp"><img src="d4-logo.png" class="dia"></a></li>
        <li><a href="#" class="tab">5월 선물</a></li>
        <li><a href="#" class="tab">추천</a></li>
        <li><a href="#" class="tab">추천</a></li>
        <li><a href="#" class="tab">랭크</a></li>
      </ul>
    
    <div class="logo" >
    <img src = "_logo6_1.png" alt="쇼핑몰" class="mainlogo">
    </div>
    </div>
    </div>