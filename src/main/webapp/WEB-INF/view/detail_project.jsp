<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="keywords" content="" />
<meta name="description" content="" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="static.jsp"></jsp:include>
<title>项目详情</title>
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
                    <h2>项目详情</h2>
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

                    <div class="col-md-9 col-sm-9 col-xs-12">

                      <ul class="stats-overview">
                        <li>
                          <span class="name"> 预计接口数</span>
                          <span class="value text-success" id="target-inter"> </span>
                        </li>
                        <li>
                          <span class="name"> 已完成接口 </span>
                          <span class="value text-success" id="done-inter"> </span>
                        </li>
                        <li class="hidden-phone">
                          <span class="name"> 已创建（天） </span>
                          <span class="value text-success" id="created-day"> </span>
                        </li>
                      </ul>
                      <br />

                      <div id="mainb" style="height:350px;"></div>

                      <div>

                        <h4>最近动态</h4>

                        <!-- end of user messages -->
                        <ul class="messages">

                        </ul>
                        	   <center>
								<ul class="pagination">
												
								</ul>
							  </center>
                        <!-- end of user messages -->


                      </div>


                    </div>

                    <!-- start project-detail sidebar -->
                    <div class="col-md-3 col-sm-3 col-xs-12">

                      <section class="panel">

                        <div class="x_title">
                          <h2>项目描述</h2>
                          <div class="clearfix"></div>
                        </div>
                        <div class="panel-body">
                          <h3 class="green"><i class="fa fa-paint-brush"></i>&nbsp;</h3>

                          <p id="prodes"></p>
                          <br />

                          <div class="project_detail">

                            <p class="title">公司</p>
                            <p id="company"></p>
                            <p class="title">项目创建者</p>
                            <p id="creator"></p>
                          </div>

                          <br />
                          <h5>项目成员</h5>
                          <ul class="list-unstyled project_files" id="team-member">
                          </ul>
                          <br />

                          <div class=" mtop20">
                          <c:choose>
							   <c:when test="${isEdit== '1' || isEdit== 1 }">  
							   		<a href="#" class="btn btn-sm btn-primary"  data-toggle="modal" data-target="#addTeam">添加成员</a>
							   </c:when>
							   <c:otherwise> 
							   </c:otherwise>
						  </c:choose>
                          
                          </div>
                          <br /><hr>
                          <h5>项目模块</h5>
                          <ul class="list-unstyled project_files" id="project-module">
                          </ul>
                          <br />

                          <div class=" mtop20">
                          <c:choose>
							   <c:when test="${isEdit== '1' || isEdit== 1 }">  
							   		<a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addModule">添加模块</a>
							   </c:when>
							   <c:otherwise> 
							   </c:otherwise>
						  </c:choose>
                          
                            
                          </div>
                        </div>

                      </section>

                    </div>
                    <!-- end project-detail sidebar -->

                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        
        
        	<div class="modal fade" id="editTeam" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">修改/删除权限</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="upID"/>
					<input type="hidden" id="projectID"/>
					<label for="userName">成员</label> 
					<input type="text"
						class="form-control" id="userName" readonly="readonly">
					<label for="isEdit">权限</label> 
					<select id="isEdit" class="form-control">
						<option value="0">只读</option>
						<option value="1">可写</option>
					</select>
				</div>
				<div class="modal-footer">
					<button id="deleteTeam" class="btn btn-sm btn-danger" data-dismiss="modal">删除成员</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="updatePermission" data-dismiss="modal"
						class="btn btn-primary">提交</button>
				</div>
			</div>
		</div>
	</div> 
	
			<div class="modal fade" id="addTeam" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel">添加成员</h4>
				</div>
				<div class="modal-body">
					<label for="addName">成员用户名</label> 
					<input type="text"
						class="form-control" id="addName" placeholder="请输入名称">
					<label for="addisEdit">权限</label> 
					<select id="addisEdit" class="form-control">
						<option value="0">只读</option>
						<option value="1">可写</option>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" id="checkUserName" class="btn btn-warning">检查用户</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="addTeamUser" data-dismiss="modal"
						class="btn btn-primary">提交</button>
				</div>
			</div>
		</div>
	</div> 
	
		
		<div class="modal fade" id="addModule" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel3">新建模块</h4>
				</div>
				<div class="modal-body">
					<label for="moduleName">名称</label> 
					<input type="text" class="form-control" id="moduleName"> 
					<label for="moduleDes">描述</label>
					<textarea id="moduleDes" class="form-control" rows="3"></textarea>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="domodule" data-dismiss="modal"
						class="btn btn-primary">提交</button>
				</div>
			</div>
		</div>
		</div>
		
			
		<div class="modal fade" id="editModule" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel3" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">×</button>
					<h4 class="modal-title" id="myModalLabel3">修改/删除模块</h4>
				</div>
				<div class="modal-body">
					<input type="hidden" id="editId"/>
					<label for="editName">名称</label> 
					<input type="text" class="form-control" id="editName"> 
					<label for="editDes">描述</label>
					<textarea id="editDes" class="form-control" rows="3"></textarea>
				</div>
				<div class="modal-footer">
					<button data-dismiss="modal" id="deleteMod" class="btn btn-sm btn-danger">删除模块</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="updateModule" 
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

	<!-- Custom Theme Scripts -->
	<script src="<%=request.getContextPath()%>/static/ace/production/js/custom.js"></script>
	    <!-- ECharts -->
    <script src="<%=request.getContextPath()%>/static/ace/vendors/echarts/dist/echarts.min.js"></script>
      <!-- ECharts -->
    <script>
      var theme = {
          color: [
              '#26B99A', '#34495E', '#BDC3C7', '#3498DB',
              '#9B59B6', '#8abb6f', '#759c6a', '#bfd3b7'
          ],

          title: {
              itemGap: 8,
              textStyle: {
                  fontWeight: 'normal',
                  color: '#408829'
              }
          },

          dataRange: {
              color: ['#1f610a', '#97b58d']
          },

          toolbox: {
              color: ['#408829', '#408829', '#408829', '#408829']
          },

          tooltip: {
              backgroundColor: 'rgba(0,0,0,0.5)',
              axisPointer: {
                  type: 'line',
                  lineStyle: {
                      color: '#408829',
                      type: 'dashed'
                  },
                  crossStyle: {
                      color: '#408829'
                  },
                  shadowStyle: {
                      color: 'rgba(200,200,200,0.3)'
                  }
              }
          },

          dataZoom: {
              dataBackgroundColor: '#eee',
              fillerColor: 'rgba(64,136,41,0.2)',
              handleColor: '#408829'
          },
          grid: {
              borderWidth: 0
          },

          categoryAxis: {
              axisLine: {
                  lineStyle: {
                      color: '#408829'
                  }
              },
              splitLine: {
                  lineStyle: {
                      color: ['#eee']
                  }
              }
          },

          valueAxis: {
              axisLine: {
                  lineStyle: {
                      color: '#408829'
                  }
              },
              splitArea: {
                  show: true,
                  areaStyle: {
                      color: ['rgba(250,250,250,0.1)', 'rgba(200,200,200,0.1)']
                  }
              },
              splitLine: {
                  lineStyle: {
                      color: ['#eee']
                  }
              }
          },
          timeline: {
              lineStyle: {
                  color: '#408829'
              },
              controlStyle: {
                  normal: {color: '#408829'},
                  emphasis: {color: '#408829'}
              }
          },

          k: {
              itemStyle: {
                  normal: {
                      color: '#68a54a',
                      color0: '#a9cba2',
                      lineStyle: {
                          width: 1,
                          color: '#408829',
                          color0: '#86b379'
                      }
                  }
              }
          },
          map: {
              itemStyle: {
                  normal: {
                      areaStyle: {
                          color: '#ddd'
                      },
                      label: {
                          textStyle: {
                              color: '#c12e34'
                          }
                      }
                  },
                  emphasis: {
                      areaStyle: {
                          color: '#99d2dd'
                      },
                      label: {
                          textStyle: {
                              color: '#c12e34'
                          }
                      }
                  }
              }
          },
          force: {
              itemStyle: {
                  normal: {
                      linkStyle: {
                          strokeColor: '#408829'
                      }
                  }
              }
          },
          chord: {
              padding: 4,
              itemStyle: {
                  normal: {
                      lineStyle: {
                          width: 1,
                          color: 'rgba(128, 128, 128, 0.5)'
                      },
                      chordStyle: {
                          lineStyle: {
                              width: 1,
                              color: 'rgba(128, 128, 128, 0.5)'
                          }
                      }
                  },
                  emphasis: {
                      lineStyle: {
                          width: 1,
                          color: 'rgba(128, 128, 128, 0.5)'
                      },
                      chordStyle: {
                          lineStyle: {
                              width: 1,
                              color: 'rgba(128, 128, 128, 0.5)'
                          }
                      }
                  }
              }
          },
          gauge: {
              startAngle: 225,
              endAngle: -45,
              axisLine: {
                  show: true,
                  lineStyle: {
                      color: [[0.2, '#86b379'], [0.8, '#68a54a'], [1, '#408829']],
                      width: 8
                  }
              },
              axisTick: {
                  splitNumber: 10,
                  length: 12,
                  lineStyle: {
                      color: 'auto'
                  }
              },
              axisLabel: {
                  textStyle: {
                      color: 'auto'
                  }
              },
              splitLine: {
                  length: 18,
                  lineStyle: {
                      color: 'auto'
                  }
              },
              pointer: {
                  length: '90%',
                  color: 'auto'
              },
              title: {
                  textStyle: {
                      color: '#333'
                  }
              },
              detail: {
                  textStyle: {
                      color: 'auto'
                  }
              }
          },
          textStyle: {
              fontFamily: 'Arial, Verdana, sans-serif'
          }
      };

      var echartBarLine = echarts.init(document.getElementById('mainb'), theme);
		
     	var userEdit=${isEdit};
		var myId=${sessionScope.user.userId};
		function edit(upId,isEdit,name,projectId) { 
			if(userEdit==1){
			    $("#userName").val(name);
			    $("#isEdit  option[value='"+isEdit+"'] ").attr("selected",true)
			    $("#upID").val(upId);
			    $("#projectID").val(projectId);
			    $('#editTeam').modal('show');  
			}
		}  
		function editModule(id,name,des) {  
			if(userEdit==1){
			    $("#editId").val(id);
			    $("#editName").val(name);
			    $("#editDes").val(des);
			    $('#editModule').modal('show');  
			}
		}  
      $(document).ready(function () {     
    	    var projectId=${projectId};
    	    var upId=${upId};
    	    var userId=${sessionScope.user.userId};
			$.ajax({
				type : 'POST',
				url : "../project/findProjectDetail.do",
				dataType : "json",
				data : {
					"upId":upId
				},
				success : function(data) {
					$("#target-inter").append(data.data.targetCount);
					$("#done-inter").append(data.data.doneCount);
					$("#created-day").append(getDayToNow(data.data.createTime));
					$("#creator").append(data.data.userName);
					$("#company").append(data.data.company);
					$(".green").append(data.data.proName);
					$("#prodes").append(data.data.proDes);
				}

			});
			$.ajax({
				type : 'POST',
				url : "../project/findTeamMembers.do",
				dataType : "json",
				data : {
					"projectId":projectId,
					"userId":userId
				},
				success : function(data) {
					$.each(data.data,function(index,user){
						var name="'"+user.userName+"'";
						if(user.userId==myId){
							$("#team-member").append('<li><a><i class="fa fa-user"></i>&nbsp;'+user.userName+'</a></li>');
						}else{
							$("#team-member").append('<li><a href="#" onclick="edit('+user.upId+','+user.isEdit+','+name+','+user.projectId+')"><i class="fa fa-user"></i>&nbsp;'+user.userName+'</a></li>');
						}
						
					});
					
				}

			});
			$.ajax({
				type : 'POST',
				url : "../module/findModule.do",
				dataType : "json",
				data : {
					"projectId":projectId
				},
				success : function(data) {
					$.each(data.data,function(index,module){
						var name="'"+module.moduleName+"'";
						var des="'"+module.moduleDes+"'";
						$("#project-module").append('<li><a href="#" onclick="editModule('+module.moduleId+','+name+','+des+')"><i class="fa fa-cube"></i>&nbsp;'+module.moduleName+'</a></li>');
					});
					
				}

			});
 			$.ajax({
				type : 'POST',
				url : "../log/findLogDetial.do",
				dataType : "json",
				data : {
					"projectId":projectId
				},
				success : function(data) {
					$.each(data.data,function(index,log){
						$(".messages").append('<li>'
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
			
 			
			$("#updatePermission").click(function() {
				var userName = $("#userName").val();
				var projectId = $("#projectID").val();
				var isEdit = $("#isEdit").val();
			    var upId=$("#upID").val();
				if (userName != '' && projectId != '' && upId != '') {
					$.ajax({
						type : 'POST',
						url : "../project/updateMemberPermission.do",
						dataType : "json",
						data : {
							"name" : userName,
							"projectId" : projectId,
							"isEdit" : isEdit,
							"upId" : upId
						},
						success : function(data) {
							if (data.msg == 'ok') {
								layer.alert("更新成功！^_^");
							} else {
								layer.alert("更新失败！-_-");
							}
						}

					});
				} else {
					layer.alert("信息不能为空！");
				}
			});
			$("#deleteTeam").click(function() {
				var userName = $("#userName").val();
				var projectId = $("#projectID").val();
			    var upId=$("#upID").val();
				if (userName != '' && projectId != '' && upId != '') {
					$.ajax({
						type : 'POST',
						url : "../project/deleteTeamMembers.do",
						dataType : "json",
						data : {
							"name" : userName,
							"projectId" : projectId,
							"upId" : upId
						},
						success : function(data) {
							if (data.msg == 'ok') {
								layer.alert("删除成功！^_^");
							} else {
								layer.alert("删除失败！-_-");
							}
						}

					});
				} else {
					layer.alert("信息不能为空！");
				}
			});
			$("#checkUserName").click(function() {
				var userName = $("#addName").val();
				if (userName != '') {
					$.ajax({
						type : 'POST',
						url : "../user/checkUserName.do",
						dataType : "json",
						data : {
							"userName" : userName
						},
						success : function(data) {
							if (data.valid == false) {
								layer.alert("用户存在^_^");
							} else {
								layer.alert("用户不存在！-_-");
							}
						}

					});
				} else {
					layer.alert("用户名不能为空！");
				}

			});			
			$("#addTeamUser").click(function() {
				var addName = $("#addName").val();
				var addisEdit = $("#addisEdit").val();
				if (userName != '' && addisEdit != '') {
					$.ajax({
						type : 'POST',
						url : "../project/addMember.do",
						dataType : "json",
						data : {
							"userName" : addName,
							"projectId" : projectId,
							"isEdit" : addisEdit
						},
						success : function(data) {
							if (data.msg == 'ok') {
								layer.alert("添加成功！^_^");
							} else {
								layer.alert("添加失败！-_-");
							}
						}

					});
				} else {
					layer.alert("信息不能为空！");
				}
			});
			$("#updateModule").click(function() {
				var editId = $("#editId").val();
				var editName = $("#editName").val();
				var editDes = $("#editDes").val();
				if (editId != '' && editName != '' && editDes != '') {
					$.ajax({
						type : 'POST',
						url : "../module/updateModule.do",
						dataType : "json",
						data : {
							"moduleId" : editId,
							"moduleName" : editName,
							"moduleDes" : editDes
						},
						success : function(data) {
							if (data.msg == 'ok') {
								layer.alert("更新成功！^_^");
							} else {
								layer.alert("更新失败！-_-");
							}
						}

					});
				} else {
					layer.alert("信息不能为空！");
				}
			});
			$("#deleteMod").click(function() {
				var id = $("#editId").val();
				if (id != '' ) {
					$.ajax({
						type : 'POST',
						url : "../module/deleteModule.do",
						dataType : "json",
						data : {
							"moduleId" : id
						},
						success : function(data) {
							if (data.msg == 'ok') {
								layer.alert("删除成功！^_^");
							} else {
								layer.alert("删除失败！-_-");
							}
						}

					});
				} else {
					layer.alert("信息不能为空！");
				}
			});			
			$("#domodule").click(function() {
				var moduleName = $("#moduleName").val();
				var moduleDes = $("#moduleDes").val();
				if (moduleName != '' && moduleDes != ''
					&& projectId != '') {
	                $.ajax({  
	                    type : "POST",  //提交方式  
	                    url : "../module/addModule.do",//路径  
	                    dataType:"json",
	                    data : {  
							moduleName : moduleName,
							moduleDes : moduleDes,
							projectId : projectId
	                    },//数据，这里使用的是Json格式进行传输  
	                    success : function(data) {//返回数据根据结果进行相应的处理  
							if (data.msg == 'ok') {
								layer.alert("添加成功^_^");
							} else {
								layer.alert("添加失败！-_-");
							}
	                    }  
	                }); 
				} else {
					layer.alert("信息不能为空");
				/* 	layer.alert('信息不能为空', {
						  icon: 0,
						  skin: 'layer-ext-moon' 
						}); */
				}
			});
			
			$.ajax({
				type : 'POST',
				url : "../log/findLog.do",
				dataType : "json",
				data : {
					"projectId" : projectId
				},
				success : function(data) {
					if (data.msg == 'ok') {
						
						 echartBarLine.setOption({
					          title: {
					            x: 'center',
					            y: 'top',
					            padding: [0, 0, 20, 0],
					            text: '项目接口完成情况',
					            textStyle: {
					              fontSize: 15,
					              fontWeight: 'normal'
					            }
					          },
					          tooltip: {
					            trigger: 'axis'
					          },
					          toolbox: {
					            show: true,
					            feature: {
					              dataView: {
					                show: true,
					                readOnly: false,
					                title: "Text View",
					                lang: [
					                  "Text View",
					                  "Close",
					                  "Refresh",
					                ],
					              },
					              restore: {
					                show: true,
					                title: '重加载'
					              },
					              saveAsImage: {
					                show: true,
					                title: '保存'
					              }
					            }
					          },
					          calculable: true,
					          legend: {
					            data: ['接口'],
					            y: 'bottom'
					          },
					          xAxis: [{
					            type: 'category',
					            data: data.data.xtime
					          }],
					          yAxis: [{
					            type: 'value',
					            name: '接口数',
					            axisLabel: {
					              formatter: '{value} 个'
					            },
					            splitNumber: 1
					          }],
					          series: [{
					            name: '接口',
					            type: 'bar',
					            data: data.data.count
					          }]
					        });
						
					}else{
						alert("创建失败！");
					}

				}

			});
    	  
      });  
      
    </script>
    <!-- /ECharts -->
  </body>
</html>