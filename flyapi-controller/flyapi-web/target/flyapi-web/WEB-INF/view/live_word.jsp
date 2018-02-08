<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String socketPath = request.getServerName() + ":"
			+ request.getServerPort() + path;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>flyapi登录</title>
<meta name="description"
	content="" />
<meta name="viewport"
	content="width=1000, initial-scale=1.0, maximum-scale=1.0">
<link rel="shortcut icon" href="img/favicon.ico">
</head>
<body>
	<div class="container">
	直播类型，纯文本，markdown,富文本编辑
		<textarea rows="10" cols="100"></textarea>
	</div>


<script type="text/javascript">
 window.onbeforeunload=function (){
	console.log("===onbeforeunload===");
	if(event.clientX>document.body.clientWidth && event.clientY < 0 || event.altKey){
	    /*  alert("你关闭了浏览器"); */
	}else{
	    /*  alert("你正在刷新页面"); */
	}
	return "ok";
	} 
/* $(document).ready(function() {
	$('textarea').on('propertychange input', function(event) {
		alert($(this).val());
	});
}); */


</script>
<%-- <script>
	var path = '<%=socketPath%>';
	var uid = ${sessionScope.user.userId};
	var websocket;
	var to=uid==1?2:1;
	if ('WebSocket' in window) {
		websocket = new WebSocket("ws://" + path + "/ws?uid=" + uid);
	} else if ('MozWebSocket' in window) {
		websocket = new MozWebSocket("ws://" + path + "/ws" + uid);
	} else {
		websocket = new SockJS("http://" + path + "/ws/sockjs" + uid);
	}
	websocket.onopen = function(event) {
		console.log("WebSocket:已连接");
		console.log(event);
	};
	websocket.onmessage = function(event) {
		var data = JSON.parse(event.data);
		var time=getMyDate(data.date);
		console.log("WebSocket:收到一条消息", data);
		$("textarea").val(data.text);
	};
	websocket.onerror = function(event) {
		console.log("WebSocket:发生错误 ");
		console.log(event);
	};
	websocket.onclose = function(event) {
		console.log("WebSocket:已关闭");
		console.log(event);
	}
	function sendMsg(){
		var v=$("#msg").val();
		if(v==""){
			return;
		}else{
			var data={};
			data["from"]=from;
			data["fromName"]=fromName;
			data["to"]=to;
			data["text"]=v;
			websocket.send(JSON.stringify(data));
		}
	} 
</script>--%>
</body>
</html>