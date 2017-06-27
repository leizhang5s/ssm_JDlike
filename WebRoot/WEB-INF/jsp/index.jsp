<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

	<link rel="stylesheet" href="css/header.css">
	<link rel="stylesheet" href="css/content.css">
	<link rel="stylesheet" href="css/footer.css">
	<link rel="stylesheet" href="css/index.css">

</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<jsp:include page="content-left.jsp"></jsp:include>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
		<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>