 <%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
 
<link rel="stylesheet" href="_navbar.css">
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/font-applesdgothicneo@1.0/all.min.css">
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

    <div class="_navbar">
    <div class= "home">
      <ul style= " float: right;">
        <li><a href="./main.jsp" class="nav_home">Home</a></li>
        <li><a href="./products.jsp" class="nav_menu">Shop</a></li>
        <li><a href="./cart.jsp" class="nav_menu">Cart</a></li>
        	<%if(user_id==null){
        	%>
		<li><a href="./login.jsp" class="nav_menu">Login</a></li>
			<%	}
        	else{
				%>	
		<li><a onclick = "logout()" class="nav_menu">Logout</a></li>
		<li class="nav_menu"><% out.println(user_id+ "님 로그인중"); %></li>	
		<%} %>
      </ul>
</div>

<div class="navbar">
      <ul style= " float: left;" id= _event>
        <li class= ev><a href="./event_diablo.jsp"><img src="d4-logo.png" class="dia"></a></li>
      </ul>
</div>
    
    <div class="logo" >
    <img src = "_logo6_1.png" alt="쇼핑몰" class="mainlogo">
    </div>
   </div>
    </div>