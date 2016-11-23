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