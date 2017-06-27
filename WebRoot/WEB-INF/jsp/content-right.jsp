<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" import="cn.leizhang.serviceimpl.GoodsServiceImpl" %>
<%@ page language="java" import="cn.leizhang.serviceimpl.ShoppingCartServiceImpl" %>
<%@ page language="java" import="cn.leizhang.service.ShoppingCartService" %>
<%@ page language="java" import="net.sf.json.JSONObject" %>
<%@ page language="java" import="cn.leizhang.domain.ShoppingCart" %>
<%@ page language="java" import="cn.leizhang.domain.CartItem" %>
<%@ page language="java" import="org.apache.commons.codec.binary.Base64"%>
<%@ page language="java" import="cn.leizhang.dao.GoodsMapper" %>



<%
	
	ShoppingCartService scs = new ShoppingCartServiceImpl();
	//由于本身 Cookie只能接收String类型，故现在利用json将对象序列化，然后存入cookie；
	Cookie[] cookies = request.getCookies();
	Cookie cookie = scs.cookieSearch(cookies);
	if (cookie != null) {
		
		JSONObject scc = JSONObject.fromObject(new String(Base64
				.decodeBase64(cookie.getValue())));
		ShoppingCart shopcart = (ShoppingCart) JSONObject.toBean(scc,
				ShoppingCart.class);
		
		session.setAttribute("shoppingcart2", shopcart);
	}
	
%>
<div id="content-right">
	<div id="cart">
		<img src="images/cart.gif">我的购物车
	</div>
	<c:choose>
		<c:when test="${shoppingcart2!=null}">
			<div id="total">

				<span id="contentright_total_num">${shoppingcart2.total_Goods }</span>x 物品 
			</div>
		</c:when>
		<c:otherwise>
			<div id="total">

				0x 物品 <span class="red">| 总共: 0.00￥ </span>
			</div>

		</c:otherwise>
	</c:choose>
	<div id="view">
		<a href="cart.action" class="red">查看购物车</a>
	</div>
	<div class="middle">
		<img src="images/border.gif">
	</div>
	<div class="middle" id="banner">
		<form action="BookSearch" method="post">
			<input name="searchfield" type="text" value="请在这里输入书名"> <input
				type="submit" value="搜索">
		</form>
	</div>
	<div class="middle">
		<img src="images/border.gif">
	</div>
	<br />
	<div id="bottom" class="gray">
		<div id="left">
			<img src="images/bullet4.gif">促销:

			<div class="promotebook">
				<div class="title"></div>
				<c:if test="${promotionGoods!=null}">
					<c:forEach items="${ promotionGoods}" var="good1">
						<div class="promotebook-box">
							<a href="ShowDetail.action?id=${good1.goodsid}"> <span
								class="promote"> <img src="images/promo_icon.gif">
							</span> <img src="images/banner/${good1.photo}"> </a>

						</div>
						<br />
					</c:forEach>
				</c:if>
			</div>
		</div>
	</div>
	<div id="right">
		<img src="images/bullet3.gif">种类:
		<table>
			<tr>
				<td><a href="##">C++</a>
				</td>
			</tr>
			<tr>
				<td><a href="##">JAVA</a>
				</td>
			</tr>
			<tr>
				<td><a href="##">JAVASCRIPT</a>
				</td>
			</tr>
			<tr>
				<td><a href="##">ASP .NET</a>
				</td>
			</tr>
			<tr>
				<td><a href="##">AJAX</a>
				</td>
			</tr>
		</table>
		<div>
			<img src="images/bullet6.gif">新用户:
			<table class="flag">

				<tr>
					<td></td>
				</tr>

			</table>
		</div>
	</div>
</div>
<%--<% request.getSession().removeAttribute("searchField");%>--%>