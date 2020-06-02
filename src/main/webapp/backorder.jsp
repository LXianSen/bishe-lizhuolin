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
					<!-- <li class="layui-nav-item"><a class="" href="backbook.jsp">书籍管理</a></li>
					<li class="layui-nav-item" style="display:none"><a href="backuser.jsp">用户管理</a></li>
					<li class="layui-nav-item"><a href="backfsttype.jsp">类别管理</a></li>
					<li class="layui-nav-item layui-this"><a href="javascript:;">订单管理</a></li> -->
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<div class="layui-body-header">
				<span class="layui-body-header-title">订单管理</span>
			</div>
			<div class="layui-fluid">
				<div class="layui-card">
					<div class="layui-card-body">
						<!-- 表格工具栏 -->
						<form class="layui-form toolbar">
							<div class="layui-form-item">
								<div class="layui-inline">
									<label class="layui-form-label">手机号:</label>
									<div class="layui-input-inline">
										<input name="roleCode" class="layui-input" placeholder="输入手机号">
									</div>
								</div>

								<div class="layui-inline">
									<label class="layui-form-label">日期范围:</label>
									<div class="layui-input-inline" style="width: 290px;">
										<input type="text" class="layui-input" id="test1">
									</div>

								</div>
								<div class="layui-inline">
									<label class="layui-form-label">ISBN:</label>
									<div class="layui-input-inline">
										<input name="ISBN" class="layui-input" placeholder="输入ISBN">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">用户名:</label>
									<div class="layui-input-inline">
										<input name="username" class="layui-input" placeholder="输入用户名">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">订单号:</label>
									<div class="layui-input-inline" style="width: 290px;">
										<input name="fatherorder" class="layui-input"
											placeholder="输入订单号">
									</div>
								</div>
								<div class="layui-inline">
									<label class="layui-form-label">订单状态:</label>
									<div class="layui-input-inline">
										<select name="status" lay-verify="">
											<option value="">请选择订单状态</option>
											<option value="待支付">待支付</option>
											<option value="支付成功">支付成功</option>
											<option value="已完成">已完成</option>
											<option value="已取消">已取消</option>
										</select>
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
            </script>
		<script type="text/html" id="orderViewDialog">
								

			</script>
		<script type="text/html" id="orderEditDialog">
    <form id="orderEditForm" lay-filter="orderEditForm" class="layui-form model-form">
        <input name="userId" type="hidden"/>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">订单号:</label>
            <div class="layui-input-block">
                <input name="fatherorder" placeholder="请输入订单号" class="layui-input"
                       lay-verType="tips" lay-verify="required" required disabled=""/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">订单生成日期:</label>
            <div class="layui-input-block">
                <input name="date" placeholder="请输入日期" class="layui-input"
                       lay-verType="tips" lay-verify="required" required disabled=""/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">订单状态:</label>
            <div class="layui-input-block">
                <select name="status" lay-verify="">
  <option value="">请选择一个状态</option>
  <option value="待支付">待支付</option>
  <option value="支付成功">支付成功</option>
  <option value="已完成">已完成</option>
	<option value="已取消">已取消</option>
</select>
            </div>
        </div>
        <div class="layui-form-item text-right">
            <button class="layui-btn" lay-filter="orderEditSubmit" lay-submit>保存</button>
            <button class="layui-btn layui-btn-primary" type="button" ew-event="closeDialog">取消</button>
        </div>
    </form>
			</script>
	</div>
	<!-- <script src="../src/layui.js"></script> -->
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="backheader.js?ver=1" ></script>
	<script type="text/javascript" src="backnavigation.js?ver=1" ></script>
	<script>
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
				height : 312,
				url : 'OderSearch' //数据接口
				,
				method : "post",
				page : true //开启分页
				,
				cols : [ [ //表头
				{
					type : 'checkbox',
					fixed : 'left'
				}, {
					field : 'fatherorder',
					title : '订单号',
				}, {
					field : 'date',
					title : '日期',
					sort : true
				}, {
					field : 'bprice',
					title : '总价',
				}, {
					field : 'status',
					title : '订单状态',
				}, {
					field : 'username',
					title : '用户名',
				}, {
					fixed : 'right',
					width : 165,
					align : 'center',
					toolbar : '#barDemo'
				} ] ]
			// ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
			});
			table.on('tool(roleTable)', function(obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
				var data = obj.data //获得当前行数据
				, layEvent = obj.event; //获得 lay-event 对应的值
				if (layEvent === 'detail') {
					layer.msg('查看操作');
				} else if (layEvent === 'edit') {
					console.log(data)
					var index = layer.open({
						type : 1,
						title : "修改订单状态",
						content : $("#orderEditDialog").html(),
						success : function(layero, index) {
							form.val('orderEditForm', data);
							form.on('submit(orderEditSubmit)', function(data) {
								$.post("ChangeOrderStatus", data.field,
										function(data) {
											layer.close(index)
											table.render({
												elem : '#roleTable',
												height : 312,
												url : 'OderSearch' //数据接口
												,
												method : "post",
												page : true //开启分页
												,
												cols : [ [ //表头
												{
													type : 'checkbox',
													fixed : 'left'
												}, {
													field : 'fatherorder',
													title : '订单号',
												}, {
													field : 'date',
													title : '日期',
													sort : true
												}, {
													field : 'bprice',
													title : '总价',
												}, {
													field : 'status',
													title : '订单状态',
												}, {
													field : 'username',
													title : '用户名',
												}, {
													fixed : 'right',
													width : 165,
													align : 'center',
													toolbar : '#barDemo'
												} ] ]
											// ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
											});
										})
								return false
							})
						}
					})
				}
			});
			form.on('submit(roleTbSearch)', function(data) {
				table.render({
					elem : '#roleTable',
					height : 312,
					url : 'OderSearch' //数据接口
					,
					method : "post",
					where : data.field,
					page : true //开启分页
					,
					cols : [ [ //表头
					{
						type : 'checkbox',
						fixed : 'left'
					}, {
						field : 'fatherorder',
						title : '订单号',
						width : '10%'
					}, {
						field : 'date',
						title : '日期',
						width : '10%',
						sort : true
					}, {
						field : 'bprice',
						title : '总价',
						width : '10%'
					}, {
						field : 'status',
						title : '订单状态',
						width : '10%'
					}, {
						field : 'username',
						title : '用户名',
						width : '10%'
					}, {
						field : 'address',
						title : '地址',
						width : '10%'
					}, {
						fixed : 'right',
						width : 165,
						align : 'center',
						toolbar : '#barDemo'
					} ] ],
					toolbar : 'default'
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

		});
		/* layui.use('layer', function(){
		    var layer = layui.layer;
		    layer.open({
		        type:1,
		        title:'订单详情'
		    })
		}); */
	</script>
</body>

</html>
</body>

</html>