<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page language="java" import="cn.leizhang.domain.CartItem"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link rel="stylesheet" href="css/header.css">
<link rel="stylesheet" href="css/content.css">
<link rel="stylesheet" href="css/footer.css">
<link rel="stylesheet" href="css/cart.css">

<script type="text/javascript">
	function getXmlHttpRequest() {
		var xmlhttp = null;

		if (window.XMLHttpRequest) {
			xmlhttp = new XMLHttpRequest(); // 针对于现在的浏览器包括IE7以上版本
		} else if (window.ActiveXObject) {
			// 针对于IE5,IE6版本
			xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
		}
		return xmlhttp;
	}
</script>
<script type="text/javascript">
	//var txt = document.getElementById("addGoods");
	//txt.onclick=function('${GoodsItem.goodsid}'){
	function addGoods(id) {
		
		var ids = document.getElementsByName(id).item(1);
		var parrent = ids.parentNode;
		//alert(document.getElementById("subtotal_money"+id).innerHTML);
		//第一步:得到XMLHttpRequest对象.
		var xmlhttp = getXmlHttpRequest();

		//2.设置回调函数
		xmlhttp.onreadystatechange = function() {

			//5.处理响应数据  当信息全部返回，并且是成功
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
				
				var span=parseInt(parrent.getElementsByTagName('span')[0].innerHTML);
					parrent.getElementsByTagName('span')[0].innerHTML=span+1;
				var subtotal_money=parseFloat(document.getElementById("subtotal_money"+id).innerHTML);
				var singleprice=subtotal_money/span;
				document.getElementById("subtotal_money"+id).innerHTML=parseFloat(singleprice*(span+1)).toFixed(1);
				var total_num=parseFloat(document.getElementById("total_num").innerHTML);
				document.getElementById("total_num").innerHTML=total_num+1;
				var total_money=parseInt(document.getElementById("total_price").innerHTML);
				document.getElementById("total_price").innerHTML=parseFloat(total_money+singleprice).toFixed(1);
				//操作右侧页面的物品综述
				document.getElementById("contentright_total_num").innerHTML=total_num+1;
			}
		};
		//alert("haha");
		//post请求方式，参数设置
		xmlhttp.open("GET", "addGoods.action?id=" + id);

		xmlhttp.send(null);

	}
</script>
<script type="text/javascript">
	//var txt = document.getElementById("addGoods");
	//txt.onclick=function('${GoodsItem.goodsid}'){
	function subGoods(id) {
		
		var ids = document.getElementsByName(id).item(1);
		var parrent = ids.parentNode;
		//alert(document.getElementById("subtotal_money"+id).innerHTML);
		//第一步:得到XMLHttpRequest对象.
		var xmlhttp = getXmlHttpRequest();

		//2.设置回调函数
		xmlhttp.onreadystatechange = function() {

			//5.处理响应数据  当信息全部返回，并且是成功
			if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
				
				
				var span=parseInt(parrent.getElementsByTagName('span')[0].innerHTML);
				var subtotal_money=parseFloat(document.getElementById("subtotal_money"+id).innerHTML);
				var singleprice=parseInt(subtotal_money/span).toFixed(1);
				if((span-1)<=0)
					{
					var Goodsitem = document.getElementById(id);
					 Goodsitem.parentNode.removeChild(Goodsitem);
					}
				else
				{
					parrent.getElementsByTagName('span')[0].innerHTML=span-1;
					document.getElementById("subtotal_money"+id).innerHTML=parseFloat(singleprice*(span-1)).toFixed(1);
				}
				
				var total_num=parseFloat(document.getElementById("total_num").innerHTML);
				document.getElementById("total_num").innerHTML=total_num-1;
				var total_money=parseInt(document.getElementById("total_price").innerHTML);
				document.getElementById("total_price").innerHTML=parseFloat(total_money-singleprice).toFixed(1);
				//操作右侧页面的物品综述
				document.getElementById("contentright_total_num").innerHTML=total_num-1;
			}
		};
		//alert("haha");
		//post请求方式，参数设置
		xmlhttp.open("GET", "subGoods.action?id=" + id);

		xmlhttp.send(null);

	}
</script>
</head>
<body>
	<jsp:include page="head.jsp"></jsp:include>
	<div id="content">
		<div id="content-left">
			<div class="gray">
				<img src="images/bullet1.gif">我的购物车
			</div>
			<div id="cartcart">
				<table class="cart_table">
					<tbody>
						<tr class="cart_title">
							<td>图书封面</td>
							<td>书名</td>
							<td>单价</td>
							<td>数量</td>
							<td>总价</td>
							<td>操作</td>
						</tr>

						<c:if test="${cartItem!=null }">
							<c:forEach items="${cartItem }" var="GoodsItem">
								<tr id="${GoodsItem.goodsid}">
									<td><a href="ShowDetail.action?id=${GoodsItem.goodsid}"> <img
											src="images/banner/${GoodsItem.photo}" alt="" title=""
											border="0" class="cart_thumb"> </a></td>
									<td>${GoodsItem.goodsname }</td>
									<td>${GoodsItem.goodsprice }￥</td>
									<td><a href="javascript:void(0)"
										name="${GoodsItem.goodsid}" onclick="addGoods(this.name)">+</a>
										<span name="subtotal_num">${GoodsItem.subtotal_num }</span>
											<a href="javascript:void(0)"
											name="${GoodsItem.goodsid}" onclick="subGoods(this.name)">-</a></td>
									<td ><span id="subtotal_money${GoodsItem.goodsid}">${GoodsItem.subtotal_money }</span>￥</td>
									<td><a href="removeGoods.action?id=${GoodsItem.goodsid}">删除<a>
									</td>
								</tr>
							</c:forEach>
						</c:if>

						<tr>
							<td colspan="4" class="cart_total"><span class="red">总数量:</span>
							</td>
							<td ><span id="total_num">${shoppingcart2.total_Goods }</span> 本</td>
						</tr>
						<tr>
							<td colspan="4" class="cart_total"><span class="red">总共:</span>
							</td>
							<td ><span id="total_price">${shoppingcart2.total_Money }</span>￥</td>
						</tr>
					</tbody>
				</table>
				<a href="books.action" class="continue">&lt; 继续</a> <a href="#"
					class="checkout">结算&gt;</a>
			</div>
		</div>
		<jsp:include page="content-right.jsp"></jsp:include>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
