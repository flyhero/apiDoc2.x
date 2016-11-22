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
   
           <div id="layout">
            <header>
                <h1>Simple example</h1>
            </header>
            <div id="test-editormd" >
                <textarea style="display:none;">
				</textarea>
            </div>
        </div>
        <script src="<%=request.getContextPath()%>/static/editor/js/editormd.min.js"></script>
        <script type="text/javascript">
			var testEditor;

            $(function() {
            	
                testEditor = editormd.markdownToHTML("test-editormd", {
                    markdown        : "### markdown" ,//+ "\r\n" + $("#append-test").text(),
                    //htmlDecode      : true,       // 开启 HTML 标签解析，为了安全性，默认不开启
                    htmlDecode      : "style,script,iframe",  // you can filter tags decode
                    //toc             : false,
                    tocm            : true,    // Using [TOCM]
                    //tocContainer    : "#custom-toc-container", // 自定义 ToC 容器层
                    //gfm             : false,
                    //tocDropdown     : true,
                    // markdownSourceCode : true, // 是否保留 Markdown 源码，即是否删除保存源码的 Textarea 标签
                    emoji           : true,
                    taskList        : true,
                    tex             : true,  // 默认不解析
                    flowChart       : true,  // 默认不解析
                    sequenceDiagram : true,  // 默认不解析
                });
                
            });
        </script>
   
   

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
    $('#validateBtn').click(function() {
        $('#defaultForm').bootstrapValidator('validate');
    });
    $('#resetBtn').click(function() {
        $('#defaultForm').data('bootstrapValidator').resetForm(true);
    });
    $('#defaultForm').bootstrapValidator({
        message: '无效值',
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
            },
            cycle: {
                validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            whichtime:{
            	validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            },
            whichday:{
            	validators: {
                    notEmpty: {
                        message: '不能为空'
                    }
                }
            }
            
        }
    });


    $('input[name=cycle]').change(function(){
    	 switch($(this).val()){
    	  case "1":
    	   $("#whichWeek").hide();
    	   $("#whichDay").hide();
    	   $("#whichTime").show();
    	   break;
    	  case "2":
    		  $("#whichWeek").show();
    		  $("#whichDay").hide();
    		  $("#whichTime").show();
    	   break;
    	  case "3":
    		  $("#whichWeek").hide();
    		  $("#whichDay").show();
    		  $("#whichTime").show();
       	   break;
    	  case "4":
       	   $("#whichWeek").hide();
    	   $("#whichDay").hide();
    	   $("#whichTime").hide();
       	   break;
    	  default:
    	   break;
    	 }
    });
});
</script>
<!-- /validator -->

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	
  </body>
</html>