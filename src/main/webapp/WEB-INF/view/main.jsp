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
			<jsp:include page="base/sidebar.jsp"></jsp:include>

          </div>
        </div>

 			<jsp:include page="base/top.jsp"></jsp:include>
        <!-- page content -->
        <div class="right_col" role="main">
              <div class="x_panel">
                <div class="x_title">
                  <h2>最近动态 </h2>
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
                  </ul>
                  					<center>
										<ul class="pagination">
											
										</ul>
									</center>
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
												<li>项目成员管理(增加、删除、权限修改)</li>
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
					
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <jsp:include page="base/footer.jsp"></jsp:include>
        <!-- /footer content -->
      </div>
    </div>
    
    <script type="text/javascript">
    	var userId=${sessionScope.user.userId};
    	logPage(1,5);
    	function logPage(pageNumber,pageSize){
    		$.ajax({
    			type : 'POST',
    			url : "../log/findAllLog.do",
    			dataType : "json",
    			data : {
    				"userId":userId,
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
    				
    				$(".msg_list").empty();
    				$.each(data.data.list,function(index,log){
    					$(".msg_list").append('<li>'
                                +'<div class="message_wrapper">'
                                 +' <h4 class="heading">'+log.userName+'</h4>'
                                 +' <blockquote class="message">'+log.remark+'</blockquote>'
                                 +' <br />'
                                  +'<p class="url">'
                                  +'  <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>'
                                  +'  <a><i class="fa fa-calendar"></i> '+getMyDate(log.createTime)+' </a>'
                                  +'</p>'
                                +'</div>'
                             +' </li>');
    				});
    				
    			}

    		}); 
    	}
    </script>
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
  </body>
</html>