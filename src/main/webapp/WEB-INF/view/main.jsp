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
<title>主页</title>
    <!-- Custom styling plus plugins -->
    <link href="<%=request.getContextPath()%>/static/ace/production/css/custom.css" rel="stylesheet">
</head>
 <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>flyapi接口管理</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="..." class="img-circle profile_img">
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
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>………………………………</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-home"></i> 首页</a>
                  </li>
                  <li><a><i class="fa fa-edit"></i> 我的项目 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu" id="user-project">
                      <li><a href="form.html">我创建的</a>
                      </li>
					  <li><a href="form.html">我参与的</a>
                      </li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-desktop"></i> 日志监控 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="../forward/druid.html">Druid连接池</a>
                      </li>
                      <li><a href="../forward/projects.html">服务器日志</a>
                      </li>
                      <li><a href="invoice.html">Invoice</a>
                      </li>
                      <li><a href="inbox.html">Inbox</a>
                      </li>

                    </ul>
                  </li>
                  <li><a><i class="fa fa-table"></i> 数据库字典 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="tables.html">Tables</a>
                      </li>
                      <li><a href="tables_dynamic.html">Table Dynamic</a>
                      </li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-bar-chart-o"></i> 数据分析 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="chartjs.html">Chart JS</a>
                      </li>
                      <li><a href="chartjs2.html">Chart JS2</a>
                      </li>

                    </ul>
                  </li>
                </ul>
              </div>
              <div class="menu_section">
                <h3>Live On</h3>
                <ul class="nav side-menu">
                  <li><a><i class="fa fa-bug"></i> 添加页 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="e_commerce.html">E-commerce</a>
                      </li>
                      <li><a href="projects.html">Projects</a>
                      </li>
                      <li><a href="project_detail.html">Project Detail</a>
                      </li>
                      <li><a href="contacts.html">Contacts</a>
                      </li>
                      <li><a href="profile.html">Profile</a>
                      </li>
                    </ul>
                  </li>
                  <li><a><i class="fa fa-windows"></i> Extras <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="page_404.html">404 Error</a>
                      </li>
                      <li><a href="page_500.html">500 Error</a>
                      </li>
                      <li><a href="plain_page.html">Plain Page</a>
                      </li>
                      <li><a href="login.html">Login Page</a>
                      </li>
                      <li><a href="pricing_tables.html">Pricing Tables</a>
                      </li>
                    </ul>
                  </li>
                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
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
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
                <label>收缩扩展</label>
              </div>
              <div class="nav toggle">
                                   
         				<a id="menu_toggle"><i class="fa fa-plus"></i> </a>
         				<label>新建项目</label>
              </div>
              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="">flyhero
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                    <li><a href="javascript:;">  Profile</a>
                    </li>
                    <li>
                      <a href="javascript:;">
                        <span class="badge bg-red pull-right">50%</span>
                        <span>Settings</span>
                      </a>
                    </li>
                    <li>
                      <a href="javascript:;">Help</a>
                    </li>
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                  <a href="javascript:;" class="dropdown-toggle info-number" data-toggle="dropdown" aria-expanded="false">
                    <i class="fa fa-envelope-o"></i>
                    <span class="badge bg-green">6</span>
                  </a>
                  <ul id="menu1" class="dropdown-menu list-unstyled msg_list" role="menu">
                    <li>
                      <a>
                        <span class="image">
                                          <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="Profile Image" />
                                      </span>
                        <span>
                                          <span>John Smith</span>
                        <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                                          Film festivals used to be do-or-die moments for movie makers. They were where...
                                      </span>
                      </a>
                    </li>
                    <li>
                      <div class="text-center">
                        <a>
                          <strong>See All Alerts</strong>
                          <i class="fa fa-angle-right"></i>
                        </a>
                      </div>
                    </li>
                  </ul>
                </li>

              </ul>
            </nav>
          </div>

        </div>
        <!-- /top navigation -->

        <!-- page content -->
        <div class="right_col" role="main">
              <div class="x_panel">
                <div class="x_title">
                  <h2>最近动态 <small>Sessions</small></h2>
                  <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>
                    <li class="dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      <ul class="dropdown-menu" role="menu">
                        <li><a href="#">Settings 1</a>
                        </li>
                        <li><a href="#">Settings 2</a>
                        </li>
                      </ul>
                    </li>
                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                  </ul>
                  <div class="clearfix"></div>
                </div>
                <div class="x_content">
                  <ul class="list-unstyled msg_list">
                    <li>
                      <a>
                        <span class="image">
                          <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="img" />
                        </span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image">
                          <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="img" />
                        </span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image">
                          <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="img" />
                        </span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that
                        </span>
                      </a>
                    </li>
                    <li>
                      <a>
                        <span class="image">
                          <img src="<%=request.getContextPath()%>${sessionScope.user.avatarUrl}" alt="img" />
                        </span>
                        <span>
                          <span>John Smith</span>
                          <span class="time">3 mins ago</span>
                        </span>
                        <span class="message">
                          Film festivals used to be do-or-die moments for movie makers. They were where you met the producers that
                        </span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              					<div class="panel panel-default">
						<div class="panel-heading">
							<h3 class="panel-title">版本日志</h3>
						</div>
						<div class="panel-body">

							<div class="panel-group" id="accordion">
							
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<span class="badge pull-right">2016.11.5</span>
											<a data-toggle="collapse" data-parent="#accordion"
												href="#collapseTwo"> V2.0 </a>
										</h4>
									</div>
									<div id="collapseTwo" class="panel-collapse collapse  in">
										<div class="panel-body">
											<ol>
												<li>使用后台模板</li>
												<li>增加操作日志</li>
												<li>增加数据库表字典</li>
												<li>项目成员管理</li>
											</ol>
										</div>
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
									<div id="collapseOne" class="panel-collapse collapse">
										<div class="panel-body">
											<ol>
												<li>登录、注册功能</li>
												<li>新建、修改项目</li>
												<li>新建、修改模块</li>
												<li>新建、修改接口</li>
												<li>JSON格式化</li>
												<li>可编辑表格插件</li>
												<li>添加项目成员</li>
											</ol>
										</div>
									</div>
								</div>
							</div>


						</div>
					</div>
					
					<iframe src="../druid" width="100%" height="500"></iframe>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            flyapi接口管理系统V2.0 &nbsp;Copyright &copy;2016. 作者：王清飞 博客：<a target="_blank" href="http://flyhero.top">flyhero.top</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
<script>
	$(function() {
		var id = ${sessionScope.user.userId};
		$.ajax({
					type : "GET",
					url : "../project/findUserProject.do",
					data : {
						"userId" : id
					},
					dataType : "json",
					success : function(result) {
						$.each(result.data,function(projectIndex, project) {
 							$("#user-project").append('<li><a href="form.html">'+project["project"].proName+project["project"].proVersion+'</a>'); 
						});
					}
				});
	});
</script>
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
  </body>
</html>