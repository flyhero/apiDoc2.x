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
<title>项目详情</title>
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
                          <li>
                            <img src="images/img.jpg" class="avatar" alt="Avatar">
                            <div class="message_date">
                              <h3 class="date text-info">24</h3>
                              <p class="month">May</p>
                            </div>
                            <div class="message_wrapper">
                              <h4 class="heading">Desmond Davison</h4>
                              <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                              <br />
                              <p class="url">
                                <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                                <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                              </p>
                            </div>
                          </li>
                          <li>
                            <img src="images/img.jpg" class="avatar" alt="Avatar">
                            <div class="message_date">
                              <h3 class="date text-error">21</h3>
                              <p class="month">May</p>
                            </div>
                            <div class="message_wrapper">
                              <h4 class="heading">Brian Michaels</h4>
                              <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                              <br />
                              <p class="url">
                                <span class="fs1" aria-hidden="true" data-icon=""></span>
                                <a href="#" data-original-title="">Download</a>
                              </p>
                            </div>
                          </li>
                          <li>
                            <img src="images/img.jpg" class="avatar" alt="Avatar">
                            <div class="message_date">
                              <h3 class="date text-info">24</h3>
                              <p class="month">May</p>
                            </div>
                            <div class="message_wrapper">
                              <h4 class="heading">Desmond Davison</h4>
                              <blockquote class="message">Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua butcher retro keffiyeh dreamcatcher synth.</blockquote>
                              <br />
                              <p class="url">
                                <span class="fs1 text-info" aria-hidden="true" data-icon=""></span>
                                <a href="#"><i class="fa fa-paperclip"></i> User Acceptance Test.doc </a>
                              </p>
                            </div>
                          </li>
                        </ul>
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
                            <li><i class="fa fa-user"></i> Functional-requirements.docx</li>
                          </ul>
                          <br />

                          <div class=" mtop20">
                           <a href="#" class="btn btn-sm btn-primary"  data-toggle="modal" data-target="#addTeam">添加成员</a>
                            <a href="#" class="btn btn-sm btn-danger">删除成员</a>
                          </div>
                          <br /><hr>
                          <h5>项目模块</h5>
                          <ul class="list-unstyled project_files" id="project-module">
                            <li><i class="fa fa-cube"></i> 模块1</li>
                          </ul>
                          <br />

                          <div class=" mtop20">
                           <a href="#" class="btn btn-sm btn-primary" data-toggle="modal" data-target="#addModule">添加模块</a>
                            <a href="#" class="btn btn-sm btn-danger">删除模块</a>
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
					<h4 class="modal-title" id="myModalLabel">修改权限</h4>
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
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="updatePermission" data-dismiss="modal"
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
					<label for="userName">成员用户名</label> 
					<input type="text"
						class="form-control" id="TeamName" placeholder="请输入名称">
					<label for="isEdit">权限</label> 
					<select id="isEdit" class="form-control">
						<option value="0">只读</option>
						<option value="1">可写</option>
					</select>
				</div>
				<div class="modal-footer">
					<button type="button" id="checkUserName" class="btn btn-warning">检查用户</button>
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
					<button type="button" id="addActor" data-dismiss="modal"
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
              title: 'Restore'
            },
            saveAsImage: {
              show: true,
              title: 'Save'
            }
          }
        },
        calculable: true,
        legend: {
          data: ['绿色'],
          y: 'bottom'
        },
        xAxis: [{
          type: 'category',
          data: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec']
        }],
        yAxis: [{
          type: 'value',
          name: '接口数',
          axisLabel: {
            formatter: '{value} 个'
          }
        }],
        series: [{
          name: '绿色',
          type: 'bar',
          data: [2.0, 4.9, 7.0, 23.2, 25.6, 76.7, 135.6, 162.2, 32.6, 20.0, 6.4, 3.3]
        }]
      });
		function edit(upId,isEdit,name,projectId) {  
		    $("#userName").val(name);
		    $("#isEdit  option[value='"+isEdit+"'] ").attr("selected",true)
		    $("#upID").val(upId);
		    $("#projectID").val(projectId);
		    $('#editTeam').modal('show');  
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
						$("#team-member").append('<li><a href="#" onclick="edit('+user.upId+','+user.isEdit+','+name+','+user.projectId+')"><i class="fa fa-user"></i>&nbsp;'+user.userName+'</a></li>');
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
						$("#project-module").append('<li><a href="#" onclick="edit('+name+')"><i class="fa fa-cube"></i>&nbsp;'+name+'</a></li>');
					});
					
				}

			});
			
			$("#checkUserName").click(function() {
				var userName = $("#TeamName").val();
				if (userName != '') {
					$.ajax({
						type : 'POST',
						url : "../user/validUserName.do",
						dataType : "json",
						data : {
							"userName" : userName
						},
						success : function(data) {
							if (data.valid == false) {
								alert("用户存在^_^");
							} else {
								alert("用户不存在！-_-");
							}
						}

					});
				} else {
					alert("用户名不能为空！");
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
								alert("更新成功！^_^");
							} else {
								alert("更新失败！-_-");
							}
						}

					});
				} else {
					alert("用户名不能为空！");
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
	                    data : {  
							moduleName : moduleName,
							moduleDes : moduleDes,
							projectId : projectId
	                    },//数据，这里使用的是Json格式进行传输  
	                    success : function(data) {//返回数据根据结果进行相应的处理  
							if (data.msg == 'ok') {
								alert("添加成功^_^");
							} else {
								alert("添加失败！-_-");
							}
	                    }  
	                }); 
				} else {
					alert("信息不能为空！");
				}
			});
    	  
      });  
      
    </script>
    <!-- /ECharts -->
  </body>
</html>