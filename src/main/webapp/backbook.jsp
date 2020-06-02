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
    </style>
</head>
<body class="layui-layout-body">
    <div class="layui-layout layui-layout-admin">
        <div class="layui-header">
            <div class="layui-logo">书店后台管理</div>
            <ul class="layui-nav layui-layout-right">
                <!-- <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                        贤心
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">退了</a></li> -->
            </ul>
        </div>

        <div class="layui-side layui-bg-black">
            <div class="layui-side-scroll">
                <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
                <ul class="layui-nav layui-nav-tree" lay-filter="test">
                    <li class="layui-nav-item layui-this">
                        <a class="" href="javascript:;">书籍管理</a>
                    </li>
                    <li class="layui-nav-item">
                        <a href="backuser.jsp">用户管理</a>
                    </li>
                    <li class="layui-nav-item"><a href="backfsttype.jsp">类别管理</a></li>
                    <li class="layui-nav-item"><a href="backorder.jsp">订单管理</a></li>
                </ul>
            </div>
        </div>

        <div class="layui-body">
            <div class="layui-body-header">
                <span class="layui-body-header-title">书籍管理</span>
            </div>
            <div class="layui-fluid">
                <div class="layui-card">
                    <div class="layui-card-body">
                        <!-- 表格工具栏 -->
                        <form class="layui-form toolbar">
                            <div class="layui-form-item ">
                                <div class="layui-col-md10">
                                    <div class="layui-inline">
                                        <label class="layui-form-label">书名:</label>
                                        <div class="layui-input-inline">
                                            <input name="bname" class="layui-input" placeholder="输入书名">
                                        </div>
                                    </div>
                                    <div class="layui-inline">
                                        <label class="layui-form-label">作者:</label>
                                        <div class="layui-input-inline">
                                            <input name="bauthor" class="layui-input" placeholder="输入作者">
                                        </div>
                                    </div>
                                    <div class="layui-inline">
                                        <label class="layui-form-label">出版社:</label>
                                        <div class="layui-input-inline">
                                            <input name="bpublish" class="layui-input" placeholder="输入出版社">
                                        </div>
                                    </div>
                                    
                                    <div class="layui-inline">
                                        <label class="layui-form-label">ISBN:</label>
                                        <div class="layui-input-inline">
                                            <input name="ISBN" class="layui-input" placeholder="输入ISBN">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="layui-inline">&emsp;
                                    <button class="layui-btn icon-btn" lay-filter="roleTbSearch" lay-submit="">
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
          <script type="text/html" id="bookEditDialog">
    <form id="bookEditForm" lay-filter="bookEditForm" class="layui-form model-form">
        <input name="userId" type="hidden"/>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">ISBN:</label>
            <div class="layui-input-block">
                <input name="ISBN" placeholder="请输入ISBN" class="layui-input eisbn"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">书名:</label>
            <div class="layui-input-block">
                <input name="bname" placeholder="请输入书名" class="layui-input ebname"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">作者:</label>
            <div class="layui-input-block">
                <input name="bauthor" placeholder="请输入作者" class="layui-input ebauthor"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">出版社:</label>
            <div class="layui-input-block">
                <input name="bpublish" placeholder="请输入出版社" class="layui-input ebpublish"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">出版日期:</label>
            <div class="layui-input-block">
                <input name="bdate" type="text" class="layui-input ebdate" id="test1" placeholder="yyyy-MM-dd">
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">单价:</label>
            <div class="layui-input-block">
                <input name="bprice" placeholder="请输入单价" class="layui-input ebprice"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">折扣:</label>
            <div class="layui-input-block">
                <input name="bdiscount" placeholder="请输入折扣" class="layui-input"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>
		<div class="layui-form-item">
            <label class="layui-form-label layui-form-required">库存:</label>
            <div class="layui-input-block">
                <input name="stock" placeholder="请输入库存" class="layui-input"
                       lay-verType="tips" lay-verify="required" required/>
            </div>
        </div>							
									
        <div class="layui-form-item">
            <label class="layui-form-label layui-form-required">所属类别:</label>
            <div class="layui-input-block">
                <select name="sontype" lay-verify="" class="setPermission">
  					<option value="">请选择一个类别</option>
  					<option value="0">普通用户</option>
  					<option value="1">管理员</option>
				</select>
            </div>
        </div>
        <div class="layui-form-item text-right">
            <button class="layui-btn" lay-filter="bookEditSubmit" lay-submit>保存</button>
            <button class="layui-btn layui-btn-primary" type="button" ew-event="closeDialog">取消</button>
        </div>
    </form>
			</script>
    </div>
    <!-- <script src="../src/layui.js"></script> -->
    <script type="text/javascript" src="js/jquery-3.4.1.js"></script>
    <script type="text/javascript" src="backheader.js?ver=2" ></script>
    <script>
        //JavaScript代码区域
        layui.use('element', function () {
            var element = layui.element;

        });
        
        layui.use('form', function(){
            var form = layui.form;
            
            //监听提交
            form.on('submit(formDemo)', function(data){
                layer.msg(JSON.stringify(data.field));
                return false;
            });
        });
        // $(".layui-unselect").click(function(e){
        //     let tar=$(e.target)
        //     console.log(tar)
        //     tar.toggleClass("layui-form-selected")
        // })
        layui.use(['table','layer','laydate','form'], function(){
        var table = layui.table;
        var layer=layui.layer;
        var laydate=layui.laydate;
        var form =layui.form;
        
        
        
        form.on('submit(roleTbSearch)',function(obj){
        	table.render({
                elem: '#roleTable'
                ,height: 312
                ,url: 'BooksShow' //数据接口
                ,method:'post'
                ,page: true //开启分页
                ,where : obj.field
                ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'ISBN', title: 'ISBN', width:'10%', fixed: 'left'}
                ,{field: 'bname', title: '书名', width:'10%'}
                ,{field: 'bauthor', title: '作者', width:'10%' , sort: true}
                ,{field: 'bpublish', title: '出版社', width: '10%'}
                ,{field: 'bdate', title: '出版日期', width: '10%'}
                ,{field: 'bprice', title: '单价', width: '10%'}
                ,{field: 'bdiscount', title: '折扣', width: '10%'}
                ,{field: 'sontype', title: '类别', width: '10%'}
                ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
                ]],
            toolbar: ['<p>',
                '<button lay-event="add" class="layui-btn layui-btn-sm icon-btn"><i class="layui-icon">&#xe654;</i>添加</button>&nbsp;',
                '</p>'].join(''),
                defaultToolbar : [],
                // ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
            });
        	return false;
        })
        
        // 第一个实例
            table.render({
                elem: '#roleTable'
                ,height: 430
                ,url: 'BooksShow' //数据接口
                ,page: true //开启分页
                ,method:'post'
                ,cols: [[ //表头
                {type: 'checkbox', fixed: 'left'}
                ,{field: 'ISBN', title: 'ISBN', width:'10%', fixed: 'left'}
                ,{field: 'bname', title: '书名', width:'10%'}
                ,{field: 'bauthor', title: '作者', width:'10%' , sort: true}
                ,{field: 'bpublish', title: '出版社', width: '10%'}
                ,{field: 'bdate', title: '出版日期', width: '10%'}
                ,{field: 'bprice', title: '单价', width: '10%'}
                ,{field: 'bdiscount', title: '折扣', width: '10%'}
                ,{field: 'sontype', title: '类别', width: '10%'}
                ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
                ]],
            toolbar: ['<p>',
                '<button lay-event="add" class="layui-btn layui-btn-sm icon-btn"><i class="layui-icon">&#xe654;</i>添加</button>&nbsp;',
                '</p>'].join(''),
                defaultToolbar : [],
                // ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
            });
            table.on('toolbar(roleTable)',function(obj){
            	typedata();
				if(obj.event=="add"){
					
					var index1=layer.open({
						type:1,
						title:"添加书籍",
						content:$("#bookEditDialog").html(),
						success:function(layero,index){
							form.render()
							laydate.render({
					        	elem:'#test1',
					        })
							form.on('submit(bookEditSubmit)',function(data){
								layer.close(index1)
								console.log(data) 
								$.post("BookAdd",data.field,function(data){
									data=JSON.parse(data)
									layer.msg(data.msg)
									table.render({
						                elem: '#roleTable'
						                ,height: 430
						                ,url: 'BooksShow' //数据接口
						                ,page: true //开启分页
						                ,method:'post'
						                ,cols: [[ //表头
						                {type: 'checkbox', fixed: 'left'}
						                ,{field: 'ISBN', title: 'ISBN', width:'10%', fixed: 'left'}
						                ,{field: 'bname', title: '书名', width:'10%'}
						                ,{field: 'bauthor', title: '作者', width:'10%' , sort: true}
						                ,{field: 'bpublish', title: '出版社', width: '10%'}
						                ,{field: 'bdate', title: '出版日期', width: '10%'}
						                ,{field: 'bprice', title: '单价', width: '10%'}
						                ,{field: 'bdiscount', title: '折扣', width: '10%'}
						                ,{field: 'sontype', title: '类别', width: '10%'}
						                ,{fixed: 'right', width: 165, align:'center', toolbar: '#barDemo'}
						                ]],
						            toolbar: ['<p>',
						                '<button lay-event="add" class="layui-btn layui-btn-sm icon-btn"><i class="layui-icon">&#xe654;</i>添加</button>&nbsp;',
						                '</p>'].join(''),
						                defaultToolbar : [],
						                // ,data=[{id:"001",orderno:"1234532143",date:"2020-2-19",totalprice:"50.00",orderstatus:"待付款",username:"李四",address:"四川省遂宁市"}]
						            });
								})
								return false;
							})
						}
					})
				}
			})
			table.on('tool(roleTable)',function(obj){
				var data = obj.data
				typedata();
				if(obj.event=='del'){
					obj.del();
					$.post("BookDelete",data,function(data){
						data=JSON.parse(data)
						layer.msg(data.msg)
					})
				}else if(obj.event=="edit"){
					var index = layer.open({
						type : 1,
						title : "修改书籍信息",
						content : $("#bookEditDialog").html(),
						success : function(layero, index) {
							$(".eisbn").attr("disabled","")
							$(".ebname").attr("disabled","")
							$(".ebauthor").attr("disabled","")
							$(".ebpublish").attr("disabled","")
							$(".ebprice").attr("disabled","")
							$(".ebdate").attr("disabled","")
							form.val('bookEditForm', data);
							form.on('submit(bookEditSubmit)', function(data) {
								
								$.post("BookUpdate", data.field,
										function(data) {
											layer.close(index)
										})
								return false;
							})
						}
					})
				}
			})
			function typedata(){
            	$.post("GetAllSontypes",{},function(data){
            		data=JSON.parse(data)
            		console.log(data)
            		$(".setPermission").empty();
            		$(".setPermission").append('<option value="">请选择一个类别</option>')
            		data.forEach(function(item,index){
            			$(".setPermission").append('<option value='+item+'>'+item+'</option>')
            		})
            		form.render('select')
            	})
            }
        });
        
        
    </script>
</body>

</html>