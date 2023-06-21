<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>

    <title>제품 등록</title>
    
   <style>
   
form {
	border: 2px solid #ddd;
	padding: 35px;
	width: 40%;
	margin: 0 auto;
	margin-top: 50px;
}
input{
	padding: 0;
    outline: 0;
    border: 0;
    resize: none;
    border-radius: 0;
    background-color: transparent
    }


input[type=text] {
    padding: 15px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 22px;
    border-bottom: 1px solid #ebebeb;
    margin: 5px 0;
}

button[type=submit] {
    background-color: #222 ;
    color: #fff;
    cursor: default;
	padding: 15px;
	border: none;
	width: 100%;
    font-size: 16px;
    letter-spacing: -.16px;
    font-weight: 700;
    height: 55px;
    border-radius: 12px;
    margin: 20px 0;
}
label{
	font-size: 14px;
    letter-spacing: -.07px;
    line-height: 18px;
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

select {
	border: 1px solid #ddd;
	border-radius: 6px;
    padding: 10px 0;
    width: 100%;
    font-size: 15px;
    letter-spacing: -.15px;
    line-height: 25px;
    border-bottom: 1px solid #ebebeb;
    margin: 20px 0;
}

.formgroup1 {
	overflow: auto;
    box-sizing: border-box;
    max-height: 150px;
    padding: 13px;
    border-radius: 6px;
    border: 1px solid #d6d6d6;
}

.formgroup2 {
	overflow: auto;
    box-sizing: border-box;
    max-height: 150px;
    padding: 13px;
    border-radius: 6px;
    border: 1px solid #d6d6d6;
}

</style>

</head>
<body>
    <div class="form">
    	<%@ include file="_navbar.jsp"%>
        <h2>제품 등록</h2>
        <form name="newProduct" action="processAddProduct.jsp" method="post">
            <div class="form-group row">
                <label for="productId" class="col-sm-2 col-form-label">상품 코드</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="product_id" name="product_id" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">상품명</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="productPrice" class="col-sm-2 col-form-label">가격</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="product_price" name="product_price" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="brand" class="col-sm-2 col-form-label">브랜드</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="brand" name="brand" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="filename" class="col-sm-2 col-form-label">파일명</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="file_name" name="file_name" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn btn-primary">등록</button>
                </div>
            </div>
        </form>
    </div>
</body>
</html>