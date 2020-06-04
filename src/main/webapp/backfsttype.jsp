<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

#organizationTreeBar {
	padding: 10px 15px;
	border: 1px solid #e6e6e6;
	background-color: #f2f2f2;
}
body {
    color: #595959;
    background-color: #f5f7f9;
}
#booktypetree {
    border: 1px solid #e6e6e6;
    border-top: none;
    padding: 10px 5px;
    overflow: auto;
    height: -webkit-calc(100vh - 263px);
    height: -moz-calc(100vh - 263px);
    height: calc(100vh - 263px);
}
.layui-tree-entry.ew-tree-click .layui-tree-txt {
    background-color: #fff3e0;
    border: 1px #FFE6B0 solid;
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
					<li class="layui-nav-item"><a class=""
						href="backbook.jsp">书籍管理</a></li>
					<li class="layui-nav-item usermanage" style="display:none"><a href="backuser.jsp">用户管理</a></li>
					<li class="layui-nav-item  layui-this"><a href="">类别管理</a></li>
					<li class="layui-nav-item"><a href="backorder.jsp">订单管理</a></li>
				</ul>
			</div>
		</div>

		<div class="layui-body">
			<div class="layui-body-header">
				<span class="layui-body-header-title">类别管理</span>
			</div>
			<div class="layui-fluid">
				<div class="layui-row layui-col-space15">
					<div class="layui-col-md3">
					<div class="layui-card">
						<div class="layui-card-body" >
							<div class="layui-form toolbar" id="organizationTreeBar">
								<button id="typeAddBtn"
									class="layui-btn layui-btn-sm icon-btn">
									<i class="layui-icon"></i>添加
								</button>
								&nbsp;
								<button id="typeDelBtn"
									class="layui-btn layui-btn-sm layui-btn-danger icon-btn">
									<i class="layui-icon"></i>删除
								</button>
							</div>
							<div id="booktypetree"></div>
						</div>
					</div>
				</div>
				<div class="layui-col-md9">
					<div class="layui-card">
						<div class="layui-card-body">
							<table id="roleTable" lay-filter="roleTable"></table>

						</div>
					</div>
				</div>
				</div>
				
			</div>

			<!-- 内容主体区域 -->
			
		</div>

		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© layui.com - 底部固定区域
		</div>
		<script type="text/html" id="barDemo">
            <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
            <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
          </script>
          
		<script type="text/html" id="typeEditDialog">
    <form id="bookEditForm" lay-filter="typeEditForm" class="layui-form model-form">
        <input name="userId" type="hidden"/>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">一级类别名:</label>
            <div class="layui-input-block">
                <input name="fathertype" placeholder="请输入一级类别名" class="layui-input efathertype"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">二级类别名:</label>
            <div class="layui-input-block">
                <input name="sontype" placeholder="请输入二级类别名" class="layui-input eisbn"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item text-right">
            <button class="layui-btn" lay-filter="typeEditSubmit" lay-submit>保存</button>
            <button class="layui-btn layui-btn-primary" type="button" ew-event="closeDialog">取消</button>
        </div>
    </form>
			</script>
	</div>
	<!-- <script src="../src/layui.js"></script> -->
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript" src="backheader.js?ver=1" ></script>
	<!-- <script type="text/javascript" src="backnavigation.js?ver=2" ></script> -->
	<script>
	if(JSON.parse(sessionStorage.getItem("user")).user.permission=="2"){
    	$(".usermanage").attr("style","display:block")
    }
		//JavaScript代码区域
		layui.use('element', function() {
			var element = layui.element;

		});

		layui.use('form', function() {
			var form = layui.form;

			//监听提交
			form.on('submit(formDemo)', function(data) {
				layer.msg(JSON.stringify(data.field));
				return false;
			});
		});
		layui.use([ 'table', 'layer', 'laydate', 'form', 'tree' ],function() {
							var table = layui.table;
							var layer = layui.layer;
							var laydate = layui.laydate;
							var form = layui.form;
							var tree = layui.tree;

							var selObj,treeData;

							laydate.render({
								elem : '#test1',
							})
							
							$("#typeAddBtn").click(function(){
								showEditModel(null,selObj?selObj.data.title:null);
							})
							
							$("#typeDelBtn").click(function(){
								doDel(selObj)
							})
							
							treeData()
							function treeData() {
								var treedata = [];
								
								$.post("BookTypeShow", {
									typename : ""
								}, function(data) {
									data = JSON.parse(data)
									console.log(data)

									data.forEach(function(item, index) {
										var ary = [], obj
										var obj = {
											title : item.firstname
										}
										item.secondname.forEach(function(item1,
												index1) {
											var obj1 = {
												title : item1.name
											}
											ary.push(obj1)
										})
										obj = {
											title : item.firstname,
											children : ary
										}
										treedata.push(obj)
										alldata=[{title:"所有类别",children:treedata,spread:true}]
										
									})
									var inst1 = tree.render({
										elem : '#booktypetree',
										onlyIconControl : true,
										data : alldata,
										click:function(obj){
											selObj=obj;
											$("#booktypetree").find('.ew-tree-click').removeClass('ew-tree-click');
											$(obj.elem).children('.layui-tree-entry').addClass('ew-tree-click');
											renderbooktable(selObj);
										}
									})

								})
							}
							
							function doDel(obj) {
								console.log(obj)
								console.log(obj.hasOwnProperty("children"))
					            layer.confirm('确定要删除此类别吗？', {
					                skin: 'layui-layer-admin',
					                shade: .1
					            }, function (i) {
					                layer.close(i);
					                var loadIndex = layer.load(2),postdata;
					                if(obj.data.hasOwnProperty("children")){
					                	postdata={fathertype:obj.data.title,sontype:""}
					                }else{
					                	postdata={sontype:obj.data.title}
					                }
					                $.post('TypeDelete', postdata, function (res) {
					                    layer.close(loadIndex);
					                    if ("200" === res.code) {
					                    	treeData()
					                        layer.msg(res.msg, {icon: 1});
					                    } else {
					                        layer.msg(res.msg, {icon: 2});
					                    }
					                }, 'json');
					            });
					        }
							/* 显示表单弹窗 */
					        function showEditModel(mData, pid) {
								console.log(pid)
					            layer.open({
					                type: 1,
					                area: '600px',
					                title: "添加类别",
					                content: $('#typeEditDialog').html(),
					                success: function (layero, dIndex) {
					                	form.val('typeEditForm',{fathertype:pid})
					                	form.render()
					                	if(pid){
					                		$(".efathertype").attr("disabled","");
					                	}
					                    // 表单提交事件
					                    form.on('submit(typeEditSubmit)', function (data) {
					                        var loadIndex = layer.load(2);
					                        $.post("TypeAdd", data.field, function (res) {
					                            layer.close(loadIndex);
					                            if ("200" == res.code) {
					                                layer.close(dIndex);
					                                layer.msg(res.msg, {icon: 1});
					                                treeData();
					                            } else {
					                            	layer.close(dIndex);
					                                layer.msg(res.msg, {icon: 2});
					                            }
					                        }, 'json');
					                        return false;
					                    });
					                    // 渲染下拉树
					                    /* var insXmSel = xmSelect.render({
					                        el: '#organizationEditParentSel',
					                        height: '250px',
					                        data: treeData,
					                        initValue: mData ? [mData.parentId] : (pid ? [pid] : []),
					                        model: {label: {type: 'text'}},
					                        prop: {
					                            name: 'organizationName',
					                            value: 'organizationId'
					                        },
					                        radio: true,
					                        clickClose: true,
					                        tree: {
					                            show: true,
					                            indent: 15,
					                            strict: false,
					                            expandedKeys: true
					                        }
					                    }); */
					                    // 禁止弹窗出现滚动条
					                    $(layero).children('.layui-layer-content').css('overflow', 'visible');
					                }
					            });
					        }
					        renderbooktable()
							function renderbooktable(obj){
								table.render({
									elem : '#roleTable',
									height : 520,
									url : 'BooksShow' //数据接口
									,
									page : true //开启分页
									,
									method : 'post',
									where:obj?{sontype:obj.data.title}:"",
									cols : [ [ //表头
									{
										field : 'ISBN',
										title : 'ISBN',
										width : '10%',
										fixed : 'left'
									}, {
										field : 'bname',
										title : '书名',
										width : '10%'
									}, {
										field : 'bauthor',
										title : '作者',
										width : '10%',
										sort : true
									}, {
										field : 'bpublish',
										title : '出版社',
										width : '10%'
									}, {
										field : 'bdate',
										title : '出版日期',
										width : '10%'
									}, {
										field : 'bprice',
										title : '单价',
										width : '10%'
									}, {
										field : 'bdiscount',
										title : '折扣',
										width : '10%'
									}, {
										field : 'sontype',
										title : '类别',
										width : '10%'
									},  ] ],
									defaultToolbar : [],
								
								});
							}

							
							
							
							function typedata() {
								$.post("GetAllSontypes",{},function(data) {
													data = JSON.parse(data)
													console.log(data)
													$(".setPermission").empty();
													$(".setPermission")
															.append(
																	'<option value="">请选择一个类别</option>')
													data
															.forEach(function(
																	item, index) {
																$(
																		".setPermission")
																		.append(
																				'<option value='+item+'>'
																						+ item
																						+ '</option>')
															})
													form.render('select')
												})
							}
						});
	</script>
</body>

</html>