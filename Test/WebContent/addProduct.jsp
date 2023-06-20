<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>제품 등록</title>
</head>
<body>
    <div class="container">
        <h1 class="display-4">제품 등록</h1>
        <form name="newProduct" action="processAddProduct.jsp" class="form-horizontal" method="post">
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