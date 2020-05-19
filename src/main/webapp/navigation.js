/**
 * 
 */
$(".m-fixedBar").append(`
		<ul class="fixed-nav">
			<li class="toCart">
				<span class="iconfont icon-icon-test search_font shopcart"></span>
				<p class="text">购物车</p>
			</li>
			<li class="toPerson">
				<span class="iconfont icon-icon-test2 search_font"></span>
				<p class="text">个人中心</p>
			</li>
			<li class="toTop">
				<span class="iconfont icon-icon-test11 search_font"></span>
				<p class="text">回到顶部</p>
			</li>
		</ul>
`)

rightboxfn();

//右侧导航栏
	function rightboxfn(){
		//处理跳转到购物车
		$(".toCart").click(function(){
        	window.location.href="shoppingCart.jsp"
        })
        $(".toPerson").click(function(){
        	window.location.href="personCenter.jsp"
        })
		//处理返回顶部按钮
		$(".toTop").click(function () {
			$('body,html').animate({ 
				scrollTop: 0
			},
				500);
			return false;
		});
	}