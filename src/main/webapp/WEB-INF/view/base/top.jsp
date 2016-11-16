<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String socketPath = request.getServerName() + ":"
			+ request.getServerPort() + path + "/";
%>
<!-- top navigation -->
<div class="top_nav">

	<div class="nav_menu">
		<nav class="" role="navigation">
			<div class="nav toggle">
				<a id="menu_toggle"><i class="fa fa-bars"></i></a> <label>收缩扩展</label>
			</div>
			<div class="nav toggle">

				<a href="../forward/newProject.html" id="menu_toggle"><i
					class="fa fa-plus"></i> </a> <label>新建项目</label>
			</div>
			<div class="nav toggle">

				<a href="../forward/new_interfaces.html" id="menu_toggle"><i
					class="fa fa-plus"></i> </a> <label>新建接口</label>
			</div>
			<ul class="nav navbar-nav navbar-right">
				<li class=""><a href="javascript:;"
					class="user-profile dropdown-toggle" data-toggle="dropdown"
					aria-expanded="false"> <img
						src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}"
						alt="">${sessionScope.user.userName} <span
						class=" fa fa-angle-down"></span>
				</a>
					<ul class="dropdown-menu dropdown-usermenu pull-right">
						<li><a href="javascript:;"> Profile</a></li>
						<li><a href="javascript:;"> <span
								class="badge bg-red pull-right">50%</span> <span>Settings</span>
						</a></li>
						<li><a href="javascript:;">Help</a></li>
						<li><a href="login.html"><i
								class="fa fa-sign-out pull-right"></i> Log Out</a></li>
					</ul></li>

				<li role="presentation" class="dropdown"><a href="javascript:;"
					class="dropdown-toggle info-number" data-toggle="dropdown"
					aria-expanded="false"> <i class="fa fa-envelope-o"></i> <span
						class="badge bg-green">*</span>
				</a>
					<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
						role="menu">
						<li><a> <span class="image"> <img src=""/></span> 
								<span> 
									<span>用户名</span> 
									<span class="time">3分钟前</span>
								</span> 
								<span class="message"> 消息体 </span>
						</a></li>
						<li>
							<div class="text-center">
								<a> <strong>查看详细</strong> <i class="fa fa-angle-right"></i>
								</a>
							</div>
						</li>
					</ul></li>

			</ul>
		</nav>
	</div>

</div>
<!-- /top navigation -->
<script>
	var path = '<%=socketPath%>';
	var uid = ${sessionScope.user.userId};
	var websocket;
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
		console.log("WebSocket:收到一条消息", data);
		var textCss = data.from == -1 ? "sfmsg_text" : "fmsg_text";
		$("#menu1").append('<li><a> <span class="image"> <img src=""/></span><span><span>用户名</span><span class="time">3分钟前</span></span><span class="message"> 消息体 </span></a></li>');
	};
	websocket.onerror = function(event) {
		console.log("WebSocket:发生错误 ");
		console.log(event);
	};
	websocket.onclose = function(event) {
		console.log("WebSocket:已关闭");
		console.log(event);
	}
</script>