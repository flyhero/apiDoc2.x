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



											<div class="form-group">
												<label for="pass" class="control-label">接口名</label> <input
													type="text" class="form-control" id="interName" placeholder="接口名"/ >
											</div>
											<div class="form-group">
												<label for="pass" class="control-label">创建者</label> <input
													type="text" class="form-control"  id="uName" placeholder="创建者">
											</div>
											<div class="form-group">
												<label for="name">模块</label> 
												<select id="module-id" class="form-control">
													<option value="0">请选择</option>
												</select>
											</div>
											<button class="btn btn-info btn-search" type="button" onclick="logPage(1,5)">查找</button>

										<br>
										<hr>
										<div id="inter-list">
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
									</div>

									<center>
										<ul class="pagination">
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
    <script type="text/javascript">
    	var projectId=${projectId};
    	
		$.ajax({
			type : 'POST',
			url : "../module/findModule.do",
			dataType : "json",
			data : {
				"projectId":projectId
			},
			success : function(data) {
				$.each(data.data,function(index,module){
					$("#module-id").append('<option value="'+module.moduleId+'">'+module.moduleName+'</option>');
				});
				
			}

		});
    	
    	logPage(1,5);
    	function logPage(pageNumber,pageSize){
        	var interName=$("#interName").val();
        	var userName=$("#uName").val();
        	var moId=$("#module-id").val();
    		$.ajax({
    			type : 'POST',
    			url : "../interface/findInterface.do",
    			dataType : "json",
    			data : {
    				"projectId":projectId,
    				"interName":interName,
    				"userName":userName,
    				"moduleId":moId,
    				"pageNumber":pageNumber,
    				"pageSize":pageSize
    			},
    			success : function(data) {
    				$(".pagination").empty();
    				$(".pagination").append('<li class="disabled"><a href="#">&laquo;</a></li>');
    				$.each(data.data.navigatepageNums,function(index,pn){
    					if(data.data.pageNum==pn){
    						$(".pagination").append('<li class="active"><a onclick="logPage('+pn+',5)">'+pn+'</a></li>');
    					}else{
    						$(".pagination").append('<li><a onclick="logPage('+pn+',5)">'+pn+'</a></li>');
    					}
    					
    				});
    				$(".pagination").append('<li class="disabled"><a href="disabled">&raquo;</a></li>');
    				
    				$("#inter-list").empty();
    				$.each(data.data.list,function(index,inter){
    					$("#inter-list").append('<div class="list">'
								+'<p class="date">'
								+getMonth(inter.createTime)+'月<b>'+getDay(inter.createTime)+'</b>'
								+'</p>'
								+'<h2>'
								+'	<a href="#">'+inter.interName+'</a>'
								+'</h2>'
								+'<p>'+inter.interDes+'</p>'
								+'<p class="meta">时间：'+getMyDate(inter.createTime)
								+'&nbsp;	模块：<a href="/">'+inter.moduleName+'</a>&nbsp;创建者：<a href="/">'+inter.userName+'</a>&nbsp;&nbsp;'
								+'		<a href="#"><i class="fa fa-eye"></i> 详情</a> &nbsp;<a href="#"><i class="fa fa-edit"></i> 修改</a> &nbsp;<a href="#"><i'
								+'		class="fa fa-wrench"></i> 调试</a>'
								+'</p>'
								+'	</div>');
    				});
    				
    			}

    		}); 
    	}
    </script>
	<script
		src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>

</body>
</html>