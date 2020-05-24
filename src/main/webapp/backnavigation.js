/**
 * 
 */
$(".layui-nav.layui-nav-tree").append(`
		<li class="layui-nav-item"><a class="" href="backbook.jsp">书籍管理</a></li>
		<li class="layui-nav-item usermanage" style="display:none"><a href="backuser.jsp">用户管理</a></li>
		<li class="layui-nav-item"><a href="backfsttype.jsp">类别管理</a></li>
		<li class="layui-nav-item layui-this"><a href="javascript:;">订单管理</a></li>
`)
if(JSON.parse(sessionStorage.getItem("user")).user.permission=="2"){
	$(".usermanage").attr("style","display:block")
}