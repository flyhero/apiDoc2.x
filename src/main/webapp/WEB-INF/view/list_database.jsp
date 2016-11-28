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
									<ul class="nav navbar-left panel_toolbox">
										<li><a href="../forward/new_database.html" class="collapse-link"><i
												class="fa fa-plus"></i>新建数据</a></li>
									</ul>
											
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
								
<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>Digital Strategist</i></h4>
                            <div class="left col-xs-7">
                              <h2>Nicole Pearson</h2>
                              <p><strong>About: </strong> Web Designer / UX / Graphic Artist / Coffee Lover </p>
                              <ul class="list-unstyled">
                                <li><i class="fa fa-building"></i> Address: </li>
                                <li><i class="fa fa-phone"></i> Phone #: </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                              <img src="images/img.jpg" alt="" class="img-circle img-responsive">
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <button type="button" class="btn btn-success btn-xs"> <i class="fa fa-user">
                                </i> <i class="fa fa-comments-o"></i> </button>
                              <button type="button" class="btn btn-primary btn-xs">
                                <i class="fa fa-user"> </i> View Profile
                              </button>
                            </div>
                          </div>
                        </div>
                      </div>
									
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
				layer.alert('getSelections: '
						+ JSON.stringify($table
								.bootstrapTable('getAllSelections')));
			});

			$("#createInterface")
					.click(
							function() {
								var moduleId=$("#module-name").val();
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
								if (interName != '' && interUrl != ''
										&& param != '') {
									$
											.ajax({
												type : 'POST',
												url : "../interface/addInterface.do",
												dataType : "json",
												data : {
													"moduleId":moduleId,
													"interName" : interName,
													"interDes" : interDes,
													"status" : status,
													"interUrl" : interUrl,
													"method" : method,
													"param" : param,
													"requestExam" : requestexam,
													"responseParam" : responseparam,
													"trueExam" : trueexam,
													"falseExam" : falseexam
												},
												success : function(data) {
													if (data.msg == 'ok') {
														layer.alert("创建成功！");
													} else {
														layer.alert("创建失败！");
													}

												}

											});
								} else {
									layer.alert("信息不能为空！");
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
							$("#pro-name").append('<option value="'+pro.project.projectId+'">'+pro.project.proName+'</option>');
						});
						
					} else {
						layer.alert("获取项目失败！");
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
							layer.alert("获取模块失败！");
						}

					}

				});
				});
			
		});
	</script>

</body>
</html>