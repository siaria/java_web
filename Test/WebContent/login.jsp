<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<style>
form {
	border: 2px solid #ddd;
	padding: 20px;
	width: 300px;
	margin: 0 auto;
	margin-top: 50px;
}

input[type=text], input[type=password] {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	width: 270px;
}

button {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	border: none;
	width: 100%;
	margin-bottom: 10px;
}

.membership {
	display: block;
	text-align: center;
	margin-top: 20px;
	color: #4CAF50;
	text-decoration: none;
	font-weight: bold;
	font-size: 14px;
}

.registration {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	border: none;
	width: 100%;
}
</style>

<script type="text/javascript">
	function login_check() {

		var id = document.login.id;
		var passwd = document.login.passwd;

		if (!id.value) {
			alert("아이디를 입력하세요")
			id.focus();
			return false;
		}
		if (!passwd.value) {
			alert("비밀번호를 입력하세요")
			passwd.focus();
			return false;
		}
		document.location.href = "login_check.jsp";
	}

	function formtest() {
		document.location.href = "form1.jsp";
	}
</script>

</head>

<body>
	<form method="post" name="login" action="./login_check.jsp" >
		<h2>로그인</h2>
		<label class="id"><b>아이디: </b></label> 
		<input type="text" placeholder="Enter id" name="id"> 
		
			<label class="passwd"><b>패스워드:</b></label> 
			<input type="password" placeholder="Enter Password" name="passwd">

		<button type="submit" onclick="login_check();">로그인</button>
		<button type="button" class="registration" onclick="formtest();">회원가입</button>
	</form>
</body>
</html>