/**
 * 
 */

$(".layui-nav.layui-layout-right").append(`<li class="layui-nav-item">
                    <a href="javascript:;" class="user">
                        <img src="http://t.cn/RCzsdCq" class="layui-nav-img">
                        贤心
                    </a>
                    <dl class="layui-nav-child">
                        <dd><a href="">基本资料</a></dd>
                        <dd><a href="">安全设置</a></dd>
                    </dl>
                </li>
                <li class="layui-nav-item exit"><a href="">退了</a></li>`)
   handleUser()
    function handleUser(){
		var user = JSON.parse(sessionStorage.getItem("user"))
		$('.user').text(user.user.username || user.user.userid)
		
	}

$(".layui-nav.layui-layout-right").on("click",".exit",function(){
	$.post("exit",{},function(){
		data=JSON.parse(data)
		if(data.code=="200"){
			sessionStorage.clear()
			window.location.href="backlogin.jsp"
		}
	})
	
})