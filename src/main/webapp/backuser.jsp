<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./layui/css/layui.css">
        <script src="./layui/layui.js"></script>
</head> -->


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="./layui/css/layui.css">
<script src="./layui/layui.js"></script>
<style>
* {
	margin: 0;
	padding: 0;
}

.layui-body-header {
	color: #262626;
	font-size: 16px;
	padding: 0 20px;
	height: 45px;
	line-height: 45px;
	background-color: #fff;
	box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .1);
	box-sizing: border-box;
	position: absolute;
	left: 0;
	right: 0;
	z-index: 998;
}

.layui-body-header-title {
	padding-left: 6px;
	border-left: 4px solid #009688;
}

.layui-body-header+div {
	position: absolute;
	left: 0;
	right: 0;
	top: 45px;
	bottom: 0;
	overflow: auto;
	-webkit-overflow-scrolling: touch;
}

.layui-fluid {
	padding: 15px;
}

.layui-fluid::-webkit-scrollbar {
	width: 10px;
	height: 10px;
	background: transparent;
}

.layui-fluid::-webkit-scrollbar-thumb {
	border-radius: 5px;
	background-color: #c1c1c1;
}

.model-form {
	padding: 25px 30px 0 0;
}

.text-right {
	text-align: right;
}
</style>
</head>

<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">书店后台管理</div>
			<ul class="layui-nav layui-layout-right">
				
			</ul>
		</div>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test">
					<li class="layui-nav-item"><a class="" href="backbook.jsp">书籍管理</a></li>
					<li class="layui-nav-item layui-this"><a href="javascript:;">用户管理</a></li>
					<li class="layui-nav-item"><a href="">类别管理</a></li>
					<li class="layui-nav-item"><a href="backorder.jsp">订单管理</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<div class="layui-body-header">
				<span class="layui-body-header-title">用户管理</span>
			</div>
			<div class="layui-fluid">
				<div class="layui-card">
					<div class="layui-card-body">
						<!-- 表格工具栏 -->
						<form class="layui-form toolbar">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">Email:</label>
									<div class="layui-input-inline">
										<input name="email" class="layui-input" placeholder="输入Email">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">用户名:</label>
									<div class="layui-input-inline">
										<input name="username" class="layui-input" placeholder="输入用户名">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">手机号:</label>
									<div class="layui-input-inline">
										<input name="phone" class="layui-input" placeholder="输入手机号">
									</div>
								</div>
								<div class="layui-inline">
									&emsp;
									<button class="layui-btn icon-btn" lay-filter="roleTbSearch"
										lay-submit="">
										<i class="layui-icon"></i>搜索
									</button>
								</div>
							</div>

						</form>
						<!-- 数据表格 -->
						<table id="roleTable" lay-filter="roleTable"></table>
						
					</div>
				</div>
			</div>
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">内容主体区域</div>
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© layui.com - 底部固定区域
		</div>
		<script type="text/html" id="barDemo">
                <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
				<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
            </script>
		<script type="text/html" id="orderViewDialog">
								

			</script>
		<script type="text/html" id="userEditDialog">
    <form id="userEditForm" lay-filter="userEditForm" class="layui-form model-form">
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">用户名:</label>
            <div class="layui-input-block">
                <input name="username" placeholder="请输入用户名" class="layui-input"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">邮箱:</label>
            <div class="layui-input-block">
                <input name="email" placeholder="请输入邮箱" class="layui-input"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">手机号:</label>
            <div class="layui-input-block">
                <input name="phone" placeholder="请输入手机号" class="layui-input"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">权限:</label>
            <div class="layui-input-block">
                <select name="permission" lay-verify="">
  					<option value="">请选择一个状态</option>
  					<option value="0">普通用户</option>
  					<option value="1">管理员</option>
				</select>
            </div>
        </div>
        <div class="layui-form-item text-right">
            <button class="layui-btn" lay-filter="userEditSubmit" lay-submit>保存</button>
            <button class="layui-btn layui-btn-primary" type="button" ew-event="closeDialog">取消</button>
        </div>
    </form>
			</script>
			<script type="text/html" id="userTbState">
    <input type="checkbox" lay-filter="userTbStateCk" lay-skin="switch" value="{{d.userid}}"
           lay-text="管理员|普通用户" {{d.permission==1?'checked':''}}/>
</script>
		<script type="text/html" id="usertoolbar">
			<div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1"
                                lay-id="roleTable" style=" ">
                                <div class="layui-table-tool">
                                    <div class="layui-table-tool-temp">
                                    	<button lay-event="add" class="layui-btn layui-btn-sm icon-btn">
                                    		<i class="layui-icon"></i>
                                    		添加
                                    	</button>&nbsp;
                                    	<button lay-event="del" class="layui-btn layui-btn-sm layui-btn-danger icon-btn">
                                    		<iclass="layui-icon"></i>
                                    		删除
                                    	</button>
                                    </div>
                                    <div class="layui-table-tool-self">
                                        <div class="layui-inline" title="筛选列" lay-event="LAYTABLE_COLS"><i
                                                class="layui-icon layui-icon-cols"></i></div>
                                        <div class="layui-inline" title="导出" lay-event="LAYTABLE_EXPORT"><i
                                                class="layui-icon layui-icon-export"></i></div>
                                        <div class="layui-inline" title="打印" lay-event="LAYTABLE_PRINT"><i
                                                class="layui-icon layui-icon-print"></i></div>
                                    </div>
                                </div>
		</script>
	</div>
	<!-- <script src="../src/layui.js"></script> -->
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="backheader.js?ver=1" ></script>
	<script>
	function genID(length){
    	return Number(Math.random().toString().substr(3,length) + Date.now()).toString(36)
    }
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});
		layui.use('laydate', function() {
			var laydate = layui.laydate;

			//执行一个laydate实例
			laydate.render({
				elem : '#test1', //指定元素
				type : 'datetime',
				range : true,
			});
		});
		/* layui.use('form', function(){
		    var form = layui.form;
		    
		    //监听提交
		    form.on('submit(formDemo)', function(data){
		        layer.msg(JSON.stringify(data.field));
		        return false;
		    });
		}); */
		// $(".layui-unselect").click(function(e){
		//     let tar=$(e.target)
		//     console.log(tar)
		//     tar.toggleClass("layui-form-selected")
		// })
		layui.use([ 'table', 'layer', 'form' ], function() {
			var table = layui.table;
			var layer = layui.layer;
			var form = layui.form;
			table.render({
				elem : '#roleTable',
				height : 460,
				url : 'UserManagement' //数据接口
				,
				method : "post",
				page : true //开启分页
				,
				cols : [ [ //表头
				{
					type : 'checkbox',
					fixed : 'left',
					align : 'center',
				}, {
					field : 'username',
					title : '用户名',
					align : 'center',
				}, {
					field : 'email',
					title : '邮箱',
					align : 'center',
				}, {
					field : 'phone',
					title : '手机号',
					align : 'center',
				}, {
					field : 'permission',
					title : '权限',
					templet:'#userTbState',
					width : '10%'
				}, {
					fixed : 'right',
					minWidth : 160,
					title : '操作',
					align : 'center',
					toolbar : '#barDemo'
				} ] ],
				toolbar: ['<p>',
	                '<button lay-event="add" class="layui-btn layui-btn-sm icon-btn"><i class="layui-icon">&#xe654;</i>添加</button>&nbsp;',
	                '</p>'].join(''),
	                defaultToolbar : [],
			// ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
			});
			table.on('tool(roleTable)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
				var data = obj.data //获得当前行数据
				, layEvent = obj.event; //获得 lay-event 对应的值
				if (layEvent === 'del') {
					obj.del();
					$.post("UserDELETE",{email:data.email},function(data){
						data=JSON.parse(data)
						layer.msg(data.msg)
					})
				} else if (layEvent === 'edit') {
					console.log(data)
					var index = layer.open({
						type : 1,
						title : "修改订单状态",
						content : $("#userEditDialog").html(),
						success : function(layero, index) {
							form.val('userEditForm', data);
							form.on('submit(userEditSubmit)', function(data) {
								
								$.post("ChangeOrderStatus", data.field,
										function(data) {
											layer.close(index)
										})
								return false;
							})
						}
					})
				}
			});
			
			table.on('toolbar(roleTable)',function(obj){
				if(obj.event=="add"){
					
					var index1=layer.open({
						type:1,
						title:"添加用户",
						content:$("#userEditDialog").html(),
						success:function(layero,index){
							form.render()
							form.on('submit(userEditSubmit)',function(data){
								var postdata=Object.assign({userid:genID(9)},data.field)
								console.log(postdata)
								layer.close(index1)
								$.post("UserADD",postdata,function(data){
									data=JSON.parse(data)
									if(data.code=="error"){
										layer.msg(data.msg)
									}else{
										layer.msg(data.msg)
									}
									
								})
								return false;
							})
						}
					})
				}
			})
			form.on('switch(userTbStateCk)',function(obj){
				var loadIndex=layer.load(2)
				$.post("PowerManagement",{userid:obj.elem.value,permission:obj.elem.checked?1:0},function(data){
					layer.close(loadIndex)
					data=JSON.parse(data)
					if(data.code==200){
						layer.msg(data.msg,{icon:1})
					}else{
						layer.msg(data.msg,{icon:2})
						$(obj.elem).prop('checked',!obj.elem.checked);
						form.render('checked');
					}
				})
			})
			form.on('submit(roleTbSearch)', function(data) {
				table.render({
					elem : '#roleTable',
					height : 312,
					url : 'UserManagement' //数据接口
					,where : data.field,
					method : "post",
					page : true //开启分页
					,
					cols : [ [ //表头
					{
						type : 'checkbox',
						fixed : 'left',
						align : 'center',
					}, {
						field : 'username',
						title : '用户名',
						align : 'center',
					}, {
						field : 'email',
						title : '邮箱',
						align : 'center',
					}, {
						field : 'phone',
						title : '手机号',
						align : 'center',
					}, {
						field : 'permission',
						title : '权限',
						align : 'center',
						templet:'#userTbState',
						width : '10%'
					}, {
						fixed : 'right',
						minWidth : 160,
						title : '操作',
						align : 'center',
						toolbar : '#barDemo'
					} ] ],
					toolbar: ['<p>',
		                '<button lay-event="add" class="layui-btn layui-btn-sm icon-btn"><i class="layui-icon">&#xe654;</i>添加</button>&nbsp;',
		                '</p>'].join(''),
		                defaultToolbar : [],
				// ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
				});
				return false;
			})
			/* $.post("OderSearch",{},function(data){
				data=JSON.parse(data)
				if(data.code=="error"){
					window.location.href="backlogin.jsp"
					
				}else{
					table.render({
			            elem: '#roleTable'
			            ,height: 312
			            ,url: 'OderSearch' //数据接口
			            ,page: true //开启分页
			            ,cols: [[ //表头
			            {type: 'checkbox', fixed: 'left'}
			            ,{field: 'id', title: 'ID', width:'10%', fixed: 'left'}
			            ,{field: 'orderno', title: '订单号', width:'10%'}
			            ,{field: 'date', title: '日期', width:'10%' , sort: true}
			            ,{field: 'totalprice', title: '总价', width: '10%'}
			            ,{field: 'orderstatus', title: '订单状态', width: '10%'}
			            ,{field: 'username', title: '用户名', width: '10%'}
			            ,{field: 'address', title: '地址', width: '10%'}
			            ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
			            ]]
			            ,toolbar: 'default'
			            // ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
			        });
				}
			}) */
			// 第一个实例
			form.render();

		});
	</script>
</body>

</html>
</body>

</html>