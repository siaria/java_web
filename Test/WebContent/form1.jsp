<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
<title>회원가입창</title>
<style>
form {
	border: 2px solid #ddd;
	padding: 20px;
	width: 500px;
	margin: 0 auto;
	margin-top: 50px;
}

input[type=text], input[type=password] {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	width: 470px;
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

h2 {
	text-align: center;
	margin-top: 50px;
	margin-bottom: 60px;
	font-size: 24px;
	font-style: bold;
}

textarea {
	width: 500px
}

select {
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #ddd;
	width: 490px;
}
</style>
<script>
function check(){ 
	var form = document.membership;
	
	if(form.id.value.length < 4 || form.id.value.length > 12) {
		alert("아이디는 4 - 12자 이내로 입력합니다!");
		form.id.select();
		return false;
	}
	
	if(form.password.value.length < 4) {
		alert("비밀번호는 는 4자 이상으로 입력합니다!");
		form.password.select();
		return false;
	}
	
	if (isNaN(form.password.value)) {
		alert("비밀번호는 숫자만 입력 가능합니다!");
		form.password.select();
		return false;
	}
}


</script>

</head>
<body>
	<div class="container">
		<h2>회원가입</h2>
		<form action="register.jsp" method="post" name="membership">
			<div class="form-group">
				<label for="id">ID:</label> <input type="text" id="id" name="id"
					required>
			</div>
			<div class="form-group">
				<label for="password">비밀번호:</label> <input type="password"
					id="password" name="password" required>
			</div>
			<div class="form-group">
				<label for="email">이메일:</label> <input type="text" id="email"
					name="email" required>
			</div>
			<div class="form-group">
				<label for="referrer">추천인 코드:</label> <input type="text"
					id="referrer" name="referrer">
			</div>
			<div class="form-group">
				<label for="shoeSize">신발 사이즈:</label> <select id="shoeSize"
					name="shoeSize">
					<option value="">사이즈 선택</option>
					<option value="240">240mm</option>
					<option value="245">245mm</option>
					<option value="250">250mm</option>
					<option value="255">255mm</option>

				</select>
			</div>
			
			<div class="form-group">
			<p><label for="terms1">약관 동의:</label>
				<textarea id="terms" name="terms" rows="10" cols="50" readonly
					required>
제1조(목적)
이 약관은 업체 회사(전자상거래 사업자)가 운영하는 업체 사이버 몰(이하 “몰”이라 한다)에서 제공하는 인터넷 관련 서비스(이하 “서비스”라 한다)를 이용함에 있어 사이버 몰과 이용자의 권리․의무 및 책임사항을 규정함을 목적으로 합니다. 
 
 ※「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다.」
                </textarea>
			</div>

			<div class="form-group">

				<input type="checkbox" id="agree1" name="agree1" required> <label
					for="agree1">약관에 동의합니다.</label></p>
			</div>

			
			<div class="form-group">
				<p><label for="terms2">개인정보 수집 및 이용 동의:</label>
				<textarea id="terms2" name="terms2" rows="10" cols="70" readonly
					required>
제1조(목적)
이 약관은 업체 회사(전자상거래 사업자)가 제공하는 서비스(이하 “서비스”라 한다)를 이용함에 있어 회사와 이용자의 권리, 의무 및 책임사항을 규정함을 목적으로 합니다. 

※「관련 법령 및 회사의 정책에 따라 서비스 이용에 제한 사항이 있을 수 있습니다.」
                </textarea>
			</div>

			<div class="form-group">
				<input type="checkbox" id="agree2" name="agree2" required> <label
					for="agree2">약관에 동의합니다.</label> </p>
			</div>
			<button type="submit" class="btn-submit" onclick="Check()">가입하기</button>
		</form>
	</div>
</body>
</html>