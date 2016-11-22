<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="static.jsp"></jsp:include>
<title>接口列表</title>
<!-- Custom styling plus plugins -->
<link
	href="<%=request.getContextPath()%>/static/ace/production/css/custom.css"
	rel="stylesheet">
<style>
a {
	color: #000;
}

a:hover {
	color: #669900;
}

#wrap {
	width: 80%;
	margin: 30px auto;
	overflow: hidden;
}

.list {
	width: 100%;
	padding: 0 0 20px 0;
	margin: 0 0 20px 0;
	border-bottom: 1px dashed #666633;
}

.list .date {
	float: left;
	width: 76px;
	height: 80px;
	margin: 0 20px 0 0;
	padding: 2px 0 0;
	background: #514F42;
	text-transform: uppercase;
	text-align: center;
	font-size: 10px;
	font-weight: bold;
	color: #FFF;
}

.list b {
	display: block;
	font-size: 40px;
	color: #FFF;
	line-height: 40px;
}

.list .meta {
	margin: 0 0 25px 0;
	float: left;
	float: right;
	color: #979680;
}

.list h2 a {
	font-size: 20px;
}

.list p {
	display: block;
	line-height: 20px;
}
</style>
</head>
<body class="nav-md">
	<div class="container body">
		<div class="main_container">
			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">
					<div class="navbar nav_title" style="border: 0;">
						<a href="index.html" class="site_title"><i class="fa fa-paw"></i>
							<span>flyapi接口管理</span></a>
					</div>

					<div class="clearfix"></div>

					<!-- menu profile quick info -->
					<div class="profile">
						<div class="profile_pic">
							<img
								src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}"
								alt="..." class="img-circle profile_img">
						</div>
						<div class="profile_info">
							<span>Welcome,</span>
							<h2>flyhero</h2>
						</div>
					</div>
					<!-- /menu profile quick info -->

					<br />
					<hr>


					<jsp:include page="base/sidebar.jsp"></jsp:include>

				</div>
			</div>

			<jsp:include page="base/top.jsp"></jsp:include>
			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="clearfix"></div>

					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>接口列表</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>
								<div class="x_content">

									<div id="wrap">



										<form class="form-inline" role="form">
											<div class="form-group">
												<label for="pass" class="control-label">接口名</label> <input
													type="text" class="form-control" placeholder="请输入字段名"/ >
											</div>
											<div class="form-group">
												<label for="pass" class="control-label">创建者</label> <input
													type="text" class="form-control" placeholder="Password">
											</div>
											<div class="form-group">
												<label for="name">选择列表</label> <select class="form-control">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<button class="btn btn-info btn-search">查找</button>
										</form>

										<br>
										<hr>



										<div class="list">
											<p class="date">
												八月 <b>03</b>
											</p>
											<h2>
												<a href="#">一款简单的网页弹出层JS代码</a>
											</h2>

											<p>一款在网页中弹出层的实例代码，基于JS+css，本实例包含两个实例，一个是标准弹出层，另一个是弹出一个可拖动的层，并可设置层的标题，容器内容等，这是一个基本的层弹出单元，所有复杂的层弹出代码都可在此基础上进一步扩展。</p>
											<p class="meta">
												模块：<a href="/">首页</a>&nbsp;创建者：<a href="/">flyhero</a>&nbsp;&nbsp;<a
													href="#"><i class="fa fa-eye"></i> 详情</a> &nbsp;<a href="#"><i
													class="fa fa-wrench"></i> 调试</a>
											</p>
										</div>
									</div>

									<center>
										<ul class="pagination">
											<li><a href="#">&laquo;</a></li>
											<li class="active"><a href="#">1</a></li>
											<li class="disabled"><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">&raquo;</a></li>
										</ul>
									</center>

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<jsp:include page="base/footer.jsp"></jsp:include>
			<!-- /footer content -->
		</div>
	</div>

	<!-- Custom Theme Scripts -->
	<script
		src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>

</body>
</html>