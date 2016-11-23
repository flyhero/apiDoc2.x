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
<title>我创建的项目</title>
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
                  <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>Projects <small>Listing design</small></h3>
              </div>

              <div class="title_right">
                <div class="col-md-5 col-sm-5 col-xs-12 form-group pull-right top_search">
                  <div class="input-group">
                    <input type="text" class="form-control" placeholder="Search for...">
                    <span class="input-group-btn">
                              <button class="btn btn-default" type="button">Go!</button>
                          </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>Projects</h2>
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

					<table class="table table-no-bordered" id="cusTable"  
					       data-pagination="true"  
					       data-show-toggle="true"  
					       >  
					</table>  




                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        	<div class="modal fade" id="myModal2" tabindex="0" role="dialog"
		aria-labelledby="myModalLabel2" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel2">修改项目</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="projectid" />
					<label for="projectName">名称</label> <input type="text"
						class="form-control" id="projectName"> 
					<label for="description">描述</label>
					<textarea id="description" class="form-control" rows="3"></textarea>
					<label for="targetCount">预计接口</label> <input type="number"
						class="form-control" id="targetCount">
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="changeProject" data-dismiss="modal"
						class="btn btn-primary">提交</button>
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

	<script src="<%=request.getContextPath()%>/static/js/page/list-created.js"></script>
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	
  </body>
</html>