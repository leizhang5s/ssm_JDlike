<%@ page language="java"
	import="java.util.*,cn.leizhang.domain.User,javax.servlet.http.HttpSession"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/login.css">
<link rel="stylesheet" href="css/myaccount.css">
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="images/bullet1.gif">我的账户
			</div>
			<div id="myaccount">
				<div class="item">
					<div class="box_top"></div>
					<div class="box_center">
						<form action="updateuser.action?userid=${LoginUser.userid}"
							method="post">
							<table>
								<tr>
									<td class="left">我的账号:</td>
									<td><span class="username">${LoginUser.username}</span>
									</td>
								</tr>
								<tr>
									<td class="left">真实姓名:</td>
									<td><input type="text" name="truename"
										value="${LoginUser.truename}"></td>
								</tr>
								<tr>
									<td class="left">电子邮件:</td>
									<td><input type="text" name="email"
										value="${LoginUser.email}"></td>
								</tr>
								<tr>
									<td class="left">电话号码:</td>
									<td><input type="text" name="phone"
										value="${LoginUser.phone}"></td>
								</tr>
								<tr>
									<td class="left">用户住址:</td>
									<td><input type="text" name="address_"
										value="${LoginUser.address_}"></td>
								</tr>
								<tr>
									<td colspan="2" class="imgtd">
										<hr>我就是传说中的分割线
										<hr>
									</td>
								</tr>
								<tr>
									<td>用户级别:</td>
									<td>${LoginUser.grade}</td>
								</tr>
								<tr>

									<td><input type="submit" value="提交"></td>
								</tr>
							</table>
						</form>
					</div>
					<div class="box_bottom"></div>
				</div>

			</div>
			<img src="images/bookstore.png" class="touming">

		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
