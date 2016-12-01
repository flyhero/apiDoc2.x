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
            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_title">
                    <h2>项目列表</h2>
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
    <script type="text/javascript">
	function edit(projectId,name,des,targetCount) {  
	    $("#projectid").val(projectId);
	    $("#projectName").val(name);
	    $("#description").val(des);
	    $("#targetCount").val(targetCount);
	    $('#myModal2').modal('show');  
	}  
	function deletepro(projectId,name) {  
		$.ajax({
			type : 'POST',
			url : "../project/deleteProject.do",
			dataType : "json",
			data : {
				"projectId" : projectId,
				"proName" : name
			},
			success : function(data) {
				if (data.msg == 'ok') {
					layer.alert("删除成功！");
					location.reload();
				}

			}

		});
	}  
  function initTable() {  
	  var id = ${sessionScope.user.userId};
    //先销毁表格  
    $('#cusTable').bootstrapTable('destroy');  
    //初始化表格,动态从服务器加载数据  
    $("#cusTable").bootstrapTable({  
        columns: [{
            field: 'project.projectId',
            title: '项目编号'
        },{
            field: 'project.proName',
            title: '项目名'
        },{
            field: 'project.proVersion',
            title: '版本号'
        },{
            field: 'project.createTime',
            title: '创建时间',
            formatter:function(value,row,index){  
            	/*	var date2 = new Date(row.project.createTime); 
              return date2.toLocaleString();   */
            	 return getMyDate(row.project.createTime); 
         	} 
        },{
            field: 'project.proDes',
            title: '项目描述'
        },{
            field: 'project.targetCount',
            title: '已完成',
            formatter:function(value,row,index){  
	             var a=row.project.doneCount/row.project.targetCount*100;
	             var b='<div class="progress progress-striped active">'
	            	   +' <div class="progress-bar progress-bar-success" role="progressbar"'
	            	         +'aria-valuenow="60" aria-valuemin="0" aria-valuemax="100"'
	            	         +'style="width: '
	            	         +a
	            	         +'%;">'
	            	    +'</div>'
	            	    +'<small>已完成'
	            	    +a
	            	    +'%</small>'
	            	+'</div>';
             	 return b;  
         	} 
        },{
            title: '操作',
            field: 'id',
            align: 'center',
            width: 220,
            formatter:function(value,row,index){   
            	var name="'"+row.project.proName+"'";
            	var des="'"+row.project.proDes+"'";
            	var j='<a href="../forward/list_interfaces.html?projectId='+row.project.projectId+'" class="btn btn-info btn-xs"><i class="fa fa-sliders"></i> 接口 </a>';
                var f='<a href="../forward/project_detail.html?projectId='+row.project.projectId+'&upId='+row.upId+'&isEdit=1" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> 详情 </a>'; 
                var down='<a href="../interface/downloadInter.do?projectId='+row.project.projectId+'" class="btn btn-success btn-xs"><i class="fa fa-download"></i> 下载 </a>';
                var g='<a href="#"  class="btn btn-warning btn-xs" onclick="edit('+row.project.projectId+','+name+','+des+','+row.project.targetCount+');"><i class="fa fa-pencil"></i> 编辑 </a>'; 
                var h='<a href="#" class="btn btn-danger btn-xs" onclick="deletepro('+row.project.projectId+','+name+');"><i class="fa fa-trash-o"></i> 删除 </a>';
              return j+f+down+g+h;  
          	} 
        } ],
        method: "get",  //使用get请求到服务器获取数据  
        url: "../project/findUserCreate.do", //获取数据的Servlet地址  
        striped: true,  //表格显示条纹  
        pagination: true, //启动分页  
        pageSize: 10,  //每页显示的记录数  
        pageNumber:1, //当前第几页  
        pageList: [5, 10, 15, 20, 25],  //记录数可选列表  
        search: true,  //是否启用查询  
        showColumns: true,  //显示下拉框勾选要显示的列  
        showRefresh: true,  //显示刷新按钮  
        sidePagination: "server", //表示服务端请求  
        //设置为undefined可以获取pageNumber，pageSize，searchText，sortName，sortOrder  
        //设置为limit可以获取limit, offset, search, sort, order  
        queryParamsType : "undefined",   
        queryParams: function queryParams(params) {   //设置查询参数  
          var param = {    
              pageNumber: params.pageNumber,    
              pageSize: params.pageSize,
              userId:id
          };    
          return param;                   
        },  
        onLoadSuccess: function(){  //加载成功时执行  
         
        },  
        onLoadError: function(){  //加载失败时执行  
          
        }  
      });  
  }  

  $(function () {          
      //调用函数，初始化表格  
      initTable();  
		$("#changeProject").click(
				function() {
					var projectName = $("#projectName").val();
					var targetCount = $("#targetCount").val();
					var description = $("#description").val();
					var projectId =$("#projectid").val();
					if (projectName != '' && targetCount != ''
							&& description != '') {
						$.ajax({
							type : 'POST',
							url : "../project/updateProject.do",
							dataType : "json",
							data : {
								"proName" : projectName,
								"targetCount" : targetCount,
								"proDes" : description,
								"projectId" : projectId
							},
							success : function(data) {
								if (data.msg == 'ok') {
									location.reload();
								}

							}

						});
					} else {
						layer.alert("信息不能为空！");
					}

				});
      //当点击查询按钮的时候执行  
      $("#search").bind("click", initTable);  
  });  
    </script>
<%--  	<script src="<%=request.getContextPath()%>/static/js/page/list-created.js"></script>  --%>
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	
  </body>
</html>