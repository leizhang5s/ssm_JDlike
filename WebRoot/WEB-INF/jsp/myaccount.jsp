<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			   <c:choose>
			   <c:when test="${LoginUser==null}">
			  <div id="loginlogin">
                <form action="login.action" method="post">

					    <%--	错误提示信息--%>
						<c:if test="${error!=null}">
						<div style='font-size:15px;margin:3px 0 3px 1px;color:red;'>用户名或密码错误!</div>
						</c:if>
						<c:if test="${logininfo!=null}">
						<div style='font-size:15px;margin:3px 0 3px 1px;color:red;'>${logininfo}</div>
						</c:if>
                    <div class="login_title">登入你的账户</div>
                    <div class="row1">
                        <label>用户名:</label>&nbsp;
                        <input name="username">
                    </div>
                    <div class="row2">
                        <label>密&nbsp;&nbsp;码:</label>&nbsp;
                        <input type="password" name="password">
                    </div>
                    <div class="row3">
                       &nbsp; <input type="checkbox" name="remember">&nbsp;&nbsp;记住我</input>
                    </div>
                    <div class="row4">
                        <input type="submit" value="登陆">
                    </div>
                </form>
            </div>
            </c:when>
            <c:otherwise>

			 <div id="myaccount">
                <div class="item">
                    <div class="box_top"></div>
                    <div class="box_center">
                        <table>
                            <tr>
                                <td class="left">我的账号:</td>
                                <td>
                                    <span class="username">${LoginUser.username}</span>
                                </td>
                            </tr>
                            <tr>
                                <td class="left">真实姓名:</td>
                                <td>${LoginUser.truename}</td>
                            </tr>
                            <tr>
                                <td class="left">电子邮件:</td>
                                <td>${LoginUser.email}</td>
                            </tr>
                            <tr>
                                <td class="left">电话号码:</td>
                                <td>${LoginUser.phone}</td>
                            </tr>
                            <tr>
                                <td class="left">用户住址:</td>
                                <td>${LoginUser.address_}</td>
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
                             <tr >
<!--                                 <td ><a href="/update.action?id=2>修改个人信息</a></td> -->
                               		<td ><a href="update.action" >修改信息</a></td>
                            </tr>
                        </table>
                    </div>
                    <div class="box_bottom"></div>
                </div>

            </div>
            <img src="images/bookstore.png" class="touming">
            </c:otherwise>
            </c:choose>

			</div>

	
		<jsp:include page="content-right.jsp"></jsp:include>
		</div>
		<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
