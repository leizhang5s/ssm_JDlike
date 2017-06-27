<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>易购书店</title>
</head>
<body>

	<div id="header">
		<img src="images/logo.gif">
		<c:choose>  
		<c:when test="${LoginUser!=null}">
			
			<div class="welcome">
		<a href="myaccount.action">欢迎你，${LoginUser.username}</a><span >&nbsp;&nbsp;角色:${LoginUser.grade}<font color="blue">管理员</font></span>&nbsp;&nbsp;<a
				href="LogOut.action">注销</a>
		</div>
			
		</c:when>
		<c:otherwise>

		<div id="login">
			<form action="login.action" method="post">
				<div>
					账号：<input type="text" name="username"><br /> 密码：<input
						type="password_" name="password_">
				</div>
				<div id="denglu">
					<input type="submit" value="登陆">
				</div>
			</form>

		</div>
		</c:otherwise>
		</c:choose>  
		<div id="menu">
			<ul>
				<li><a href="index.action"
					>主页</a>
				</li>
				<li><a href="about.action"
					>关于</a>
				</li>
				<li><a href="books.action?currentPage=0&action=keep"
					>书籍</a>
				</li>
				<li><a href="special.action"
					>特别推荐</a>
				</li>
				<li><a href="myaccount.action"
					>我的账号</a>
				</li>
				<li><a href="register.action"
					>注册</a>
				</li>
				<li><a href="contact.action"
					>留言</a>
				</li>
			</ul>
		</div>
	</div>

</body>
</html>