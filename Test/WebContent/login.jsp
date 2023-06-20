<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>


<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<style>
form {
	padding: 20px;
	width: 300px;
	margin: 0 auto;
	margin-top: 50px;
}

._inputbox {
    position: relative;
    padding: 10px 0 14px;
    	
}
input{
padding: 0;
    outline: 0;
    border: 0;
    resize: none;
    border-radius: 0;
    -webkit-appearance: none;
    background-color: transparent
    }
input[type=text] , input[type=password]{
    padding: 8px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 22px;
    border-bottom: 1px solid #ebebeb;
}
label{
font-size: 13px;
    letter-spacing: -.07px;
    line-height: 18px;}

button[type=button], button[type=submit] {

    background-color: #222 ;
    color: #fff;
    cursor: default;
	padding: 10px;
	border: none;
	width: 100%;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700;
    height: 52px;
    border-radius: 12px;
}
.bt{
	    margin-top: 40px;
}
.login{
	margin-bottom: 4px;
}

h2 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 60px;
	font-size: 24px;
	font-style: bold;
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
<%@ include file="_navbar.jsp" %>
<body style="overflow-x: hidden;">

	<form method="post" name="login" action="./login_check.jsp" >
		<h2>로그인</h2>
		<div class ="_inputbox">
		<label class="id"><b>아이디: </b></label> 
		<input type="text" placeholder="Enter id" name="id"> 
		</div>
		<div class= "_inputbox">
			<label class="passwd"><b>패스워드:</b></label> 
			<input type="password" placeholder="Enter Password" name="passwd">
		</div>
		<div class= "_bt">
		<button type="submit" class="login"onclick="login_check();">로그인</button>
		<button type="button" class="registration" onclick="formtest();">회원가입</button>
		</div>
	</form>
	<%@ include file="qwe.jsp"%>
</body>
</html>