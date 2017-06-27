<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="content-left">
	<div class="gray">
		<img src="images/bullet1.gif">好书一瞥
		<div class=""></div>
	</div>

	<c:forEach items="${goodsList}" var="good">
		<div class="item">
			<div class="item-left">
				<a href="ShowDetail.action?id=${good.goodsid}"> <img
					src="images/banner/${good.photo}"> </a>
			</div>
			<div class="item-right">
				<div class="box_top"></div>
				<div class="box_center">
					<div class="orange">简介:</div>
					<p class="details">${good.breifintroduction}</p>
					<div class="orange2">
						<a href="ShowDetail.action?id=${good.goodsid}" class="orange2"> --更多信息--</a>
					</div>
				</div>
				<div class="box_bottom"></div>
			</div>
		</div>
	</c:forEach>
	
	<div id="content-left-bottom">
		<div class="gray">
			<img src="images/bullet2.gif">新书推荐
		</div>
		<c:forEach items="${newGoodsList}" var="newGoods">
			<div class="newbook">
				<div class="title">${newGoods.goodsname}</div>
				<div class="newbook-box">
					<a href="ShowDetail.action?id=${newGoods.goodsid }"> <span class="new"> <img
							src="images/new_icon.gif"> </span> <img src="images/banner/${newGoods.photo }">
					</a>
				</div>
			</div>

		</c:forEach>
	</div>
</div>