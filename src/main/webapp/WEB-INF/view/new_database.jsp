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
<title>新建项目</title>
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
                    <h2>新建数据库字典 </h2>
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

                   <form id="defaultForm"  class="form-horizontal">
                        <fieldset>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">数据库名称</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="dbName" id="dbName" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">数据库Url</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="dbUrl" id="dbUrl" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">用户名</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="dbRoot" id="dbRoot" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">密码</label>
                                <div class="col-lg-5">
                                    <input type="password" class="form-control" name="dbPassword" id="dbPassword" />
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-lg-3 control-label">驱动包名</label>
                                <div class="col-lg-5">
                                    <input type="text" class="form-control" name="dbDriver" id="dbDriver" />
                                </div>
                            </div>
                        </fieldset>
                         <div class="ln_solid"></div>
                        <div class="form-group">
                            <div class="col-lg-9 col-lg-offset-3">
                                <button type="button" class="btn btn-primary" onclick = "add();">提交</button>
                                <button type="button" class="btn btn-info" id="resetBtn">重置</button>
                            </div>
                        </div>
                    </form>

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
<!-- validator -->
<script>
function add(){
    var proVersion= $("#proVersion").val();
    var proName=$("#proName").val();
    var proDes=$("#proDes").val();
    var targetCount=$("#targetCount").val();
	$.ajax({
		type : 'POST',
		url : "../project/1.do",
		dataType : "json",
		data : {
			"proVersion" : proVersion,
			"proName" : proName,
			"proDes" : proDes,
			"targetCount" : targetCount
		},
		success : function(data) {
			if (data.msg == 'ok') {
				alert("创建成功！");
				window.location.href='main.html';
			}else{
				alert("创建失败！");
			}

		}

	});
}
$(document).ready(function() {

    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
    $('#defaultForm').bootstrapValidator({
        message: 'This value is not valid',
        feedbackIcons: {
            valid: 'glyphicon glyphicon-ok',
            invalid: 'glyphicon glyphicon-remove',
            validating: 'glyphicon glyphicon-refresh'
        },
        fields: {
        	dbName: {
                message: 'The dbName is not valid',
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    },
                    stringLength: {
                        min: 2,
                        max: 30,
                        message: '项目名必须大于2个字符并且小于30个字符'
                    }
                }
            },
            dbUrl: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            dbRoot: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            dbPassword: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            dbDriver: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            }
            
        }
    });
});
</script>
<!-- /validator -->

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	
  </body>
</html>