<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <!-- Bootstrap -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/static/table/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
 <link href="<%=request.getContextPath()%>/static/ace/vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom styling plus plugins -->
    <link href="<%=request.getContextPath()%>/static/ace/production/css/custom.css" rel="stylesheet">
<title>接口</title>

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
		                <img src="<%=request.getContextPath()%>/static/ace/production/images/img.jpg" alt="..." class="img-circle profile_img">
		              </div>
		              <div class="profile_info">
		                <span>Welcome,</span>
		                <h2>flyhero</h2>
		              </div>
		            </div>
					<!-- /menu profile quick info -->

					<br />
					<hr>
					<!-- sidebar menu -->
					<div id="sidebar-menu"
						class="main_menu_side hidden-print main_menu">
						<div class="menu_section">
							<h3>………………………………</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-home"></i> 首页 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="index.html">Dashboard</a></li>
									</ul></li>
								<li><a><i class="fa fa-edit"></i> 我的项目 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu" id="my_project">
										<li><a href="form.html">General Form</a></li>

									</ul></li>
								<li><a><i class="fa fa-desktop"></i> 日志监控 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="general_elements.html">General Elements</a>
										</li>
										<li><a href="widgets.html">Widgets</a></li>
										<li><a href="invoice.html">Invoice</a></li>
										<li><a href="inbox.html">Inbox</a></li>

									</ul></li>
								<li><a><i class="fa fa-table"></i> 数据库字典 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="tables.html">Tables</a></li>
										<li><a href="tables_dynamic.html">Table Dynamic</a></li>
									</ul></li>
								<li><a><i class="fa fa-bar-chart-o"></i> 数据分析 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="chartjs.html">Chart JS</a></li>
										<li><a href="chartjs2.html">Chart JS2</a></li>

									</ul></li>
							</ul>
						</div>
						<div class="menu_section">
							<h3>Live On</h3>
							<ul class="nav side-menu">
								<li><a><i class="fa fa-bug"></i> 添加页 <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="e_commerce.html">E-commerce</a></li>
										<li><a href="projects.html">Projects</a></li>
										<li><a href="project_detail.html">Project Detail</a></li>
										<li><a href="contacts.html">Contacts</a></li>
										<li><a href="profile.html">Profile</a></li>
									</ul></li>
								<li><a><i class="fa fa-windows"></i> Extras <span
										class="fa fa-chevron-down"></span></a>
									<ul class="nav child_menu">
										<li><a href="page_404.html">404 Error</a></li>
										<li><a href="page_500.html">500 Error</a></li>
										<li><a href="plain_page.html">Plain Page</a></li>
										<li><a href="login.html">Login Page</a></li>
										<li><a href="pricing_tables.html">Pricing Tables</a></li>
									</ul></li>
							</ul>
						</div>

					</div>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<a data-toggle="tooltip" data-placement="top" title="Settings">
							<span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="FullScreen">
							<span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Lock"> <span
							class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
						</a> <a data-toggle="tooltip" data-placement="top" title="Logout">
							<span class="glyphicon glyphicon-off" aria-hidden="true"></span>
						</a>
					</div>
					<!-- /menu footer buttons -->
				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">
						<div class="nav toggle">
							<a id="menu_toggle"><i class="fa fa-bars"></i></a> <label>收缩扩展</label>
						</div>
						<div class="nav toggle">
							<a data-toggle="modal" data-target="#myModal" id="menu_toggle"><i class="fa fa-plus"></i> </a> <label>新建项目</label>
						</div>
						<div class="nav toggle">
							<a data-toggle="modal" data-target="#myModal3" id="menu_toggle"><i class="fa fa-plus"></i> </a> <label>新建模块</label>
						</div>
						<ul class="nav navbar-nav navbar-right">
							<li class=""><a href="javascript:;"
								class="user-profile dropdown-toggle" data-toggle="dropdown"
								aria-expanded="false"> <img src="<%=request.getContextPath()%>/static/ace/production/images/img.jpg" alt="">flyhero
									<span class=" fa fa-angle-down"></span>
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

							<li role="presentation" class="dropdown"><a
								href="javascript:;" class="dropdown-toggle info-number"
								data-toggle="dropdown" aria-expanded="false"> <i
									class="fa fa-envelope-o"></i> <span class="badge bg-green">6</span>
							</a>
								<ul id="menu1" class="dropdown-menu list-unstyled msg_list"
									role="menu">
									<li><a> <span class="image"> <img
												src="<%=request.getContextPath()%>/static/ace/production/images/img.jpg" alt="Profile Image" />
										</span> <span> <span>John Smith</span> <span class="time">3
													mins ago</span>
										</span> <span class="message"> Film festivals used to be
												do-or-die moments for movie makers. They were where... </span>
									</a></li>
									<li>
										<div class="text-center">
											<a> <strong>See All Alerts</strong> <i
												class="fa fa-angle-right"></i>
											</a>
										</div>
									</li>
								</ul></li>

						</ul>
					</nav>
				</div>

			</div>
			<!-- /top navigation -->

			<!-- page content -->
        <div class="right_col" role="main">

          <div class="">

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
 					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">版本日志</h3>
						</div>
						<div class="panel-body">

							<div class="panel-group" id="accordion">
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseThree"> V1.2 </a>
										</h4>
									</div>
									<div id="collapseThree" class="panel-collapse collapse">
										<div class="panel-body">1.登录、注册功能 2.我的项目->新建项目</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo"> V1.1 </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse">
										<div class="panel-body">多数据源，日志监控</div>
									</div>
								</div>
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<span class="badge pull-right">2016.10.20</span> <a
												data-toggle="collapse" data-parent="#accordion"
												href="#collapseOne"> V1.0 </a>
										</h4>
									</div>
									<div id="collapseOne" class="panel-collapse collapse in">
										<div class="panel-body">1.登录、注册功能 2.我的项目->新建项目</div>
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
		<!-- 模态框（Modal） -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
			aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h4 class="modal-title" id="myModalLabel">新建项目</h4>
					</div>
					<div class="modal-body">
						<label for="projectName">名称</label> <input type="text"
							class="form-control" id="projectName" placeholder="请输入名称">
						<label for="description">描述</label>
						<textarea id="description" class="form-control" rows="3"
							placeholder='描述'></textarea>
						<label for="projectVersion">版本</label> <input type="text"
							class="form-control" id="projectVersion" placeholder="版本">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
						<button type="button" id="createProject" data-dismiss="modal"
							class="btn btn-primary">提交</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div>
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel3">新建模块</h4>
				</div>
				<div class="modal-body">
					<label for="moduleName">模块名称</label> 
					<input type="text" class="form-control" id="moduleName"> 
					<label for="moduleName">属于项目</label> 
					<select id="moduleProject" class="form-control">
						<option value="0">请选择</option>
					</select>
					<label for="moduleDes">描述</label>
					<textarea id="moduleDes" class="form-control" rows="3"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="addModule" data-dismiss="modal"
						class="btn btn-primary">提交</button>
				</div>
			</div>
		</div>
		</div>
			<!-- footer content -->
			<footer>
				<div class="pull-right">
					flyapi接口管理系统V1.0 &nbsp;Copyright &copy;2016. 作者：王清飞 博客：<a
						target="_blank" href="http://flyhero.top">flyhero.top</a>
				</div>
				<div class="clearfix"></div>
			</footer>
			<!-- /footer content -->
		</div>
	</div>

	<!-- jQuery -->
<script src="<%=request.getContextPath()%>/static/table/jquery.min.js"></script>
	<script>

		$(function() {
			var id = ${sessionScope.user.userId};
			alert("++"+id);
			$.ajax({
						type : "GET",
						url : "getMyProject.do",
						data : {
							userId : id
						},
						dataType : "json",
						success : function(data) {
							$.each(data,function(projectIndex, project) {
								var timestamp = project["project"].createTime;
												$("#my_project")
														.append(
																'<li><a href="goToModule.do?projectId='
																		+ project["project"].projectId
																		+ '">'
																		+ project["project"].projectName
																		+ '</a></li>');
												$("#moduleProject")
												.append(
														'<option value="'+project["project"].projectId+'">'+project["project"].projectName+'</option>');
											});
						}
					});
			$("#createProject").click(
					function() {
						var projectName = $("#projectName").val();
						var projectVersion = $("#projectVersion").val();
						var description = $("#description").val();
						if (projectName != '' && description != ''
								&& description != '') {
							$.ajax({
								type : 'POST',
								url : "../project/addProject.do",
								dataType : "json",
								data : {
									projectName : projectName,
									projectVersion : projectVersion,
									description : description
								},
								success : function(data) {
									alert(data.msg);
									if (data.msg == 'success') {
										alert("创建成功！");
									}

								}

							});
						} else {
							alert("信息不能为空！");
						}

					});

		});

	</script>
	<!-- Bootstrap -->
<script
	src="<%=request.getContextPath()%>/static/table/bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
</body>
</html>