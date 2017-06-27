<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html>
<head>
<link rel="stylesheet" href="css/feedback.css">
</head>
<body>
	<div id="feedback">

		<c:forEach items="${feedbacks }" var="feedback">
		<div class="item">
			<div class="box_top"></div>
			<div class="box_center">
				<div class="orange"></div>
				<p class="details">
					<font color=blue>

						${feedback.ip}
						
					</font><br>${feedback.subject }<br>
						${feedback.msg }
				</p>
			</div>
			<div class="box_bottom"></div>
		</div>
</c:forEach>
	</div>
</body>
</html>