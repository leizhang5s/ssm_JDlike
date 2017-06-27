<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/books.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div id="books">
				<div class="title">
					<a href="index.action">主页</a>>> 所有书籍
				</div>
				<div class="gray">
					<img src="images/bullet1.gif">全部书籍
				</div>
				<c:forEach  items="${ goods}" var="good">
				<div class="book">
					<div class="title">${good.goodsname }</div>
					<div class="book-box">
						<a href="ShowDetail.action?id=${good.goodsid}"> <img
							src="images/banner/${good.photo }"  >
						</a>
					</div>
				</div>
				</c:forEach>
				<div class="pagination">
					<span><font size="2" color="black">共&nbsp;${total_num}&nbsp;页</font></span>&nbsp;
					 <a href="books.action?currentPage=${PageNumber}&action=lastPage">上一页 </a>&nbsp;&nbsp;
					 <a href="books.action?currentPage=${PageNumber}&action=nextPage">下一页 </a>&nbsp;
					<span><font size="2" color="black">当前第&nbsp;${PageNumber }&nbsp;页</font></span>
				

					
				</div>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
