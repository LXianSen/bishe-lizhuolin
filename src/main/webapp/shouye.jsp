<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 模板</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link href="./css/bootstrap.min.css" rel="stylesheet">
<style>
* {
	margin: 0;
	padding: 0;
}

a {
	text-decoration: none;
}

header {
	color: #e7e7e7;
	height: 48px;
	background: #333;
	font-size: 14px;
	position: relative;
	z-index: 105;
}

.headerCenter {
	width: 1080px;
	margin: 0 auto;
	text-align: right;
}

.headerCenter a {
	line-height: 48px;
	margin-left: 8px;
	color: white
}

.content_center {
	width: 1080px;
	margin: 20px auto;
}

.search_box {
	float: right;
	line-height: 41px;
}

.clear:after {
	content: "";
	display: block;
	height: 0;
	clear: both;
	visibility: hidden;
}

.search {
	width: 281px;
	height: 41px;
	line-height: 41px;
	float: left;
	border-bottom: 1px solid #e7e7e7;
	margin-right: 10px;
}

.search input {
	border: 0px;
}

.search_font {
	font-size: 30px;
}

.top_box {
	width: 1080px;
	height: 358px;
	margin-top: 20px;
}

.top_box .directory {
	width: 221px;
	height: 338px;
	background-color: #845f3f;
	padding: 10px 0;
	float: left;
	position: relative
}

.top_box .directory ul {
	overflow: hidden;
}

.top_box .directory>ul>li {
	padding: 0 30px;
	height: 37px;
	line-height: 37px;
	color: #fff;
	font-size: 14px;
	transition: all .2s ease;
	text-align: left;
	overflow: hidden;
}

.top_box .directory>ul>li:hover {
	background-color: #684b34;
	color: #f1ede9;
}

.top_box .ads {
	width: 859px;
	height: 338px;
	float: right;
	overflow: hidden;
}

.show {
	display: block
}

.top_box .directory .nav-details {
	/* display: none; */
	position: absolute;
	top: 0;
	left: 221px;
	width: 859px;
	height: 338px;
	background-color: #fff;
	border: 1px solid #eee;
	padding: 20px 30px;
	overflow-y: auto;
	z-index: 1
}

.new_box .newBook .img {
	margin: 0 15px;
}

.new_box .new_title {
	margin-bottom: 20px;
}

.titleText {
	padding: 7px 20px 0;
	height: 25px;
	line-height: 25px;
	overflow: hidden;
}

.titleText a {
	color: #000;
	font-size: 12px;
}

.newBook .author {
	padding: 0 20px;
	height: 24px;
	line-height: 24px;
	overflow: hidden;
	color: #aaa;
}

.newBook .price {
	padding-left: 20px;
	line-height: 16px;
	overflow: hidden;
	font-family: "Arial";
	font-size: 14px;
	position: relative;
	height: 36px;
}

.newBook .price .rob {
	color: #c30;
	float: left;
	overflow: hidden;
	font-weight: bold;
	margin-right: 12px;
}

.newBook .price .price_r {
	color: #aaa;
	text-decoration: line-through;
	float: left;
	overflow: hidden;
}

.new_bookList {
	display: flex;
	justify-content: space-between;
}

.m-fixedBar {
	position: fixed;
	top: 220px;
	right: 10px;
	z-index: 999;
	width: 81px;
	padding: 0 5px;
	background: #fff;
	-webkit-box-shadow: 0 0 18px rgba(0, 0, 0, .1);
	box-shadow: 0 0 18px rgba(0, 0, 0, .1);
}

.m-fixedBar li {
	padding: 10px;
	font-size: 12px;
	text-align: center;
	border-bottom: 1px solid #e7e7e7;
	cursor: pointer;
	position: relative;
}

.m-icons-service-fixed {
	width: 30px;
	height: 30px;
	background-position: 0 -1628px;
}

.m-fixedBar .fixed-pop {
	position: absolute;
	left: -144px;
	top: 0;
	display: none;
	padding-right: 20px;
}

.m-icons {
	display: inline-block;
	background-image:
		url(https://shop.io.mi-img.com/static/h5/static3/media/yp-icons.2bf57ccf.png);
}

.m-fixedBar .fixed-service-pop {
	width: 230px;
	left: -244px;
}

.m-icons-service-fixed-active {
	width: 30px;
	height: 30px;
	background-position: 0 -1594px;
}

.m-icons-download {
	width: 30px;
	height: 30px;
	background-position: 0 -1254px;
}

.m-fixedBar .fixed-down-pop {
	width: 130px;
	overflow: hidden;
}

.m-icons-gift {
	width: 30px;
	height: 30px;
	background-position: 0 -778px;
}

.m-fixedBar .fixed-gift-pop {
	height: 328px;
	overflow: hidden;
	left: -226px;
}

.m-fixedBar .pop-inner {
	padding: 10px;
	border: 1px solid #dfdfdf;
	background: #fff;
}

.m-fixedBar .fixed-pop .m-icons {
	position: absolute;
	right: 15px;
	top: 15px;
}

.m-icons-arrow-right {
	width: 6px;
	height: 12px;
	background-position: 0 -38px;
}

.m-icons-wx-chat {
	width: 30px;
	height: 30px;
	background-position: 0 -982px;
}

.m-fixedBar .fixed-wx-pop {
	width: 210px;
	left: -224px;
}

li, ol, ul {
	list-style: none;
}

.m-icons-top {
	width: 30px;
	height: 30px;
	background-position: 0 -1288px;
}

.m-fixedBar .text {
	margin: 0
}

.m-fixedBar ul {
	margin-bottom: 0
}

footer {
	height: 100px;
}
.site-item {
    position: relative;
    margin-left: 5px;
    text-align: center;
}
.fr {
    float: right;
}
.m-user {
    display: block;
    width: 70px;
    padding-left: 30px;
    padding-right: 20px;
    overflow: hidden;
    position: relative;
    -o-text-overflow: ellipsis;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.m-user {
    height: 48px;
    line-height: 48px;
}
.h-icons {
    position: absolute;
}
.m-icons-user-active {
    width: 30px;
    height: 30px;
    background-position: 0 -710px;
}
.m-icons {
    display: inline-block;
    background-image: url(https://shop.io.mi-img.com/static/h5/static3/media/yp-icons.2bf57ccf.png);
}
.m-username {
    margin-left: 10px;
}
.h-down-icon {
    top: 10px;
    right: 0;
}
.h-icons {
    position: absolute;
}
.m-icons-dropdown {
    width: 30px;
    height: 30px;
    background-position: 0 -1662px;
}
.userhide{
	display:none
}
.h-user-icon {
    top: 8px;
    left: 0;
}
.m-safe-anchor{
	display:flex;
	vertical-align: middle;
	align-items: center;
}
.m-login-info a{
	text-decoration: none;
}
.site-item-nav.hidden {
    height: 0;
    opacity: 0;
}
.m-user-con .site-item-nav {
    width: 100px;
    left: 15px;
}
.site-item-nav {
    position: absolute;
    left: 0;
    top: 48px;
    height: 0;
    opacity: 0;
    display: block;
    overflow: hidden;
    -webkit-box-shadow: 0 3px 28px rgba(0,0,0,.1);
    box-shadow: 0 3px 28px rgba(0,0,0,.1);
    -webkit-transition: all .3s cubic-bezier(0,1,.5,1);
    -o-transition: all .3s cubic-bezier(0,1,.5,1);
    transition: all .3s cubic-bezier(0,1,.5,1);
    background: #fff;
}
.hidden, .hide {
    display: none;
}
.site-nav {
    background: #fff;
}
.site-nav li a {
    display: block;
    font-size: 14px;
    color: #666;
}
.site-item-nav.show {
    
    opacity: 1;
}
.m-login-info .show{
	height:240px;
}
.nav-details{
	color:#333333
}
.nav-details ul{
	display:flex;
	flex-wrap: wrap;
	
}
.nav-details ul li{
	width:25%;
	cursor:pointer;
}
.nav-details ul li .smallimg{
	width:40px;
	height:40px;
	margin-right:10px;
}
.nav-details ul li>span{
	color:#666666;
	font-size:14px;
}
</style>
</head>
<body>
	<header>
		<div class="headerCenter">
			<div class=" login">
				<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
			</div>
			<div class="fr site-item m-user-con userhide">
				<div class="m-login-info">
					<a href="personCenter.jsp" class="m-safe-anchor" data-src="/personal-center/orders" data-target="_blank">
						<span class="m-icons m-icons-user-active  h-user-icon" data-src="" href=""
						style="background: ./images/user.png center center/100% no-repeat; border-radius: 50%;"></span>
						<span class="m-username">丑丑小怪物</span>
						<span class="m-icons m-icons-dropdown  h-down-icon" data-src="" href=""></span>
					</a>
					<div class="site-item-nav hidden">
						<ul class="site-nav user-nav">
							<li><a rel="nofollow" data-target="_blank"
								data-src="/personal-center/orders" href="#"
								class="m-safe-anchor">我的订单</a></li>
							<li><a rel="nofollow" data-target="_blank"
								data-src="//app.youpin.mi.com/r/afterServiceList" href="#"
								class="m-safe-anchor">退款/售后</a></li>
							<li><a rel="nofollow" data-target="_blank"
								data-src="/personal-center/assets" href="#"
								class="m-safe-anchor">我的资产</a></li>
							<li><a rel="nofollow" data-target="_blank"
								data-src="/personal-center/collections" href="#"
								class="m-safe-anchor">我的收藏</a></li>
							<li><a rel="nofollow" data-target="_blank"
								data-src="/personal-center/address" href="#"
								class="m-safe-anchor">地址管理</a></li>
							<li><a rel="nofollow" href="javascript:;">退出登录</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</header>
	<div class="content_center">
		<div class="clear">
			<div class="search_box">
				<div class="search">
					<span class="glyphicon glyphicon-search"></span> <input type="text">
				</div>
				<span class="iconfont icon-icon-test search_font"></span>
			</div>
		</div>


		<div class="top_box">
			<div class="directory">
				<ul>
					<!-- <li><span>有书推荐</span></li>
					<li>有书推荐</li>
					<li>有书推荐</li> -->
				</ul>
				<div class="nav-details hide">
					<ul>
						<li>
							<img src="./images/28504153-1_l_3.jpg" alt="" class="smallimg">
							<span>yingyu</span>
						</li>
					</ul>
				</div>

			</div>
			<div class="ads">
				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img
								src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
								alt="First slide">
						</div>
						<div class="item">
							<img
								src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
								alt="Second slide">
						</div>
						<div class="item">
							<img
								src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
								alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" href="#myCarousel" role="button"
						data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a class="right carousel-control" href="#myCarousel" role="button"
						data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<div class="new_box">
			<div class="new_title">
				<h2>新书上架</h2>
			</div>
			<div class="new_bookList">
				<div data-ISBN="0000001" class="book">
					<div class="newBook clearfix">
						<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
				<div>
					<div class="newBook clearfix">
						<img src="./images/28506743-1_l_8.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
				<div>
					<div class="newBook clearfix">
						<img src="./images/28519012-1_l_9.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
				<div>
					<div class="newBook clearfix">
						<img src="./images/28523273-1_l_2.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
				<div>
					<div class="newBook clearfix">
						<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
				<div>
					<div class="newBook clearfix">
						<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
						<p class="titleText">
							<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
								href="http://product.dangdang.com/28504153.html" target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
						<p class="author">路遥</p>
						<p class="price">
							<span class="rob"> <span class="sign">¥</span> <span
								class="num">25</span> <span class="tail">.80</span>
							</span> <span class="price_r"> <span class="sign">¥</span> <span
								class="num">45</span> <span class="tail">.00</span>
							</span>
						</p>
						</p>
					</div>
				</div>
			</div>

		</div>
		<div>
			<h2>推荐专区</h2>
			<ul class="nav nav-tabs">
				<li class="active"><a href="#panel-901172" data-toggle="tab">主打</a></li>
				<li><a href="#panel-392690" data-toggle="tab">童书</a></li>
				<li><a href="#" data-toggle="tab">文艺</a></li>
				<li><a href="#" data-toggle="tab">小说</a></li>
				<li><a href="#" data-toggle="tab">社科</a></li>
				<li><a href="#" data-toggle="tab">生活</a></li>
			</ul>
			<div class="tab-content">
				<div class="tab-pane active" id="panel-901172">
					<div class="new_bookList">
						<div class="newBook clearfix">
							<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
									href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
							<p class="author">路遥</p>
							<p class="price">
								<span class="rob"> <span class="sign">¥</span> <span
									class="num">25</span> <span class="tail">.80</span>
								</span> <span class="price_r"> <span class="sign">¥</span> <span
									class="num">45</span> <span class="tail">.00</span>
								</span>
							</p>
							</p>
						</div>
						<div class="newBook clearfix">
							<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）"
									href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
							<p class="author">路遥</p>
							<p class="price">
								<span class="rob"> <span class="sign">¥</span> <span
									class="num">25</span> <span class="tail">.80</span>
								</span> <span class="price_r"> <span class="sign">¥</span> <span
									class="num">45</span> <span class="tail">.00</span>
								</span>
							</p>
							</p>
						</div>

					</div>
				</div>
				<div class="tab-pane" id="panel-392690">
					<p>Howdy, I'm in Section 2.</p>
				</div>
			</div>
		</div>
	</div>
	<div class="m-fixedBar">
		<ul class="fixed-nav">
			<li><a class="m-icons m-icons- m-icons-service-fixed"
				data-src="" href="javascript:;"></a>
				<p class="text">购物车</p></li>
			<li><a class="m-icons m-icons- m-icons-download" data-src=""
				href="javascript:;"></a>
				<p class="text">个人中心</p></li>

			<li><a class="m-icons m-icons- m-icons-wx-chat" data-src=""
				href="javascript:;"></a>
				<p class="text">关注微信</p>
				<div class="fixed-pop fixed-wx-pop ">
					<div class="pop-inner">
						<img class="qr-code"
							src="https://shop.io.mi-img.com/static/h5/static3/media/wx_code.83208f15.png"
							alt="qr-code">
						<p class="site-info">扫码关注「小米有品」微信服务号，签到积分赢大奖</p>
					</div>
					<a class="m-icons m-icons-arrow-right " data-src=""
						href="javascript:;"></a>
				</div></li>
			<li><a class="m-icons m-icons- m-icons-top" data-src=""
				href="javascript:;"></a>
				<p class="text">回到顶部</p></li>
		</ul>
	</div>

	<footer> </footer>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	
	
	var navDetails = $('.top_box .directory .nav-details')
	var fixedlis = $('.fixed-nav li')
	var book = $('.new_bookList>.book')
	var userbox=$('.m-user-con')
	var loginbox=$('.login')
	var test=[
		{
			firstname:"教育",
			secodename:[
				{
					name:"英语综合教材",
					imgurl:""
				},
				{
					name:"中小学教辅",
					imgurl:""
				}
			]
		},
		{
			firstname:"小说",
			secodename:[
				{
					name:"中国当代小说",
					imgurl:"./images/28504153-1_l_3.jpg"
				},
				{
					name:"四大名著",
					imgurl:""
				}
			]
		},
	]
	window.onload=function(){
		//处理用户登录
		var user=JSON.parse(sessionStorage.getItem("user"))
		if(user){
			userbox.removeClass('userhide')
			loginbox.addClass('userhide')
		}
		$('.m-username').text(user.username||user.userId)
		
		//处理分类
	}
	for(let i=0;i<test.length;i++){
		$('.directory>ul').append("<li data-no="+i+"><span>"+test[i].firstname+"</span></li>")
		console.log(222222)
	}
	var lis = $('.top_box .directory ul li');
	userbox.mouseenter(function(e){
		$('.site-item-nav').removeClass('hidden').addClass('show')
	})
	userbox.mouseleave(function(e){
		$('.site-item-nav').removeClass('show').addClass('hidden')
	}) 
	$('.top_box .directory ul li').mouseenter(function(e) {
		
		navDetails.removeClass('hide')
		var li = e.target
		console.log(li)
		var second=test[$(li).data('no')]
		$('.nav-details>ul').empty()
		for(let i=0;i<second.secodename.length;i++){
			$('.nav-details>ul').append('<li><img src='+second.secodename[i].imgurl+' alt="" class="smallimg"><span>'+second.secodename[i].name+'</span></li>')
		}
		
	})
	$('.directory').mouseleave(function() {
		navDetails.addClass('hide')
	}) 
	fixedlis.mouseenter(function(e) {
		let li = e.target
		$(li.children[2]).addClass("show")
		$('.fixed-nav li fixed-pop')
	})
	fixedlis.mouseleave(function(e) {
		let li = e.target
		console.log(li)
		$(li.children[2]).removeClass("show")
	})
	book.click(function(e) {
		var tar = $(e.target)
		var Isbn = tar.parents('.book').data('isbn')
		/* window.location.href="detail.jsp?isbn="+Isbn */
		$.post('BookDetail', {
			isbn : Isbn
		}, function(data) {

		})
	})
</script>
</html>
