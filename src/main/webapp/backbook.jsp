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
                <li class="layui-nav-item">
                    <a href="javascript:;">
                        <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                        贤心
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item"><a href="">退了</a></li>
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
                        <!-- <div class="layui-form layui-border-box layui-table-view" lay-filter="LAY-table-1"
                            lay-id="roleTable" style=" ">
                            <div class="layui-table-tool">
                                <div class="layui-table-tool-temp"><button lay-event="add"
                                        class="layui-btn layui-btn-sm icon-btn"><i
                                            class="layui-icon"></i>添加</button>&nbsp;<button lay-event="del"
                                        class="layui-btn layui-btn-sm layui-btn-danger icon-btn"><i
                                            class="layui-icon"></i>删除</button></div>
                                <div class="layui-table-tool-self">
                                    <div class="layui-inline" title="筛选列" lay-event="LAYTABLE_COLS"><i
                                            class="layui-icon layui-icon-cols"></i></div>
                                    <div class="layui-inline" title="导出" lay-event="LAYTABLE_EXPORT"><i
                                            class="layui-icon layui-icon-export"></i></div>
                                    <div class="layui-inline" title="打印" lay-event="LAYTABLE_PRINT"><i
                                            class="layui-icon layui-icon-print"></i></div>
                                </div>
                            </div>
                            <div class="layui-table-box">
                                <div class="layui-table-header">
                                    <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
                                        <thead>
                                            <tr>
                                                <th data-field="0" data-key="1-0-0" data-unresize="true"
                                                    class=" layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
                                                        <input type="checkbox" name="layTableCheckbox"
                                                            lay-skin="primary" lay-filter="layTableAllChoose">
                                                        <div class="layui-unselect layui-form-checkbox"
                                                            lay-skin="primary"><i
                                                                class="layui-icon layui-icon-ok"></i></div>
                                                    </div>
                                                </th>
                                                <th data-field="1" data-key="1-0-1" data-unresize="true"
                                                    class=" layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-1 laytable-cell-numbers">
                                                        <span></span></div>
                                                </th>
                                                <th data-field="roleName" data-key="1-0-2" class=" layui-unselect">
                                                    <div class="layui-table-cell laytable-cell-1-0-2">
                                                        <span>角色名</span><span
                                                            class="layui-table-sort layui-inline"><i
                                                                class="layui-edge layui-table-sort-asc"
                                                                title="升序"></i><i
                                                                class="layui-edge layui-table-sort-desc"
                                                                title="降序"></i></span></div>
                                                </th>
                                                <th data-field="roleCode" data-key="1-0-3" class=" layui-unselect">
                                                    <div class="layui-table-cell laytable-cell-1-0-3">
                                                        <span>角色代码</span><span
                                                            class="layui-table-sort layui-inline"><i
                                                                class="layui-edge layui-table-sort-asc"
                                                                title="升序"></i><i
                                                                class="layui-edge layui-table-sort-desc"
                                                                title="降序"></i></span></div>
                                                </th>
                                                <th data-field="comments" data-key="1-0-4" class=" layui-unselect">
                                                    <div class="layui-table-cell laytable-cell-1-0-4">
                                                        <span>备注</span><span
                                                            class="layui-table-sort layui-inline"><i
                                                                class="layui-edge layui-table-sort-asc"
                                                                title="升序"></i><i
                                                                class="layui-edge layui-table-sort-desc"
                                                                title="降序"></i></span></div>
                                                </th>
                                                <th data-field="createTime" data-key="1-0-5"
                                                    class=" layui-unselect">
                                                    <div class="layui-table-cell laytable-cell-1-0-5">
                                                        <span>创建时间</span><span
                                                            class="layui-table-sort layui-inline"><i
                                                                class="layui-edge layui-table-sort-asc"
                                                                title="升序"></i><i
                                                                class="layui-edge layui-table-sort-desc"
                                                                title="降序"></i></span></div>
                                                </th>
                                                <th data-field="6" data-key="1-0-6" data-minwidth="200"
                                                    class=" layui-table-col-special">
                                                    <div class="layui-table-cell laytable-cell-1-0-6"
                                                        align="center"><span>操作</span></div>
                                                </th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                                <div class="layui-table-body layui-table-main">
                                    <table cellspacing="0" cellpadding="0" border="0" class="layui-table">
                                        <tbody>
                                            <tr data-index="0" class="">
                                                <td data-field="0" data-key="1-0-0" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
                                                        <input type="checkbox" name="layTableCheckbox"
                                                            lay-skin="primary">
                                                        <div class="layui-unselect layui-form-checkbox"
                                                            lay-skin="primary"><i
                                                                class="layui-icon layui-icon-ok"></i></div>
                                                    </div>
                                                </td>
                                                <td data-field="1" data-key="1-0-1" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-1 laytable-cell-numbers">
                                                        1</div>
                                                </td>
                                                <td data-field="roleName" data-key="1-0-2" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-2">管理员</div>
                                                </td>
                                                <td data-field="roleCode" data-key="1-0-3" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-3">admin</div>
                                                </td>
                                                <td data-field="comments" data-key="1-0-4" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-4">系统管理员</div>
                                                </td>
                                                <td data-field="createTime" data-key="1-0-5"
                                                    data-content="2019/03/29 16:38:03" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-5">2019-03-29
                                                        16:38:03</div>
                                                </td>
                                                <td data-field="6" data-key="1-0-6" align="center" data-off="true"
                                                    data-minwidth="200" class="layui-table-col-special">
                                                    <div class="layui-table-cell laytable-cell-1-0-6"> <a
                                                            class="layui-btn layui-btn-primary layui-btn-xs"
                                                            lay-event="edit">修改</a> <a
                                                            class="layui-btn layui-btn-danger layui-btn-xs"
                                                            lay-event="del">删除</a> <a
                                                            class="layui-btn layui-btn-warm layui-btn-xs"
                                                            lay-event="auth">权限分配</a> </div>
                                                </td>
                                            </tr>
                                            <tr data-index="1" class="">
                                                <td data-field="0" data-key="1-0-0" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
                                                        <input type="checkbox" name="layTableCheckbox"
                                                            lay-skin="primary">
                                                        <div class="layui-unselect layui-form-checkbox"
                                                            lay-skin="primary"><i
                                                                class="layui-icon layui-icon-ok"></i></div>
                                                    </div>
                                                </td>
                                                <td data-field="1" data-key="1-0-1" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-1 laytable-cell-numbers">
                                                        2</div>
                                                </td>
                                                <td data-field="roleName" data-key="1-0-2" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-2">普通用户</div>
                                                </td>
                                                <td data-field="roleCode" data-key="1-0-3" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-3">user</div>
                                                </td>
                                                <td data-field="comments" data-key="1-0-4" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-4">系统普通用户</div>
                                                </td>
                                                <td data-field="createTime" data-key="1-0-5"
                                                    data-content="2019/03/29 16:38:03" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-5">2019-03-29
                                                        16:38:03</div>
                                                </td>
                                                <td data-field="6" data-key="1-0-6" align="center" data-off="true"
                                                    data-minwidth="200" class="layui-table-col-special">
                                                    <div class="layui-table-cell laytable-cell-1-0-6"> <a
                                                            class="layui-btn layui-btn-primary layui-btn-xs"
                                                            lay-event="edit">修改</a> <a
                                                            class="layui-btn layui-btn-danger layui-btn-xs"
                                                            lay-event="del">删除</a> <a
                                                            class="layui-btn layui-btn-warm layui-btn-xs"
                                                            lay-event="auth">权限分配</a> </div>
                                                </td>
                                            </tr>
                                            <tr data-index="2" class="">
                                                <td data-field="0" data-key="1-0-0" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-0 laytable-cell-checkbox">
                                                        <input type="checkbox" name="layTableCheckbox"
                                                            lay-skin="primary">
                                                        <div class="layui-unselect layui-form-checkbox"
                                                            lay-skin="primary"><i
                                                                class="layui-icon layui-icon-ok"></i></div>
                                                    </div>
                                                </td>
                                                <td data-field="1" data-key="1-0-1" class="layui-table-col-special">
                                                    <div
                                                        class="layui-table-cell laytable-cell-1-0-1 laytable-cell-numbers">
                                                        3</div>
                                                </td>
                                                <td data-field="roleName" data-key="1-0-2" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-2">游客</div>
                                                </td>
                                                <td data-field="roleCode" data-key="1-0-3" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-3">guest</div>
                                                </td>
                                                <td data-field="comments" data-key="1-0-4" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-4">系统游客</div>
                                                </td>
                                                <td data-field="createTime" data-key="1-0-5"
                                                    data-content="2019/03/29 16:38:03" class="">
                                                    <div class="layui-table-cell laytable-cell-1-0-5">2019-03-29
                                                        16:38:03</div>
                                                </td>
                                                <td data-field="6" data-key="1-0-6" align="center" data-off="true"
                                                    data-minwidth="200" class="layui-table-col-special">
                                                    <div class="layui-table-cell laytable-cell-1-0-6"> <a
                                                            class="layui-btn layui-btn-primary layui-btn-xs"
                                                            lay-event="edit">修改</a> <a
                                                            class="layui-btn layui-btn-danger layui-btn-xs"
                                                            lay-event="del">删除</a> <a
                                                            class="layui-btn layui-btn-warm layui-btn-xs"
                                                            lay-event="auth">权限分配</a> </div>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="layui-table-page">
                                <div id="layui-table-page1">
                                    <div class="layui-box layui-laypage layui-laypage-default" id="layui-laypage-1">
                                        <a href="javascript:;" class="layui-laypage-prev layui-disabled"
                                            data-page="0"><i class="layui-icon"></i></a><span
                                            class="layui-laypage-curr"><em
                                                class="layui-laypage-em"></em><em>1</em></span><a
                                            href="javascript:;" class="layui-laypage-next layui-disabled"
                                            data-page="2"><i class="layui-icon"></i></a><span
                                            class="layui-laypage-skip">到第<input type="text" min="1" value="1"
                                                class="layui-input">页<button type="button"
                                                class="layui-laypage-btn">确定</button></span><span
                                            class="layui-laypage-count">共 3 条</span><span
                                            class="layui-laypage-limits"><select lay-ignore="">
                                                <option value="10" selected="">10 条/页</option>
                                                <option value="20">20 条/页</option>
                                                <option value="30">30 条/页</option>
                                                <option value="40">40 条/页</option>
                                                <option value="50">50 条/页</option>
                                                <option value="60">60 条/页</option>
                                                <option value="70">70 条/页</option>
                                                <option value="80">80 条/页</option>
                                                <option value="90">90 条/页</option>
                                            </select></span></div>
                                </div>
                            </div>
                            <style>
                                .laytable-cell-1-0-0 {
                                    width: 48px;
                                }

                                .laytable-cell-1-0-1 {
                                    width: 40px;
                                }

                                .laytable-cell-1-0-2 {}

                                .laytable-cell-1-0-3 {}

                                .laytable-cell-1-0-4 {}

                                .laytable-cell-1-0-5 {}

                                .laytable-cell-1-0-6 {
                                    width: 200px;
                                }
                            </style>
                        </div> -->
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
                <input type="text" class="layui-input ebdate" id="test1">
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
        
        laydate.render({
        	elem:'#test1',
        })
        
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
                ,{field: 'stock', title: '库存', width: '10%'}
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
                ,height: 312
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
                ,{field: 'stock', title: '库存', width: '10%'}
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
							
							form.on('submit(bookEditSubmit)',function(data){
								layer.close(index1)
								$.post("BookAdd",data.field,function(data){
									data=JSON.parse(data)
									layer.msg(data.msg)
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