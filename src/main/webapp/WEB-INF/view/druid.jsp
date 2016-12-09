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
<title>druid连接池监控</title>
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
			<iframe src="../druid" width="100%" height="800" frameborder="no" border="0"></iframe>
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
	<!-- FastClick -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/fastclick/lib/fastclick.js"></script>
	<!-- NProgress -->
	<script src="<%=request.getContextPath()%>/static/ace/vendors/nprogress/nprogress.js"></script>

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
  </body>
</html>