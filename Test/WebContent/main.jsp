<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<style>
#abc {
	margin-top: 40px;
	margin-left: 5%;
	height: 30%;
}

.mySlides {
	display: none;
	height: 550px;
}
</style>



</head>
<body>

	<%@ include file="_navbar.jsp"%>
</head>
<body style="overflow-x: hidden;">
	<div class="w3-content w3" style="max-width: 100%" id="abc">
			<img class="mySlides" src="b1.jpg" style="width: 95%"> 
			<img class="mySlides" src="b2.jpg" style="width: 95%"> 
			<img class="mySlides" src="b3.jpg" style="width: 95%"> 
			<img class="mySlides" src="b4.jpg" style="width: 95%"> 
			<img class="mySlides" src="b5.jpg" style="width: 95%"> 
			<img class="mySlides" src="b6.jpg" style="width: 95%">
	</div>
	<script>
	var myIndex = 0;
	carousel();

	function carousel() {
		var i;
		var x = document.getElementsByClassName("mySlides");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		myIndex++;
		if (myIndex > x.length) {
			myIndex = 1
		}
		x[myIndex - 1].style.display = "block";
		setTimeout(carousel, 2500);
	}
</script>

<%@ include file="qwe.jsp"%>

</body>
</html>