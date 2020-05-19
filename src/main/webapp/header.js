/**
 * 
 */
$("header").append(`
  <div class="headerCenter">
				<div class=" login">
					<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
				</div>
				<div class="fr site-item m-user-con userhide">
					<div class="m-login-info">
						<a href="personCenter.jsp" class="m-safe-anchor" data-src="/personal-center/orders"
							data-target="_blank">
							<span class="iconfont icon-icon-test2"></span>
							<span class="m-username">丑丑小怪物</span>
							<span class="iconfont icon-icon-test10"></span>
						</a>
						<div class="site-item-nav hidden">
							<ul class="site-nav user-nav">
								<li class="my-order"><a rel="nofollow" data-target="_blank" data-src="/personal-center/orders" href="#"
										class="m-safe-anchor">我的订单</a></li>
								<li class="my-collection"><a rel="nofollow" data-target="_blank" data-src="/personal-center/collections" href="#"
										class="m-safe-anchor">我的收藏</a></li>
								<li class="my-address"><a rel="nofollow" data-target="_blank" data-src="/personal-center/address" href="#"
										class="m-safe-anchor">地址管理</a></li>
								<li class="exit"><a rel="nofollow" href="javascript:;">退出登录</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
`)

handleUser();
topboxfn();
	function handleUser(){
		var user = JSON.parse(sessionStorage.getItem("user"))
		if (user) {
			$('.m-user-con').removeClass('userhide')
			$('.login').addClass('userhide')
			$('.m-username').text(user.username || user.userd)
		}else{
			$('.m-user-con').addClass('userhide')
			$('.login').removeClass('userhide')
		}
	}
	
	$('.m-user-con').mouseenter(function (e) {
		$('.site-item-nav').removeClass('hidden').addClass('show')
	})
	$('.m-user-con').mouseleave(function (e) {
		$('.site-item-nav').removeClass('show').addClass('hidden')
	})
	
	function topboxfn(){
		$("header").on("click",".exit",function(){
			$.post("exit",{},function(data){
				data=JSON.parse(data)
				if(data.code=="200"){
					sessionStorage.clear()
					handleUser()
				}
			})
			
		})
		$("header").on("click",".my-order",function(){
			window.location.href="personCenter.jsp"
		})
		$("header").on("click",".my-collection",function(){
			window.location.href="personCenter.jsp"
		})
		$("header").on("click",".my-collection",function(){
			window.location.href="personCenter.jsp"
		})
	}

$("header").on("click","")