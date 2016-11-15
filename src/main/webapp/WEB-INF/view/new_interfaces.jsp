<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/table/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/table/bootstrap-table/src/bootstrap-table.css">
<link
	href="<%=request.getContextPath()%>/static/ace/vendors/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="http://rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/css/bootstrap-editable.css"
	rel="stylesheet">

<script src="<%=request.getContextPath()%>/static/table/jquery.min.js"></script>
<script
	src="<%=request.getContextPath()%>/static/table/bootstrap/js/bootstrap.min.js"></script>
<script
	src="<%=request.getContextPath()%>/static/table/bootstrap-table/src/bootstrap-table.js"></script>
<script
	src="http://rawgit.com/vitalets/x-editable/master/dist/bootstrap3-editable/js/bootstrap-editable.js"></script>
<script
	src="<%=request.getContextPath()%>/static/table/bootstrap-table/src/extensions/editable/bootstrap-table-editable.js"></script>
<title>主页</title>
<!-- Custom styling plus plugins -->
<link
	href="<%=request.getContextPath()%>/static/ace/production/css/custom1.css"
	rel="stylesheet">
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
							<h2>${sessionScope.user.userName}</h2>
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
									<h2>项目详情</h2>
									<ul class="nav navbar-right panel_toolbox">
										<li><a class="collapse-link"><i
												class="fa fa-chevron-up"></i></a></li>
										<li class="dropdown"><a href="#" class="dropdown-toggle"
											data-toggle="dropdown" role="button" aria-expanded="false"><i
												class="fa fa-wrench"></i></a>
											<ul class="dropdown-menu" role="menu">
												<li><a href="#">Settings 1</a></li>
												<li><a href="#">Settings 2</a></li>
											</ul></li>
										<li><a class="close-link"><i class="fa fa-close"></i></a>
										</li>
									</ul>
									<div class="clearfix"></div>
								</div>

								<div class="x_content">
									<form id="defaultForm" class="form-horizontal form-label-left">
										<div class="form-group">
											<label class="col-lg-3 control-label">项目名称</label>
											<div class="col-lg-5">
												<select id="pro-name" class="form-control">
													<option value="0">可用</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">模块</label>
											<div class="col-lg-5">
												<select id="module-name" class="form-control">
													<option value="0">可用</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">1.1接口名称</label>
											<div class="col-lg-5">
												<input type="text" class="form-control" id="interName"
													placeholder="请输入接口名称">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">1.2接口描述</label>
											<div class="col-lg-5">
												<input type="text" class="form-control" id="interDes"
													placeholder="请输入接口描述">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">1.3接口状态</label>
											<div class="col-lg-5">
												<select id="status" class="form-control">
													<option value="0">可用</option>
													<option value="1">不可用</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.1调用地址</label>
											<div class="col-lg-5">
												<input type="text" class="form-control" id="interUrl"
													placeholder="请输入调用地址">
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.2请求方式</label>
											<div class="col-lg-5">
												<select id="method" class="form-control">
													<option value="POST">POST</option>
													<option value="GET">GET</option>
													<option value="OPTIONS">OPTIONS</option>
													<option value="HEAD">HEAD</option>
													<option value="PUT">PUT</option>
													<option value="DELETE">DELETE</option>
													<option value="TRACE">TRACE</option>
												</select>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.3请求头说明</label>
											<div class="col-lg-5">
												<div id="toolbar">
													<button id="button" type="button" class="btn btn-default">添加</button>
													<button id="button1" type="button" class="btn btn-default">getAllSelections</button>
												</div>
												<table id="table" data-toggle="table"
													data-toolbar="#toolbar" data-height="240"
													data-click-to-select="true">
													<thead>
														<tr>
															<th data-field="state" data-checkbox="true"></th>
															<th data-field="name" data-editable="true">名称</th>
															<th data-field="isTrue" data-editable="true">是否必须</th>
															<th data-field="interType" data-editable="true">类型</th>
															<th data-field="des" data-editable="true">说明</th>
														</tr>
													</thead>
												</table>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.4请求参数示例</label>
											<div class="col-lg-5">
												<textarea id="requestexam" class="form-control" rows="6"
													placeholder='{
	"description":"大学生发布的讲座",
	"projectId":1,
	"projectName":"讲座来了",
	"projectVersion":"V1.0"
}'></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.5返回参数说明</label>
											<div class="col-lg-5">
												<textarea id="responseparam" class="form-control" rows="6"
													placeholder='{
	"description":"大学生发布的讲座",
	"projectId":1,
	"projectName":"讲座来了",
	"projectVersion":"V1.0"
}'></textarea>
											</div>
										</div>
										<div class="form-group">
											<label class="col-lg-3 control-label">2.6失败返回示例</label>
											<div class="col-lg-5">
												<textarea id="falseexam" class="form-control" rows="5"
													placeholder='{
	"msg":"error",
	"status":404,
	"data":"",
}'></textarea>
											</div>
										</div>
										<div class="ln_solid"></div>
										<div class="form-group">
											<div class="col-lg-9 col-lg-offset-3">
												<button type="button" class="btn btn-primary"
													id="createInterface">提交</button>
												<button type="button" class="btn btn-info" id="resetBtn">重置</button>
											</div>
										</div>
								</div>


								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- /page content -->

			<!-- footer content -->
			<footer>
				<div class="pull-right">
					flyapi接口管理系统V2.0 &nbsp;Copyright &copy;2016. 作者：王清飞 博客：<a
						target="_blank" href="http://flyhero.top">flyhero.top</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>
	<!-- Custom Theme Scripts -->
	<script
		src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>


	<script>
		var $table = $('#table'), $button = $('#button'), $button1 = $('#button1');
		var userId=${sessionScope.user.userId};
		$(function() {
			$button.click(function() {
				$table.bootstrapTable('insertRow', {
					index : 1,
					row : {
						name : '描述',
						isTrue : 'true',
						interType : 'int',
						des : '描述'
					}
				});
			});
			$button1.click(function() {
				alert('getSelections: '
						+ JSON.stringify($table
								.bootstrapTable('getAllSelections')));
			});

			$("#createInterface")
					.click(
							function() {
								var interName = $("#interName").val();
								var interDes = $("#interDes").val();
								var status = $("#status").val();
								var interUrl = $("#interUrl").val();
								var method = $("#method").val();
								var param = JSON.stringify($table
										.bootstrapTable('getAllSelections'));
								responseparam
								var requestexam = $("#requestexam").val();
								var responseparam = $("#responseparam").val();
								var trueexam = $("#trueexam").val();
								var falseexam = $("#falseexam").val();
								if (projectName != '' && description != ''
										&& description != '') {
									$
											.ajax({
												type : 'POST',
												url : "../interface/addInterface.do",
												dataType : "json",
												data : {
													interName : interName,
													interDes : interDes,
													status : status,
													interUrl : interUrl,
													method : method,
													param : param,
													requestexam : requestexam,
													responseparam : responseparam,
													trueexam : trueexam,
													falseexam : falseexam
												},
												success : function(data) {
													if (data.msg == 'success') {
														alert("创建成功！");
													} else {
														alert("创建失败！");
													}

												}

											});
								} else {
									alert("信息不能为空！");
								}

							});
			
			
			$
			.ajax({
				type : 'POST',
				url : "../project/findUserEdit.do",
				dataType : "json",
				data : {
					"userId":userId
				},
				success : function(data) {
					if (data.msg == 'ok') {
						$.each(data.data,function(index,pro){
							$("#pro-name").append('<option value="'+pro.projectId+'">'+pro.proName+'</option>');
						});
						
					} else {
						alert("获取项目失败！");
					}

				}

			});
			$("#pro-name").change( function() {
				var proId=$("#pro-name").val();
				$
				.ajax({
					type : 'POST',
					url : "../module/findModule.do",
					dataType : "json",
					data : {
						"projectId":proId
					},
					success : function(data) {
						if (data.msg == 'ok') {
							$.each(data.data,function(index,mo){
								$("#module-name").append('<option value="'+mo.moduleId+'">'+mo.moduleName+'</option>');
							});
							
						} else {
							alert("获取模块失败！");
						}

					}

				});
				});
			
		});
	</script>

</body>
</html>