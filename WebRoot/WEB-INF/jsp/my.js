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