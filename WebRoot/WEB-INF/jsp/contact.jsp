<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/contact.css">
<script type="text/javascript">
	function submmm() {
		document.form1.submit();
	}
</script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="images/bullet1.gif"> 留言板
			</div>
			<div id="contact_top">
				<div class="item">
					<div class="box_top"></div>
					<div class="box_center">
						<div class="orange">致辞:</div>
						<p class="details">欢迎给Book
							Store留言，如果您有什么意见或建议，我们将根据您的意见认真负责的改进。</p>
					</div>
					<div class="box_bottom"></div>
				</div>
			</div>
			<div id="contact">
				<form name="form1" action="addFeedBack.action" method="post">
					<div class="contact_title">需填满所有框</div>

					<div class="row1">
						<label>姓&nbsp;&nbsp;&nbsp;&nbsp;名:</label>&nbsp;<input name="name">
					</div>
					<div class="row2">
						<label>E-mail:</label>&nbsp;<input name="email">
					</div>
					<div class="row3">
						<label>标&nbsp;&nbsp;&nbsp;&nbsp;题:</label>&nbsp;<input name="subject">
					</div>
					<div class="row4">
						<label>正&nbsp;&nbsp;&nbsp;&nbsp;文:</label>
					</div>
					<div class="row5">
						<textarea name="msg"></textarea>
					</div>
					<div class="row6">
						<input type="hidden" name="ip" value="<%=request.getRemoteAddr()%>">
						<a href="javascript:void(0)" onclick="submmm()">提交</a>
					</div>
				</form>
			</div>
			<iframe src="feedback.action" width="404px;" height="300px"
				style="margin:30px 15px;border: none;"></iframe>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
