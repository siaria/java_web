<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<% 

session.invalidate();

System.out.println("로그아웃 성공");


%>

<script type="text/javascript">

confirm("로그아웃되었습니다!");
location.href = "main.jsp"

</script>