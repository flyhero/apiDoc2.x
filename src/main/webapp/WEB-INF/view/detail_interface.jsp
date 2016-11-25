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
        <link rel="stylesheet" href="<%=request.getContextPath()%>/static/editor/css/style.css" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/static/editor/css/editormd.css" />
        <link rel="stylesheet" href="<%=request.getContextPath()%>/static/editor/css/editormd.preview.css" />
<title>新建项目</title>
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
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>接口详情 </h2>
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                      <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
                      </li>
                      <li><a class="close-link"><i class="fa fa-close"></i></a>
                      </li>
                    </ul>
                    <div class="clearfix"></div>
                  </div>
                  <div class="x_content">
   
           <div id="layout">
            <div id="test-editormd-view">
               <textarea style="display:none;" name="test-editormd-markdown-doc"></textarea>               
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
    <script type="text/javascript">

    $(function() {
        var testEditor;
    	var interfaceId=${interfaceId};
    	$.ajax({
    		type : 'POST',
    		url : "../interface/findOneInter.do",
    		dataType : "json",
    		data : {
    			"interfaceId" : interfaceId
    		},
    		success : function(data) {
    			if (data.msg == 'ok') {
    		    	testEditor = editormd.markdownToHTML("test-editormd-view", {
    		    		markdown : data.data.content,// + "\r\n" + $("#append-test").text(),
    		    		// htmlDecode : true, // 开启 HTML 标签解析，为了安全性，默认不开启
    		    		htmlDecode : "style,script,iframe", // you can filter tags decode
    		    		//toc : true,
    		    		tocm : true, // Using [TOCM]
    		    		// tocContainer : "#custom-toc-container", // 自定义 ToC 容器层
    		    		// gfm : false,
    		    		// tocDropdown : true,
    		    		// markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
    		    		emoji : true,
    		    		taskList : true,
    		    		tex : true, // 默认不解析
    		    		flowChart : true, // 默认不解析
    		    		sequenceDiagram : true, // 默认不解析
    		    	});

    			} else {
    				alert("查询失败！");
    			}

    		}

    	});

    });
    </script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/marked.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/prettify.min.js"></script>
        
        <script src="<%=request.getContextPath()%>/static/editor/lib/raphael.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/underscore.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/sequence-diagram.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/flowchart.min.js"></script>
        <script src="<%=request.getContextPath()%>/static/editor/lib/jquery.flowchart.min.js"></script>
	<script src="<%=request.getContextPath()%>/static/editor/js/editormd.min.js"></script> 
<%-- 	<script src="<%=request.getContextPath()%>/static/js/page/detial-inter.js"></script>--%>
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	
  </body>
</html>