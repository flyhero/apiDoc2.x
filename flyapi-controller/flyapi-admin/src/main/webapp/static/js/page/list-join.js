	function addParentTabs(id,title,url) {  
		parent.Addtabs.add({
            id: id,
            title: title,
            content: '',
            url: url,
            ajax: false
        });
	} 
  function initTable() {  
	 
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
            width: 250,
            formatter:function(value,row,index){   
            	var name="'"+row.project.proName+"'";
            	var des="'"+row.project.proDes+"'";
            	var jtitle="'"+row.project.proName+"-接口'";
            	var ftitle="'"+row.project.proName+"-详情'";
            	var jid=parseInt(row.project.projectId.toString()+'1');
            	var fid=parseInt(row.project.projectId.toString()+'2');
            	var jurl="'../forward/list_interfaces.html?projectId="+row.project.projectId+"'";
            	var furl="'../forward/project_detail.html?projectId="+row.project.projectId+"&upId="+row.upId+"&isEdit=0'";
            	var j='<a href="#" onclick="addParentTabs('+jid+','+jtitle+','+jurl+');" class="btn btn-info btn-xs"><i class="fa fa-sliders"></i> 接口 </a> &nbsp;&nbsp;';
            	var f='<a href="#" onclick="addParentTabs('+fid+','+ftitle+','+furl+');" class="btn btn-primary btn-xs"><i class="fa fa-eye"></i> 详情 </a>&nbsp;&nbsp;';
                var g='<a href="../interface/downloadInter.do?projectId='+row.project.projectId+'" class="btn btn-success btn-xs"><i class="fa fa-download"></i> 下载 </a>';
                return j+f+g;  
          	} 
        } ],
        method: "get",  //使用get请求到服务器获取数据  
        url: "../project/findUserJoin.do", //获取数据的Servlet地址  
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
      //当点击查询按钮的时候执行  
      $("#search").bind("click", initTable);  
  });  