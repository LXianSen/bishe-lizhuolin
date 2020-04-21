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

.zbtj {
    width: 100%;
    overflow: hidden;
    position: relative;
}
.zbtj .head {
    padding-bottom: 13px;
    position: relative;
    color: #863e18;
    font-weight: bold;
    font-family: "Microsoft Yahei";
    line-height: 27px;
    padding-top: 12px;
}
.zbtj .head .tltle {
    font-size: 16px;
    margin:0
}
.zbtj .head .tab_aa {
    height: 30px;
    position: absolute;
    right: 0px;
    top: 13px;
}
.zbtj .head .tab_aa li.on {
    background: #873d1a;
    color: #fff;
}
.zbtj .head .tab_aa li {
    padding: 0px 15px 0;
    height: 30px;
    line-height: 30px;
    float: left;
    color: #873d1a;
    font-size: 14px;
    font-family: 'Microsoft Yahei';
    margin-right: 4px;
    cursor: pointer;
}
.zbtj .tab_content_aa .roll_aa {
}
.zbtj .roll_aa {
    border: 1px solid #e5e5e5;
    border-top-color: #873b19;
    height: 509px;
}
.zbtj .btn_brand_prev {
    width: 16px;
    height: 60px;
    background: url(http://img3.ddimg.cn/00363/book2/book2_lr.png) 0 0 no-repeat;
    position: absolute;
    left: 0;
    top: 50%;
    margin-top: -20px;
    z-index: 2;
    cursor: pointer;
}
.zbtj .btn_brand_next {
    width: 16px;
    height: 60px;
    background: url(http://img3.ddimg.cn/00363/book2/book2_lr.png) -18px 0 no-repeat;
    z-index: 2;
    cursor: pointer;
    position: absolute;
    right: 0;
    top: 50%;
    margin-top: -20px;
}
.zbtj .mix_marquee_tab {
    position: absolute;
    left: 434px;
    top: 525px;
}
.zbtj .over {
    width: 948px;
    overflow: hidden;
    height: 475px;
    position: relative;
}
.zbtj .mix_marquee_tab li.current {
    background-position: 0 0;
}
.zbtj .mix_marquee_tab li {
    float: left;
    width: 10px;
    height: 10px;
    font-size: 0;
    line-height: 10px;
    margin-right: 10px;
    background: url(http://img3.ddimg.cn/00363/book2/book2_dd.png) 0 -20px no-repeat;
    text-indent: -9999px;
    cursor: pointer;
}
ul:after, .fbox:after, .clearfix:after {
    content: ".";
    height: 0;
    display: block;
    clear: both;
    visibility: hidden;
}
.zbtj .list_aa {
    width: 10000px;
    position: absolute;
}
.zbtj .list_aa li {
    overflow: hidden;
}
.zbtj .product_ul {
    padding-top: 20px;
    padding-left: 5px;
    display:flex;
    flex-wrap:wrap;
}
.zbtj .product_ul li {
    width: 150px;
    margin-right: 47px;
    margin-bottom: 16px;
    position: relative;
    overflow: visible;
}
.zbtj .product_ul a.img, .zbtj .product_ul li img {
    width: 150px;
    display: block;
    height: 150px;
}
.zbtj .product_ul a {
    text-decoration: none;
}
.zbtj .product_ul li .name {
    padding: 7px 20px 0;
    height: 36px;
    line-height: 18px;
    overflow: hidden;
    margin:0;
    box-sizing:content-box;
}
.zbtj .product_ul li .price {
    padding-left: 20px;
    height: 24px;
    line-height: 24px;
    overflow: hidden;
    font-family: "Arial";
    font-size: 14px;
}
.zbtj .product_ul li .price .rob {
    color: #c30;
    float: left;
    overflow: hidden;
    font-weight: bold;
    margin-right: 12px;
}
.zbtj .product_ul li .price .price_r {
    color: #aaa;
    text-decoration: line-through;
    float: left;
    overflow: hidden;
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
	
		<!-- 列表切换 -->
		<div>
			<div class="zbtj " id="component_map_id_852861_part_id_6525" name="m852861_pid0_p6525" js="true" itemclass="" action="hover" delay="0" speed="0" rand="0" area="0" barclass="on" updown="1" level="2">
            <div class="head  headzbtj" ddt-area="6525" dd_name="tab头">
                    <h3 class="tltle">主编推荐</h3>
                    <ul class="tab_aa">
                                    <li class="tabh_0  first on" type="bar"><span>阅读</span></li>
                                                        <li class="tabh_1" type="bar"><span>作文</span></li>
                                                                                        <li class="tabh_2" type="bar"><span>工具书</span></li>
                                                                                        <li class="tabh_3" type="bar"><span>竞赛</span></li>
                                                                                        <li class="tabh_4" type="bar"><span>学习方法</span></li>
                                                                                        <li class="tabh_5" type="bar"><span>英语专项</span></li>
                                                                </ul>
         

</div>
                <div class="tab_content_aa tab_content_aazbtj ">
                                                        <div class="content tab_1" type="item" dd_name="阅读" style="display: block;">
                                            <div class="roll_aa " id="mapid_852861_parent_6532_part_" marquee="true" name="m852861_pid6532_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧">
    <ul class="product_ul " id="component_852861__6532_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-688670_1" ddt-pit="1" dd_name="1">
                <a title="让课文遇见小古文 : 朱文君带你这样学语文 : 全2册（《小学生小古文100课》作者、全国语文名师朱文君全新作品！配合部编本语文教材，适用1-6年级小学生。一篇小古文对应一篇课文，高效提升孩子的语文学习能力。）" class="img" href="http://product.dangdang.com/28490179.html" target="_blank"><img src="http://img3m9.ddimg.cn/58/31/28490179-1_l_5.jpg" alt="让课文遇见小古文 : 朱文君带你这样学语文 : 全2册（《小学生小古文100课》作者、全国语文名师朱文君全新作品！配合部编本语文教材，适用1-6年级小学生。一篇小古文对应一篇课文，高效提升孩子的语文学习能力。）"></a><p class="name" ddt-src="28490179"><a title="让课文遇见小古文 : 朱文君带你这样学语文 : 全2册（《小学生小古文100课》作者、全国语文名师朱文君全新作品！配合部编本语文教材，适用1-6年级小学生。一篇小古文对应一篇课文，高效提升孩子的语文学习能力。）" href="http://product.dangdang.com/28490179.html" target="_blank">让课文遇见小古文&nbsp;:&nbsp;朱文君带你这样学语文&nbsp;:&nbsp;全2册（《小学生小古文1</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">40</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">49</span><span class="tail">.80</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-688670_2" ddt-pit="2" dd_name="2">
                <a title="乌丢丢的奇遇 曹文轩推荐儿童文学经典书系 33万多名读者热评！" class="img" href="http://product.dangdang.com/25257593.html" target="_blank"><img src="http://img3m3.ddimg.cn/20/24/25257593-1_l_8.jpg" alt="乌丢丢的奇遇 曹文轩推荐儿童文学经典书系 33万多名读者热评！"></a><p class="name" ddt-src="25257593"><a title="乌丢丢的奇遇 曹文轩推荐儿童文学经典书系 33万多名读者热评！" href="http://product.dangdang.com/25257593.html" target="_blank">乌丢丢的奇遇&nbsp;曹文轩推荐儿童文学经典书系&nbsp;33万多名读者热评！</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">15</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">18</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-688670_3" ddt-pit="3" dd_name="3">
                <a title="小学生必背古诗词75+80首 28万多读者好评，不同印次随机发货!" class="img" href="http://product.dangdang.com/23435948.html" target="_blank"><img src="http://img3m8.ddimg.cn/74/0/23435948-1_l_23.jpg" alt="小学生必背古诗词75+80首 28万多读者好评，不同印次随机发货!"></a><p class="name" ddt-src="23435948"><a title="小学生必背古诗词75+80首 28万多读者好评，不同印次随机发货!" href="http://product.dangdang.com/23435948.html" target="_blank">小学生必背古诗词75+80首&nbsp;28万多读者好评，不同印次随机发货!</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">26</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">28</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-688670_4" ddt-pit="4" dd_name="4">
                <a title="福尔摩斯探案集（中小学新课标必读名著）130000多名读者热评！" class="img" href="http://product.dangdang.com/23453874.html" target="_blank"><img src="http://img3m4.ddimg.cn/81/18/23453874-1_l_4.jpg" alt="福尔摩斯探案集（中小学新课标必读名著）130000多名读者热评！"></a><p class="name" ddt-src="23453874"><a title="福尔摩斯探案集（中小学新课标必读名著）130000多名读者热评！" href="http://product.dangdang.com/23453874.html" target="_blank">福尔摩斯探案集（中小学新课标必读名著）130000多名读者热评！</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">13</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">17</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-688670_5" ddt-pit="5" dd_name="5">
                <a title="数学原来可以这样学（畅销日本300万册，小学生家长必备。让孩子爱上数学的神奇魔法书！随书赠送数学练习簿）" class="img" href="http://product.dangdang.com/23472978.html" target="_blank"><img src="http://img3m8.ddimg.cn/78/30/23472978-1_l_2.jpg" alt="数学原来可以这样学（畅销日本300万册，小学生家长必备。让孩子爱上数学的神奇魔法书！随书赠送数学练习簿）"></a><p class="name" ddt-src="23472978"><a title="数学原来可以这样学（畅销日本300万册，小学生家长必备。让孩子爱上数学的神奇魔法书！随书赠送数学练习簿）" href="http://product.dangdang.com/23472978.html" target="_blank">数学原来可以这样学（畅销日本300万册，小学生家长必备。让孩子爱上</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">32</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-688670_6" ddt-pit="6" dd_name="6">
                <a title="假如给我三天光明（中小学语文新课标必读名著 ）420000多名读者热评！" class="img" href="http://product.dangdang.com/22800646.html" target="_blank"><img src="http://img3m6.ddimg.cn/55/25/22800646-1_l_30.jpg" alt="假如给我三天光明（中小学语文新课标必读名著 ）420000多名读者热评！"></a><p class="name" ddt-src="22800646"><a title="假如给我三天光明（中小学语文新课标必读名著 ）420000多名读者热评！" href="http://product.dangdang.com/22800646.html" target="_blank">假如给我三天光明（中小学语文新课标必读名著&nbsp;）420000多名读者热评</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">11</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">14</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-688670_7" ddt-pit="7" dd_name="7">
                <a title="红星照耀中国（青少版）人民文学出版社" class="img" href="http://product.dangdang.com/25100818.html" target="_blank"><img src="http://img3m8.ddimg.cn/61/18/25100818-1_l_3.jpg" alt="红星照耀中国（青少版）人民文学出版社"></a><p class="name" ddt-src="25100818"><a title="红星照耀中国（青少版）人民文学出版社" href="http://product.dangdang.com/25100818.html" target="_blank">红星照耀中国（青少版）人民文学出版社</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">28</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">33</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-688670_8" ddt-pit="8" dd_name="8">
                <a title="中国传统节日故事 小学语文课外读物 （收录专家解读节日和习俗，包含春节、元宵节、清明节、等所有重大节日）" class="img" href="http://product.dangdang.com/25580664.html" target="_blank"><img src="http://img3m4.ddimg.cn/54/11/25580664-1_l_3.jpg" alt="中国传统节日故事 小学语文课外读物 （收录专家解读节日和习俗，包含春节、元宵节、清明节、等所有重大节日）"></a><p class="name" ddt-src="25580664"><a title="中国传统节日故事 小学语文课外读物 （收录专家解读节日和习俗，包含春节、元宵节、清明节、等所有重大节日）" href="http://product.dangdang.com/25580664.html" target="_blank">中国传统节日故事&nbsp;小学语文课外读物&nbsp;（收录专家解读节日和习俗，包含</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">19</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-688670_9" ddt-pit="9" dd_name="9">
                <a title="中国神话故事（注音美绘本）全国著名语文特级教师 窦桂梅推荐 小学生语文新课标必读书系 爱上阅读系列" class="img" href="http://product.dangdang.com/25257603.html" target="_blank"><img src="http://img3m3.ddimg.cn/30/34/25257603-1_l_4.jpg" alt="中国神话故事（注音美绘本）全国著名语文特级教师 窦桂梅推荐 小学生语文新课标必读书系 爱上阅读系列"></a><p class="name" ddt-src="25257603"><a title="中国神话故事（注音美绘本）全国著名语文特级教师 窦桂梅推荐 小学生语文新课标必读书系 爱上阅读系列" href="http://product.dangdang.com/25257603.html" target="_blank">中国神话故事（注音美绘本）全国著名语文特级教师&nbsp;窦桂梅推荐&nbsp;小学生</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-688670_10" ddt-pit="10" dd_name="10">
                <a title="哈利·波特与死亡圣器 （教育部统编《语文》教材推荐版，收入温儒敏撰写的导读，外国儿童文学经典）" class="img" href="http://product.dangdang.com/26317781.html" target="_blank"><img src="http://img3m1.ddimg.cn/17/14/26317781-1_l_1.jpg" alt="哈利·波特与死亡圣器 （教育部统编《语文》教材推荐版，收入温儒敏撰写的导读，外国儿童文学经典）"></a><p class="name" ddt-src="26317781"><a title="哈利·波特与死亡圣器 （教育部统编《语文》教材推荐版，收入温儒敏撰写的导读，外国儿童文学经典）" href="http://product.dangdang.com/26317781.html" target="_blank">哈利·波特与死亡圣器&nbsp;（教育部统编《语文》教材推荐版，收入温儒敏</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">69</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">69</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6532_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726945_1" ddt-pit="1" dd_name="1">
                <a title="唐诗三百首 小学生 成长必读 绘本 注音版" class="img" href="http://product.dangdang.com/23993774.html" target="_blank"><img src="http://img3m4.ddimg.cn/35/14/23993774-1_l_6.jpg" alt="唐诗三百首 小学生 成长必读 绘本 注音版"></a><p class="name" ddt-src="23993774"><a title="唐诗三百首 小学生 成长必读 绘本 注音版" href="http://product.dangdang.com/23993774.html" target="_blank">唐诗三百首&nbsp;小学生&nbsp;成长必读&nbsp;绘本&nbsp;注音版</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">30</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">40</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726945_2" ddt-pit="2" dd_name="2">
                <a title="呐喊（“教育部统编《语文》推荐阅读丛书”）" class="img" href="http://product.dangdang.com/25267269.html" target="_blank"><img src="http://img3m9.ddimg.cn/93/6/25267269-1_l_3.jpg" alt="呐喊（“教育部统编《语文》推荐阅读丛书”）"></a><p class="name" ddt-src="25267269"><a title="呐喊（“教育部统编《语文》推荐阅读丛书”）" href="http://product.dangdang.com/25267269.html" target="_blank">呐喊（“教育部统编《语文》推荐阅读丛书”）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">18</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">20</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726945_3" ddt-pit="3" dd_name="3">
                <a title="统编版快乐读书吧（六年级上）指定阅读 小英雄雨来 曹文轩推荐儿童文学经典书系 六年级必读书目 4万多名读者热评！" class="img" href="http://product.dangdang.com/25257598.html" target="_blank"><img src="http://img3m8.ddimg.cn/25/29/25257598-1_l_3.jpg" alt="统编版快乐读书吧（六年级上）指定阅读 小英雄雨来 曹文轩推荐儿童文学经典书系 六年级必读书目 4万多名读者热评！"></a><p class="name" ddt-src="25257598"><a title="统编版快乐读书吧（六年级上）指定阅读 小英雄雨来 曹文轩推荐儿童文学经典书系 六年级必读书目 4万多名读者热评！" href="http://product.dangdang.com/25257598.html" target="_blank">统编版快乐读书吧（六年级上）指定阅读&nbsp;小英雄雨来&nbsp;曹文轩推荐儿童文</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">14</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">18</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726945_4" ddt-pit="4" dd_name="4">
                <a title="中国历史名人传精读（全6册）新老版本随机发货中国名人传记速读 中小学生历史课外读物 语文阅读 名师点评" class="img" href="http://product.dangdang.com/23924193.html" target="_blank"><img src="http://img3m3.ddimg.cn/51/30/23924193-1_l_14.jpg" alt="中国历史名人传精读（全6册）新老版本随机发货中国名人传记速读 中小学生历史课外读物 语文阅读 名师点评"></a><p class="name" ddt-src="23924193"><a title="中国历史名人传精读（全6册）新老版本随机发货中国名人传记速读 中小学生历史课外读物 语文阅读 名师点评" href="http://product.dangdang.com/23924193.html" target="_blank">中国历史名人传精读（全6册）新老版本随机发货中国名人传记速读&nbsp;中小</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">123</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">154</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726945_5" ddt-pit="5" dd_name="5">
                <a title="中国民间故事（教育部统编《语文》快乐读书吧推荐阅读丛书）" class="img" href="http://product.dangdang.com/25112479.html" target="_blank"><img src="http://img3m9.ddimg.cn/40/24/25112479-1_l_11.jpg" alt="中国民间故事（教育部统编《语文》快乐读书吧推荐阅读丛书）"></a><p class="name" ddt-src="25112479"><a title="中国民间故事（教育部统编《语文》快乐读书吧推荐阅读丛书）" href="http://product.dangdang.com/25112479.html" target="_blank">中国民间故事（教育部统编《语文》快乐读书吧推荐阅读丛书）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">14</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">24</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726945_6" ddt-pit="6" dd_name="6">
                <a title="细菌世界历险记 又名:灰尘的旅行 统编小学语文教材四年级下册快乐读书吧推荐必读书目 菌儿自传 高士其科普童话 150000多名读者热评！" class="img" href="http://product.dangdang.com/24040247.html" target="_blank"><img src="http://img3m7.ddimg.cn/77/15/24040247-1_l_5.jpg" alt="细菌世界历险记 又名:灰尘的旅行 统编小学语文教材四年级下册快乐读书吧推荐必读书目 菌儿自传 高士其科普童话 150000多名读者热评！"></a><p class="name" ddt-src="24040247"><a title="细菌世界历险记 又名:灰尘的旅行 统编小学语文教材四年级下册快乐读书吧推荐必读书目 菌儿自传 高士其科普童话 150000多名读者热评！" href="http://product.dangdang.com/24040247.html" target="_blank">细菌世界历险记&nbsp;又名:灰尘的旅行&nbsp;统编小学语文教材四年级下册快乐读</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">18</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726945_7" ddt-pit="7" dd_name="7">
                <a title="傅雷家书 部编本语文教材八年级下册指定阅读" class="img" href="http://product.dangdang.com/25187947.html" target="_blank"><img src="http://img3m7.ddimg.cn/70/12/25187947-1_l_9.jpg" alt="傅雷家书 部编本语文教材八年级下册指定阅读"></a><p class="name" ddt-src="25187947"><a title="傅雷家书 部编本语文教材八年级下册指定阅读" href="http://product.dangdang.com/25187947.html" target="_blank">傅雷家书&nbsp;部编本语文教材八年级下册指定阅读</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">28</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">35</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726945_8" ddt-pit="8" dd_name="8">
                <a title="朝花夕拾（新课标·部编本教材推荐阅读  七年级上）" class="img" href="http://product.dangdang.com/23643238.html" target="_blank"><img src="http://img3m8.ddimg.cn/58/16/23643238-1_l_1.jpg" alt="朝花夕拾（新课标·部编本教材推荐阅读  七年级上）"></a><p class="name" ddt-src="23643238"><a title="朝花夕拾（新课标·部编本教材推荐阅读  七年级上）" href="http://product.dangdang.com/23643238.html" target="_blank">朝花夕拾（新课标·部编本教材推荐阅读&nbsp;&nbsp;七年级上）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">15</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">18</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726945_9" ddt-pit="9" dd_name="9">
                <a title="八十天环游地球（中小学新课标必读名著）100000多名读者热评！" class="img" href="http://product.dangdang.com/23181516.html" target="_blank"><img src="http://img3m6.ddimg.cn/72/17/23181516-1_l_8.jpg" alt="八十天环游地球（中小学新课标必读名著）100000多名读者热评！"></a><p class="name" ddt-src="23181516"><a title="八十天环游地球（中小学新课标必读名著）100000多名读者热评！" href="http://product.dangdang.com/23181516.html" target="_blank">八十天环游地球（中小学新课标必读名著）100000多名读者热评！</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">11</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">15</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726945_10" ddt-pit="10" dd_name="10">
                <a title="笠翁对韵 中华经典儿童启蒙  注音+注释+典故 每日诵读十分钟 打好国学基本功（近27万读者热评！）" class="img" href="http://product.dangdang.com/23630257.html" target="_blank"><img src="http://img3m7.ddimg.cn/46/22/23630257-1_l_15.jpg" alt="笠翁对韵 中华经典儿童启蒙  注音+注释+典故 每日诵读十分钟 打好国学基本功（近27万读者热评！）"></a><p class="name" ddt-src="23630257"><a title="笠翁对韵 中华经典儿童启蒙  注音+注释+典故 每日诵读十分钟 打好国学基本功（近27万读者热评！）" href="http://product.dangdang.com/23630257.html" target="_blank">笠翁对韵&nbsp;中华经典儿童启蒙&nbsp;&nbsp;注音+注释+典故&nbsp;每日诵读十分钟&nbsp;打好国</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">14</span><span class="tail">.70</span></span><span class="price_r"><span class="sign">¥</span><span class="num">18</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>
                                                                        <div class="content tab_2" type="item" dd_name="作文" style="display: none;">
                                            <div class="roll_aa " id="mapid_852861_parent_6534_part_" marquee="true" name="m852861_pid6534_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1" style="">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over" style="">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧" style="">
    <ul class="product_ul " id="component_852861__6534_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726948_1" ddt-pit="1" dd_name="1">
                <a title="最新小学生获奖作文1000篇 超43万读者热评 小学生作文书优秀分类小考满分作文素材书，一本搞定三四五六年级作文所有问题，让孩子轻松走出作文困境，波波乌作文" class="img" href="http://product.dangdang.com/20998892.html" target="_blank"><img src="http://img3m2.ddimg.cn/2/23/20998892-1_l_32.jpg" alt="最新小学生获奖作文1000篇 超43万读者热评 小学生作文书优秀分类小考满分作文素材书，一本搞定三四五六年级作文所有问题，让孩子轻松走出作文困境，波波乌作文"></a><p class="name" ddt-src="20998892"><a title="最新小学生获奖作文1000篇 超43万读者热评 小学生作文书优秀分类小考满分作文素材书，一本搞定三四五六年级作文所有问题，让孩子轻松走出作文困境，波波乌作文" href="http://product.dangdang.com/20998892.html" target="_blank">最新小学生获奖作文1000篇&nbsp;超43万读者热评&nbsp;小学生作文书优秀分类小考</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">26</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726948_2" ddt-pit="2" dd_name="2">
                <a title="小学生作文 看图写话就三步—从20字到200字（一年级）超过65000多名读者热评！" class="img" href="http://product.dangdang.com/23676449.html" target="_blank"><img src="http://img3m9.ddimg.cn/5/1/23676449-1_l_3.jpg" alt="小学生作文 看图写话就三步—从20字到200字（一年级）超过65000多名读者热评！"></a><p class="name" ddt-src="23676449"><a title="小学生作文 看图写话就三步—从20字到200字（一年级）超过65000多名读者热评！" href="http://product.dangdang.com/23676449.html" target="_blank">小学生作文&nbsp;看图写话就三步—从20字到200字（一年级）超过65000多名</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">25</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">28</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726948_3" ddt-pit="3" dd_name="3">
                <a title="2019年中考满分作文特辑 畅销14年 备战2020年中考 名师预测2020年考题 随书附赠：提分王 中学生时事热点素材" class="img" href="http://product.dangdang.com/27900769.html" target="_blank"><img src="http://img3m9.ddimg.cn/94/31/27900769-1_l_3.jpg" alt="2019年中考满分作文特辑 畅销14年 备战2020年中考 名师预测2020年考题 随书附赠：提分王 中学生时事热点素材"></a><p class="name" ddt-src="27900769"><a title="2019年中考满分作文特辑 畅销14年 备战2020年中考 名师预测2020年考题 随书附赠：提分王 中学生时事热点素材" href="http://product.dangdang.com/27900769.html" target="_blank">2019年中考满分作文特辑&nbsp;畅销14年&nbsp;备战2020年中考&nbsp;名师预测2020年考</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">32</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726948_4" ddt-pit="4" dd_name="4">
                <a title="思维导图作文：看得见的写作" class="img" href="http://product.dangdang.com/28485182.html" target="_blank"><img src="http://img3m2.ddimg.cn/11/29/28485182-1_l_2.jpg" alt="思维导图作文：看得见的写作"></a><p class="name" ddt-src="28485182"><a title="思维导图作文：看得见的写作" href="http://product.dangdang.com/28485182.html" target="_blank">思维导图作文：看得见的写作</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">43</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726948_5" ddt-pit="5" dd_name="5">
                <a title="作文课（阎连科、周国平、刘瑜、邢立达及多所知名小学语文老师诚挚推荐）" class="img" href="http://product.dangdang.com/28472783.html" target="_blank"><img src="http://img3m3.ddimg.cn/86/25/28472783-1_l_6.jpg" alt="作文课（阎连科、周国平、刘瑜、邢立达及多所知名小学语文老师诚挚推荐）"></a><p class="name" ddt-src="28472783"><a title="作文课（阎连科、周国平、刘瑜、邢立达及多所知名小学语文老师诚挚推荐）" href="http://product.dangdang.com/28472783.html" target="_blank">作文课（阎连科、周国平、刘瑜、邢立达及多所知名小学语文老师诚挚推</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726948_6" ddt-pit="6" dd_name="6">
                <a title="黄冈作文书一二年级看图写话训练注音版 小学生看图写话分三步（套装全2册）" class="img" href="http://product.dangdang.com/27874374.html" target="_blank"><img src="http://img3m4.ddimg.cn/33/17/27874374-1_l_2.jpg" alt="黄冈作文书一二年级看图写话训练注音版 小学生看图写话分三步（套装全2册）"></a><p class="name" ddt-src="27874374"><a title="黄冈作文书一二年级看图写话训练注音版 小学生看图写话分三步（套装全2册）" href="http://product.dangdang.com/27874374.html" target="_blank">黄冈作文书一二年级看图写话训练注音版&nbsp;小学生看图写话分三步（套装</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">37</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">37</span><span class="tail">.60</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726948_7" ddt-pit="7" dd_name="7">
                <a title="小学生作文  作文九问  跟特级教师蒋军晶学写作妙招 基础篇+实战篇（套装共2册）当当超11000多名读者热评！" class="img" href="http://product.dangdang.com/25063617.html" target="_blank"><img src="http://img3m7.ddimg.cn/84/2/25063617-1_l_3.jpg" alt="小学生作文  作文九问  跟特级教师蒋军晶学写作妙招 基础篇+实战篇（套装共2册）当当超11000多名读者热评！"></a><p class="name" ddt-src="25063617"><a title="小学生作文  作文九问  跟特级教师蒋军晶学写作妙招 基础篇+实战篇（套装共2册）当当超11000多名读者热评！" href="http://product.dangdang.com/25063617.html" target="_blank">小学生作文&nbsp;&nbsp;作文九问&nbsp;&nbsp;跟特级教师蒋军晶学写作妙招&nbsp;基础篇+实战篇（</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">79</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">79</span><span class="tail">.60</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726948_8" ddt-pit="8" dd_name="8">
                <a title="小学生作文高分妙招超人气花生酥的30堂作文课（独家赠送作文本，赠完为止）" class="img" href="http://product.dangdang.com/28480652.html" target="_blank"><img src="http://img3m2.ddimg.cn/35/13/28480652-1_l_12.jpg" alt="小学生作文高分妙招超人气花生酥的30堂作文课（独家赠送作文本，赠完为止）"></a><p class="name" ddt-src="28480652"><a title="小学生作文高分妙招超人气花生酥的30堂作文课（独家赠送作文本，赠完为止）" href="http://product.dangdang.com/28480652.html" target="_blank">小学生作文高分妙招超人气花生酥的30堂作文课（独家赠送作文本，赠完</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">42</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">49</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726948_9" ddt-pit="9" dd_name="9">
                <a title="小学生作文套装共4册 哇！作文真简单 小学三四五六年级作文辅导书 当当网全国独家销售 超11万多名读者热评 附赠75节作文动画技法课 优秀满分分类好词好句好段作文 开心作文" class="img" href="http://product.dangdang.com/23979398.html" target="_blank"><img src="http://img3m8.ddimg.cn/14/31/23979398-1_l_44.jpg" alt="小学生作文套装共4册 哇！作文真简单 小学三四五六年级作文辅导书 当当网全国独家销售 超11万多名读者热评 附赠75节作文动画技法课 优秀满分分类好词好句好段作文 开心作文"></a><p class="name" ddt-src="23979398"><a title="小学生作文套装共4册 哇！作文真简单 小学三四五六年级作文辅导书 当当网全国独家销售 超11万多名读者热评 附赠75节作文动画技法课 优秀满分分类好词好句好段作文 开心作文" href="http://product.dangdang.com/23979398.html" target="_blank">小学生作文套装共4册&nbsp;哇！作文真简单&nbsp;小学三四五六年级作文辅导书&nbsp;当</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">73</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">91</span><span class="tail">.20</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726948_10" ddt-pit="10" dd_name="10">
                <a title="我今天写什么日记" class="img" href="http://product.dangdang.com/23457513.html" target="_blank"><img src="http://img3m3.ddimg.cn/57/31/23457513-1_l_1.jpg" alt="我今天写什么日记"></a><p class="name" ddt-src="23457513"><a title="我今天写什么日记" href="http://product.dangdang.com/23457513.html" target="_blank">我今天写什么日记</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">32</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6534_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726949_1" ddt-pit="1" dd_name="1">
                <a title="最新中学生优秀作文1000篇 初中生作文 初一二三年级满分获奖分类作文 常见作文素材一应俱全 一本书搞定所有七八九年级作文问题 波波乌作文" class="img" href="http://product.dangdang.com/20998885.html" target="_blank"><img src="http://img3m5.ddimg.cn/94/16/20998885-1_l_29.jpg" alt="最新中学生优秀作文1000篇 初中生作文 初一二三年级满分获奖分类作文 常见作文素材一应俱全 一本书搞定所有七八九年级作文问题 波波乌作文"></a><p class="name" ddt-src="20998885"><a title="最新中学生优秀作文1000篇 初中生作文 初一二三年级满分获奖分类作文 常见作文素材一应俱全 一本书搞定所有七八九年级作文问题 波波乌作文" href="http://product.dangdang.com/20998885.html" target="_blank">最新中学生优秀作文1000篇&nbsp;初中生作文&nbsp;初一二三年级满分获奖分类作文</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">28</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726949_2" ddt-pit="2" dd_name="2">
                <a title="小学生作文 看图写话就三步—从20字到200字（二年级）超43000多名读者热评!" class="img" href="http://product.dangdang.com/23676448.html" target="_blank"><img src="http://img3m8.ddimg.cn/4/0/23676448-1_l_1.jpg" alt="小学生作文 看图写话就三步—从20字到200字（二年级）超43000多名读者热评!"></a><p class="name" ddt-src="23676448"><a title="小学生作文 看图写话就三步—从20字到200字（二年级）超43000多名读者热评!" href="http://product.dangdang.com/23676448.html" target="_blank">小学生作文&nbsp;看图写话就三步—从20字到200字（二年级）超43000多名读</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">25</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">28</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726949_3" ddt-pit="3" dd_name="3">
                <a title="意林作文素材版合订本总第52卷（19年07期-09期）" class="img" href="http://product.dangdang.com/26925125.html" target="_blank"><img src="http://img3m5.ddimg.cn/95/3/26925125-1_l_2.jpg" alt="意林作文素材版合订本总第52卷（19年07期-09期）"></a><p class="name" ddt-src="26925125"><a title="意林作文素材版合订本总第52卷（19年07期-09期）" href="http://product.dangdang.com/26925125.html" target="_blank">意林作文素材版合订本总第52卷（19年07期-09期）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">16</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">19</span><span class="tail">.90</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726949_4" ddt-pit="4" dd_name="4">
                <a title="中学生作文 初中生满分作文大全5年中考+作文素材+优秀作文600字 （七年级、八年级、九年级适用）真卷辅导 热点题库（套装3册）当当网全国独家销售 开心作文" class="img" href="http://product.dangdang.com/24177583.html" target="_blank"><img src="http://img3m3.ddimg.cn/1/7/24177583-1_l_21.jpg" alt="中学生作文 初中生满分作文大全5年中考+作文素材+优秀作文600字 （七年级、八年级、九年级适用）真卷辅导 热点题库（套装3册）当当网全国独家销售 开心作文"></a><p class="name" ddt-src="24177583"><a title="中学生作文 初中生满分作文大全5年中考+作文素材+优秀作文600字 （七年级、八年级、九年级适用）真卷辅导 热点题库（套装3册）当当网全国独家销售 开心作文" href="http://product.dangdang.com/24177583.html" target="_blank">中学生作文&nbsp;初中生满分作文大全5年中考+作文素材+优秀作文600字&nbsp;（七</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">59</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">74</span><span class="tail">.40</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726949_5" ddt-pit="5" dd_name="5">
                <a title="名家名篇里的写作密码  特级教师张祖庆写给学生的作文童话" class="img" href="http://product.dangdang.com/28478612.html" target="_blank"><img src="http://img3m2.ddimg.cn/74/8/28478612-1_l_3.jpg" alt="名家名篇里的写作密码  特级教师张祖庆写给学生的作文童话"></a><p class="name" ddt-src="28478612"><a title="名家名篇里的写作密码  特级教师张祖庆写给学生的作文童话" href="http://product.dangdang.com/28478612.html" target="_blank">名家名篇里的写作密码&nbsp;&nbsp;特级教师张祖庆写给学生的作文童话</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">116</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">120</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726949_6" ddt-pit="6" dd_name="6">
                <a title="意林体作文素材大全（初中版3）（2019年全新升级版）" class="img" href="http://product.dangdang.com/25192566.html" target="_blank"><img src="http://img3m6.ddimg.cn/36/6/25192566-1_l_6.jpg" alt="意林体作文素材大全（初中版3）（2019年全新升级版）"></a><p class="name" ddt-src="25192566"><a title="意林体作文素材大全（初中版3）（2019年全新升级版）" href="http://product.dangdang.com/25192566.html" target="_blank">意林体作文素材大全（初中版3）（2019年全新升级版）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">33</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">39</span><span class="tail">.90</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726949_7" ddt-pit="7" dd_name="7">
                <a title="初中生满分作文1000篇新 初中七八九年级适用 加厚版 满分优秀获奖作文范文素材书 销量突破300万册 畅销10年 开心作文" class="img" href="http://product.dangdang.com/25239844.html" target="_blank"><img src="http://img3m4.ddimg.cn/91/35/25239844-1_l_15.jpg" alt="初中生满分作文1000篇新 初中七八九年级适用 加厚版 满分优秀获奖作文范文素材书 销量突破300万册 畅销10年 开心作文"></a><p class="name" ddt-src="25239844"><a title="初中生满分作文1000篇新 初中七八九年级适用 加厚版 满分优秀获奖作文范文素材书 销量突破300万册 畅销10年 开心作文" href="http://product.dangdang.com/25239844.html" target="_blank">初中生满分作文1000篇新&nbsp;初中七八九年级适用&nbsp;加厚版&nbsp;满分优秀获奖作</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.80</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726949_8" ddt-pit="8" dd_name="8">
                <a title="名师手把手小学三年级作文辅导大全 50000多名读者热评！" class="img" href="http://product.dangdang.com/23228019.html" target="_blank"><img src="http://img3m9.ddimg.cn/45/11/23228019-1_l_3.jpg" alt="名师手把手小学三年级作文辅导大全 50000多名读者热评！"></a><p class="name" ddt-src="23228019"><a title="名师手把手小学三年级作文辅导大全 50000多名读者热评！" href="http://product.dangdang.com/23228019.html" target="_blank">名师手把手小学三年级作文辅导大全&nbsp;50000多名读者热评！</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">23</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726949_9" ddt-pit="9" dd_name="9">
                <a title="中学生作文好词好句好段 中学生优秀获奖满分作文精选 作文方法辅导 789年级作文素材一应俱全 七八九年级初中生适用 书剑手把手作文" class="img" href="http://product.dangdang.com/25290019.html" target="_blank"><img src="http://img3m9.ddimg.cn/73/1/25290019-1_l_15.jpg" alt="中学生作文好词好句好段 中学生优秀获奖满分作文精选 作文方法辅导 789年级作文素材一应俱全 七八九年级初中生适用 书剑手把手作文"></a><p class="name" ddt-src="25290019"><a title="中学生作文好词好句好段 中学生优秀获奖满分作文精选 作文方法辅导 789年级作文素材一应俱全 七八九年级初中生适用 书剑手把手作文" href="http://product.dangdang.com/25290019.html" target="_blank">中学生作文好词好句好段&nbsp;中学生优秀获奖满分作文精选&nbsp;作文方法辅导&nbsp;7</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">25</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">32</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726949_10" ddt-pit="10" dd_name="10">
                <a title="语文报·9岁爱上写作文（3～4年级）（小学生作文入门与提高，互动式漫画作文辅导书）" class="img" href="http://product.dangdang.com/23316035.html" target="_blank"><img src="http://img3m5.ddimg.cn/50/4/23316035-1_l_5.jpg" alt="语文报·9岁爱上写作文（3～4年级）（小学生作文入门与提高，互动式漫画作文辅导书）"></a><p class="name" ddt-src="23316035"><a title="语文报·9岁爱上写作文（3～4年级）（小学生作文入门与提高，互动式漫画作文辅导书）" href="http://product.dangdang.com/23316035.html" target="_blank">语文报·9岁爱上写作文（3～4年级）（小学生作文入门与提高，互动式</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">15</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">23</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>   
                                                                        <div class="content tab_3" type="item" dd_name="工具书" style="display: none;">
                                            <div class="roll_aa " id="mapid_852861_parent_6536_part_" marquee="true" name="m852861_pid6536_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1" style="">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over" style="">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧" style="">
    <ul class="product_ul " id="component_852861__6536_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726952_1" ddt-pit="1" dd_name="1">
                <a title="成语大词典（彩色本）最新修订版 20多万名读者热评！团购电话4001066666转6" class="img" href="http://product.dangdang.com/22925934.html" target="_blank"><img src="http://img3m4.ddimg.cn/9/31/22925934-1_l_1.jpg" alt="成语大词典（彩色本）最新修订版 20多万名读者热评！团购电话4001066666转6"></a><p class="name" ddt-src="22925934"><a title="成语大词典（彩色本）最新修订版 20多万名读者热评！团购电话4001066666转6" href="http://product.dangdang.com/22925934.html" target="_blank">成语大词典（彩色本）最新修订版&nbsp;20多万名读者热评！团购电话4001066</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">83</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">99</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726952_2" ddt-pit="2" dd_name="2">
                <a title="古汉语常用字字典（第5版）" class="img" href="http://product.dangdang.com/24008779.html" target="_blank"><img src="http://img3m9.ddimg.cn/91/34/24008779-1_l_18.jpg" alt="古汉语常用字字典（第5版）"></a><p class="name" ddt-src="24008779"><a title="古汉语常用字字典（第5版）" href="http://product.dangdang.com/24008779.html" target="_blank">古汉语常用字字典（第5版）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">34</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">39</span><span class="tail">.90</span></span></p><div class="icon_pop"><span style="background: url(http://media2.ddimg.cn/label/search/files/55/31/12011230.jpg?r=18006) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://media2.ddimg.cn/label/search/files/55/31/12011230.jpg?r=18006',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726952_3" ddt-pit="3" dd_name="3">
                <a title="新华成语词典 第2版" class="img" href="http://product.dangdang.com/23711299.html" target="_blank"><img src="http://img3m9.ddimg.cn/7/34/23711299-1_l_2.jpg" alt="新华成语词典 第2版"></a><p class="name" ddt-src="23711299"><a title="新华成语词典 第2版" href="http://product.dangdang.com/23711299.html" target="_blank">新华成语词典&nbsp;第2版</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">53</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">79</span><span class="tail">.90</span></span></p><div class="icon_pop"><span style="background: url(http://media2.ddimg.cn/label/search/files/55/31/12011230.jpg?r=18006) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://media2.ddimg.cn/label/search/files/55/31/12011230.jpg?r=18006',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726952_4" ddt-pit="4" dd_name="4">
                <a title="唐诗宋词鉴赏辞典" class="img" href="http://product.dangdang.com/23823466.html" target="_blank"><img src="http://img3m6.ddimg.cn/7/17/23823466-1_l_9.jpg" alt="唐诗宋词鉴赏辞典"></a><p class="name" ddt-src="23823466"><a title="唐诗宋词鉴赏辞典" href="http://product.dangdang.com/23823466.html" target="_blank">唐诗宋词鉴赏辞典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">36</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">43</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726952_5" ddt-pit="5" dd_name="5">
                <a title="新华大字典（第3版·彩色本）" class="img" href="http://product.dangdang.com/23891816.html" target="_blank"><img src="http://img3m6.ddimg.cn/47/28/23891816-1_l_5.jpg" alt="新华大字典（第3版·彩色本）"></a><p class="name" ddt-src="23891816"><a title="新华大字典（第3版·彩色本）" href="http://product.dangdang.com/23891816.html" target="_blank">新华大字典（第3版·彩色本）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">83</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">99</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726952_6" ddt-pit="6" dd_name="6">
                <a title="现代汉语词典（双色本）商务印书馆国际公司" class="img" href="http://product.dangdang.com/26487579.html" target="_blank"><img src="http://img3m9.ddimg.cn/30/19/26487579-1_l_3.jpg" alt="现代汉语词典（双色本）商务印书馆国际公司"></a><p class="name" ddt-src="26487579"><a title="现代汉语词典（双色本）商务印书馆国际公司" href="http://product.dangdang.com/26487579.html" target="_blank">现代汉语词典（双色本）商务印书馆国际公司</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">76</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">95</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726952_7" ddt-pit="7" dd_name="7">
                <a title="中华成语词典(第3版,单色插图本)" class="img" href="http://product.dangdang.com/23890604.html" target="_blank"><img src="http://img3m4.ddimg.cn/23/0/23890604-1_l_5.jpg" alt="中华成语词典(第3版,单色插图本)"></a><p class="name" ddt-src="23890604"><a title="中华成语词典(第3版,单色插图本)" href="http://product.dangdang.com/23890604.html" target="_blank">中华成语词典(第3版,单色插图本)</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">38</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726952_8" ddt-pit="8" dd_name="8">
                <a title="唐诗鉴赏辞典" class="img" href="http://product.dangdang.com/25287748.html" target="_blank"><img src="http://img3m8.ddimg.cn/79/24/25287748-1_l_5.jpg" alt="唐诗鉴赏辞典"></a><p class="name" ddt-src="25287748"><a title="唐诗鉴赏辞典" href="http://product.dangdang.com/25287748.html" target="_blank">唐诗鉴赏辞典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">73</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">88</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726952_9" ddt-pit="9" dd_name="9">
                <a title="《成语大词典》（最新修订版·双色本）" class="img" href="http://product.dangdang.com/23323324.html" target="_blank"><img src="http://img3m4.ddimg.cn/13/4/23323324-1_l_7.jpg" alt="《成语大词典》（最新修订版·双色本）"></a><p class="name" ddt-src="23323324"><a title="《成语大词典》（最新修订版·双色本）" href="http://product.dangdang.com/23323324.html" target="_blank">《成语大词典》（最新修订版·双色本）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">31</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726952_10" ddt-pit="10" dd_name="10">
                <a title="新华成语大词典" class="img" href="http://product.dangdang.com/23179001.html" target="_blank"><img src="http://img3m1.ddimg.cn/32/18/23179001-1_l_1.jpg" alt="新华成语大词典"></a><p class="name" ddt-src="23179001"><a title="新华成语大词典" href="http://product.dangdang.com/23179001.html" target="_blank">新华成语大词典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">138</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">138</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6536_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726953_1" ddt-pit="1" dd_name="1">
                <a title="宋词鉴赏辞典（新修版）商务印书馆" class="img" href="http://product.dangdang.com/25348052.html" target="_blank"><img src="http://img3m2.ddimg.cn/92/18/25348052-1_l_4.jpg" alt="宋词鉴赏辞典（新修版）商务印书馆"></a><p class="name" ddt-src="25348052"><a title="宋词鉴赏辞典（新修版）商务印书馆" href="http://product.dangdang.com/25348052.html" target="_blank">宋词鉴赏辞典（新修版）商务印书馆</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">73</span><span class="tail">.90</span></span><span class="price_r"><span class="sign">¥</span><span class="num">88</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726953_2" ddt-pit="2" dd_name="2">
                <a title="古汉语常用字字典（单色本）商务印书馆" class="img" href="http://product.dangdang.com/25340929.html" target="_blank"><img src="http://img3m9.ddimg.cn/97/36/25340929-1_l_2.jpg" alt="古汉语常用字字典（单色本）商务印书馆"></a><p class="name" ddt-src="25340929"><a title="古汉语常用字字典（单色本）商务印书馆" href="http://product.dangdang.com/25340929.html" target="_blank">古汉语常用字字典（单色本）商务印书馆</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">30</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726953_3" ddt-pit="3" dd_name="3">
                <a title="新课标教材版古典诗词鉴赏辞典（商务印书馆）" class="img" href="http://product.dangdang.com/25287751.html" target="_blank"><img src="http://img3m1.ddimg.cn/82/27/25287751-1_l_3.jpg" alt="新课标教材版古典诗词鉴赏辞典（商务印书馆）"></a><p class="name" ddt-src="25287751"><a title="新课标教材版古典诗词鉴赏辞典（商务印书馆）" href="http://product.dangdang.com/25287751.html" target="_blank">新课标教材版古典诗词鉴赏辞典（商务印书馆）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">59</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">69</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726953_4" ddt-pit="4" dd_name="4">
                <a title="世界名诗鉴赏大辞典商务印书馆" class="img" href="http://product.dangdang.com/25295931.html" target="_blank"><img src="http://img3m1.ddimg.cn/45/30/25295931-1_l_2.jpg" alt="世界名诗鉴赏大辞典商务印书馆"></a><p class="name" ddt-src="25295931"><a title="世界名诗鉴赏大辞典商务印书馆" href="http://product.dangdang.com/25295931.html" target="_blank">世界名诗鉴赏大辞典商务印书馆</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">95</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">128</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726953_5" ddt-pit="5" dd_name="5">
                <a title="新华大字典（精编本）" class="img" href="http://product.dangdang.com/26487617.html" target="_blank"><img src="http://img3m7.ddimg.cn/68/20/26487617-1_l_4.jpg" alt="新华大字典（精编本）"></a><p class="name" ddt-src="26487617"><a title="新华大字典（精编本）" href="http://product.dangdang.com/26487617.html" target="_blank">新华大字典（精编本）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">26</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">35</span><span class="tail">.80</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726953_6" ddt-pit="6" dd_name="6">
                <a title="元曲鉴赏辞典（新一版）" class="img" href="http://product.dangdang.com/23540932.html" target="_blank"><img src="http://img3m2.ddimg.cn/19/15/23540932-1_l_1.jpg" alt="元曲鉴赏辞典（新一版）"></a><p class="name" ddt-src="23540932"><a title="元曲鉴赏辞典（新一版）" href="http://product.dangdang.com/23540932.html" target="_blank">元曲鉴赏辞典（新一版）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">86</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">96</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726953_7" ddt-pit="7" dd_name="7">
                <a title="新华汉语词典（最新修订版·双色缩印本）" class="img" href="http://product.dangdang.com/27861097.html" target="_blank"><img src="http://img3m7.ddimg.cn/22/23/27861097-1_l_2.jpg" alt="新华汉语词典（最新修订版·双色缩印本）"></a><p class="name" ddt-src="27861097"><a title="新华汉语词典（最新修订版·双色缩印本）" href="http://product.dangdang.com/27861097.html" target="_blank">新华汉语词典（最新修订版·双色缩印本）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">42</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">49</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726953_8" ddt-pit="8" dd_name="8">
                <a title="简化字繁体字异体字对照字典" class="img" href="http://product.dangdang.com/23980005.html" target="_blank"><img src="http://img3m5.ddimg.cn/27/9/23980005-1_l_5.jpg" alt="简化字繁体字异体字对照字典"></a><p class="name" ddt-src="23980005"><a title="简化字繁体字异体字对照字典" href="http://product.dangdang.com/23980005.html" target="_blank">简化字繁体字异体字对照字典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">26</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">29</span><span class="tail">.50</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726953_9" ddt-pit="9" dd_name="9">
                <a title="书法大字典" class="img" href="http://product.dangdang.com/25060367.html" target="_blank"><img src="http://img3m7.ddimg.cn/2/8/25060367-1_l_4.jpg" alt="书法大字典"></a><p class="name" ddt-src="25060367"><a title="书法大字典" href="http://product.dangdang.com/25060367.html" target="_blank">书法大字典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">91</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">108</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726953_10" ddt-pit="10" dd_name="10">
                <a title="古汉语常用字字典（第5版）（缩印本）" class="img" href="http://product.dangdang.com/25198075.html" target="_blank"><img src="http://img3m5.ddimg.cn/1/2/25198075-1_l_1.jpg" alt="古汉语常用字字典（第5版）（缩印本）"></a><p class="name" ddt-src="25198075"><a title="古汉语常用字字典（第5版）（缩印本）" href="http://product.dangdang.com/25198075.html" target="_blank">古汉语常用字字典（第5版）（缩印本）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">17</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>   
                                                                        <div class="content tab_4" type="item" dd_name="竞赛" style="display: none;">
                                            <div class="roll_aa " id="mapid_852861_parent_6538_part_" marquee="true" name="m852861_pid6538_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1" style="">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over" style="">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧" style="">
    <ul class="product_ul " id="component_852861__6538_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726956_1" ddt-pit="1" dd_name="1">
                <a title="高思学校竞赛数学导引 五年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)" class="img" href="http://product.dangdang.com/23425830.html" target="_blank"><img src="http://img3m0.ddimg.cn/54/20/23425830-1_l_7.jpg" alt="高思学校竞赛数学导引 五年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)"></a><p class="name" ddt-src="23425830"><a title="高思学校竞赛数学导引 五年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)" href="http://product.dangdang.com/23425830.html" target="_blank">高思学校竞赛数学导引&nbsp;五年级（详解升级版）(数学思维训练好材料，奥</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">31</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">35</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726956_2" ddt-pit="2" dd_name="2">
                <a title="高思学校竞赛数学导引 四年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)" class="img" href="http://product.dangdang.com/23425829.html" target="_blank"><img src="http://img3m9.ddimg.cn/53/19/23425829-1_l_7.jpg" alt="高思学校竞赛数学导引 四年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)"></a><p class="name" ddt-src="23425829"><a title="高思学校竞赛数学导引 四年级（详解升级版）(数学思维训练好材料，奥数获奖必读书，华罗庚金杯少年数学邀请赛推荐教材)" href="http://product.dangdang.com/23425829.html" target="_blank">高思学校竞赛数学导引&nbsp;四年级（详解升级版）(数学思维训练好材料，奥</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">34</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726956_3" ddt-pit="3" dd_name="3">
                <a title="奥数精讲与测试 五年级 新编" class="img" href="http://product.dangdang.com/25141223.html" target="_blank"><img src="http://img3m3.ddimg.cn/74/19/25141223-1_l_3.jpg" alt="奥数精讲与测试 五年级 新编"></a><p class="name" ddt-src="25141223"><a title="奥数精讲与测试 五年级 新编" href="http://product.dangdang.com/25141223.html" target="_blank">奥数精讲与测试&nbsp;五年级&nbsp;新编</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">33</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">37</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726956_4" ddt-pit="4" dd_name="4">
                <a title="更高更妙的物理--冲刺全国高中物理竞赛  新" class="img" href="http://product.dangdang.com/26512803.html" target="_blank"><img src="http://img3m3.ddimg.cn/9/9/26512803-1_l_3.jpg" alt="更高更妙的物理--冲刺全国高中物理竞赛  新"></a><p class="name" ddt-src="26512803"><a title="更高更妙的物理--冲刺全国高中物理竞赛  新" href="http://product.dangdang.com/26512803.html" target="_blank">更高更妙的物理--冲刺全国高中物理竞赛&nbsp;&nbsp;新</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">51</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">68</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726956_5" ddt-pit="5" dd_name="5">
                <a title="学而思思维训练-数学思维启蒙：小学奥数 二年级数学" class="img" href="http://product.dangdang.com/23475344.html" target="_blank"><img src="http://img3m4.ddimg.cn/68/28/23475344-1_l_8.jpg" alt="学而思思维训练-数学思维启蒙：小学奥数 二年级数学"></a><p class="name" ddt-src="23475344"><a title="学而思思维训练-数学思维启蒙：小学奥数 二年级数学" href="http://product.dangdang.com/23475344.html" target="_blank">学而思思维训练-数学思维启蒙：小学奥数&nbsp;二年级数学</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">18</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">19</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726956_6" ddt-pit="6" dd_name="6">
                <a title="奥数精讲与测试 六年级 新编" class="img" href="http://product.dangdang.com/25141221.html" target="_blank"><img src="http://img3m1.ddimg.cn/72/17/25141221-1_l_3.jpg" alt="奥数精讲与测试 六年级 新编"></a><p class="name" ddt-src="25141221"><a title="奥数精讲与测试 六年级 新编" href="http://product.dangdang.com/25141221.html" target="_blank">奥数精讲与测试&nbsp;六年级&nbsp;新编</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">37</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">42</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726956_7" ddt-pit="7" dd_name="7">
                <a title="小学生数独训练题集1  6200多名读者热评！" class="img" href="http://product.dangdang.com/22786331.html" target="_blank"><img src="http://img3m1.ddimg.cn/95/29/22786331-1_l_7.jpg" alt="小学生数独训练题集1  6200多名读者热评！"></a><p class="name" ddt-src="22786331"><a title="小学生数独训练题集1  6200多名读者热评！" href="http://product.dangdang.com/22786331.html" target="_blank">小学生数独训练题集1&nbsp;&nbsp;6200多名读者热评！</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">19</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726956_8" ddt-pit="8" dd_name="8">
                <a title="奥数精讲与测试 四年级 新编" class="img" href="http://product.dangdang.com/25141222.html" target="_blank"><img src="http://img3m2.ddimg.cn/73/18/25141222-1_l_3.jpg" alt="奥数精讲与测试 四年级 新编"></a><p class="name" ddt-src="25141222"><a title="奥数精讲与测试 四年级 新编" href="http://product.dangdang.com/25141222.html" target="_blank">奥数精讲与测试&nbsp;四年级&nbsp;新编</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">36</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">40</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726956_9" ddt-pit="9" dd_name="9">
                <a title="小学数学竞赛年鉴：MO2018" class="img" href="http://product.dangdang.com/27868089.html" target="_blank"><img src="http://img3m9.ddimg.cn/84/22/27868089-1_l_3.jpg" alt="小学数学竞赛年鉴：MO2018"></a><p class="name" ddt-src="27868089"><a title="小学数学竞赛年鉴：MO2018" href="http://product.dangdang.com/27868089.html" target="_blank">小学数学竞赛年鉴：MO2018</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">72</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">85</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726956_10" ddt-pit="10" dd_name="10">
                <a title="小学数学竞赛年鉴 MO2017" class="img" href="http://product.dangdang.com/25242130.html" target="_blank"><img src="http://img3m0.ddimg.cn/1/27/25242130-1_l_3.jpg" alt="小学数学竞赛年鉴 MO2017"></a><p class="name" ddt-src="25242130"><a title="小学数学竞赛年鉴 MO2017" href="http://product.dangdang.com/25242130.html" target="_blank">小学数学竞赛年鉴&nbsp;MO2017</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">81</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">96</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6538_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726957_1" ddt-pit="1" dd_name="1">
                <a title="高思学校竞赛数学课本·一年级（下）" class="img" href="http://product.dangdang.com/23641156.html" target="_blank"><img src="http://img3m6.ddimg.cn/55/6/23641156-1_l_3.jpg" alt="高思学校竞赛数学课本·一年级（下）"></a><p class="name" ddt-src="23641156"><a title="高思学校竞赛数学课本·一年级（下）" href="http://product.dangdang.com/23641156.html" target="_blank">高思学校竞赛数学课本·一年级（下）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">32</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">36</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726957_2" ddt-pit="2" dd_name="2">
                <a title="新编高中物理奥赛实用题典" class="img" href="http://product.dangdang.com/25305052.html" target="_blank"><img src="http://img3m2.ddimg.cn/58/12/25305052-1_l_2.jpg" alt="新编高中物理奥赛实用题典"></a><p class="name" ddt-src="25305052"><a title="新编高中物理奥赛实用题典" href="http://product.dangdang.com/25305052.html" target="_blank">新编高中物理奥赛实用题典</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">65</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">68</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726957_3" ddt-pit="3" dd_name="3">
                <a title="高中数学竞赛培优教程（一试）第5版" class="img" href="http://product.dangdang.com/27950947.html" target="_blank"><img src="http://img3m7.ddimg.cn/79/0/27950947-1_l_3.jpg" alt="高中数学竞赛培优教程（一试）第5版"></a><p class="name" ddt-src="27950947"><a title="高中数学竞赛培优教程（一试）第5版" href="http://product.dangdang.com/27950947.html" target="_blank">高中数学竞赛培优教程（一试）第5版</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">51</span><span class="tail">.70</span></span><span class="price_r"><span class="sign">¥</span><span class="num">75</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726957_4" ddt-pit="4" dd_name="4">
                <a title="奥数小丛书（第二版）初中卷4（三角形与四边形）" class="img" href="http://product.dangdang.com/22822668.html" target="_blank"><img src="http://img3m8.ddimg.cn/0/32/22822668-1_l_1.jpg" alt="奥数小丛书（第二版）初中卷4（三角形与四边形）"></a><p class="name" ddt-src="22822668"><a title="奥数小丛书（第二版）初中卷4（三角形与四边形）" href="http://product.dangdang.com/22822668.html" target="_blank">奥数小丛书（第二版）初中卷4（三角形与四边形）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">19</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726957_5" ddt-pit="5" dd_name="5">
                <a title="中学奥林匹克竞赛物理教程：力学篇" class="img" href="http://product.dangdang.com/23274661.html" target="_blank"><img src="http://img3m1.ddimg.cn/58/33/23274661-1_l_7.jpg" alt="中学奥林匹克竞赛物理教程：力学篇"></a><p class="name" ddt-src="23274661"><a title="中学奥林匹克竞赛物理教程：力学篇" href="http://product.dangdang.com/23274661.html" target="_blank">中学奥林匹克竞赛物理教程：力学篇</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">61</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">68</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726957_6" ddt-pit="6" dd_name="6">
                <a title="小学生数独训练1" class="img" href="http://product.dangdang.com/22786332.html" target="_blank"><img src="http://img3m2.ddimg.cn/96/30/22786332-1_l_6.jpg" alt="小学生数独训练1"></a><p class="name" ddt-src="22786332"><a title="小学生数独训练1" href="http://product.dangdang.com/22786332.html" target="_blank">小学生数独训练1</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">22</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726957_7" ddt-pit="7" dd_name="7">
                <a title="小学生数独技巧  从入门到精通" class="img" href="http://product.dangdang.com/23980477.html" target="_blank"><img src="http://img3m7.ddimg.cn/4/0/23980477-1_l_2.jpg" alt="小学生数独技巧  从入门到精通"></a><p class="name" ddt-src="23980477"><a title="小学生数独技巧  从入门到精通" href="http://product.dangdang.com/23980477.html" target="_blank">小学生数独技巧&nbsp;&nbsp;从入门到精通</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">25</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">29</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726957_8" ddt-pit="8" dd_name="8">
                <a title="新编高中物理奥赛指导" class="img" href="http://product.dangdang.com/25311494.html" target="_blank"><img src="http://img3m4.ddimg.cn/65/16/25311494-1_l_5.jpg" alt="新编高中物理奥赛指导"></a><p class="name" ddt-src="25311494"><a title="新编高中物理奥赛指导" href="http://product.dangdang.com/25311494.html" target="_blank">新编高中物理奥赛指导</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">65</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">68</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726957_9" ddt-pit="9" dd_name="9">
                <a title="新编初中科学竞赛教程 新" class="img" href="http://product.dangdang.com/28485294.html" target="_blank"><img src="http://img3m4.ddimg.cn/24/30/28485294-1_l_2.jpg" alt="新编初中科学竞赛教程 新"></a><p class="name" ddt-src="28485294"><a title="新编初中科学竞赛教程 新" href="http://product.dangdang.com/28485294.html" target="_blank">新编初中科学竞赛教程&nbsp;新</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">33</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">48</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726957_10" ddt-pit="10" dd_name="10">
                <a title="全国高中化学竞赛专题突破 新" class="img" href="http://product.dangdang.com/28485296.html" target="_blank"><img src="http://img3m6.ddimg.cn/26/32/28485296-1_l_2.jpg" alt="全国高中化学竞赛专题突破 新"></a><p class="name" ddt-src="28485296"><a title="全国高中化学竞赛专题突破 新" href="http://product.dangdang.com/28485296.html" target="_blank">全国高中化学竞赛专题突破&nbsp;新</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">41</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">60</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>   
                                                                        <div class="content tab_5" type="item" dd_name="学习方法" style="display: none;">
                                            <div class="roll_aa " id="mapid_852861_parent_6540_part_" marquee="true" name="m852861_pid6540_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1" style="">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over" style="">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧" style="">
    <ul class="product_ul " id="component_852861__6540_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726960_1" ddt-pit="1" dd_name="1">
                <a title="小学生思维导图学习法（全六册)从创造力、学习力、笔记力、记忆力、应试力、阅读力六个方面介绍了思维导图对儿童的帮助" class="img" href="http://product.dangdang.com/25311048.html" target="_blank"><img src="http://img3m8.ddimg.cn/15/14/25311048-1_l_4.jpg" alt="小学生思维导图学习法（全六册)从创造力、学习力、笔记力、记忆力、应试力、阅读力六个方面介绍了思维导图对儿童的帮助"></a><p class="name" ddt-src="25311048"><a title="小学生思维导图学习法（全六册)从创造力、学习力、笔记力、记忆力、应试力、阅读力六个方面介绍了思维导图对儿童的帮助" href="http://product.dangdang.com/25311048.html" target="_blank">小学生思维导图学习法（全六册)从创造力、学习力、笔记力、记忆力、</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">163</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">192</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726960_2" ddt-pit="2" dd_name="2">
                <a title="小学生一定要掌握的学习方法" class="img" href="http://product.dangdang.com/23772759.html" target="_blank"><img src="http://img3m9.ddimg.cn/87/0/23772759-1_l_1.jpg" alt="小学生一定要掌握的学习方法"></a><p class="name" ddt-src="23772759"><a title="小学生一定要掌握的学习方法" href="http://product.dangdang.com/23772759.html" target="_blank">小学生一定要掌握的学习方法</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">18</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726960_3" ddt-pit="3" dd_name="3">
                <a title="翻转式学习：21世纪学习的革命" class="img" href="http://product.dangdang.com/23615311.html" target="_blank"><img src="http://img3m1.ddimg.cn/49/24/23615311-1_l_1.jpg" alt="翻转式学习：21世纪学习的革命"></a><p class="name" ddt-src="23615311"><a title="翻转式学习：21世纪学习的革命" href="http://product.dangdang.com/23615311.html" target="_blank">翻转式学习：21世纪学习的革命</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">37</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">39</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726960_4" ddt-pit="4" dd_name="4">
                <a title="高分智囊团：清华北大状元学习法" class="img" href="http://product.dangdang.com/27933663.html" target="_blank"><img src="http://img3m3.ddimg.cn/21/32/27933663-1_l_3.jpg" alt="高分智囊团：清华北大状元学习法"></a><p class="name" ddt-src="27933663"><a title="高分智囊团：清华北大状元学习法" href="http://product.dangdang.com/27933663.html" target="_blank">高分智囊团：清华北大状元学习法</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">36</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726960_5" ddt-pit="5" dd_name="5">
                <a title="中学生思维导图学习法" class="img" href="http://product.dangdang.com/25212277.html" target="_blank"><img src="http://img3m7.ddimg.cn/46/33/25212277-1_l_4.jpg" alt="中学生思维导图学习法"></a><p class="name" ddt-src="25212277"><a title="中学生思维导图学习法" href="http://product.dangdang.com/25212277.html" target="_blank">中学生思维导图学习法</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">38</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726960_6" ddt-pit="6" dd_name="6">
                <a title="学习改变命运（每个学生都应该读的书）" class="img" href="http://product.dangdang.com/9042549.html" target="_blank"><img src="http://img3m9.ddimg.cn/87/8/9042549-1_l_3.jpg" alt="学习改变命运（每个学生都应该读的书）"></a><p class="name" ddt-src="9042549"><a title="学习改变命运（每个学生都应该读的书）" href="http://product.dangdang.com/9042549.html" target="_blank">学习改变命运（每个学生都应该读的书）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">22</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726960_7" ddt-pit="7" dd_name="7">
                <a title="中学生思维导图学习法套装（全2册）" class="img" href="http://product.dangdang.com/25212278.html" target="_blank"><img src="http://img3m8.ddimg.cn/47/34/25212278-1_l_12.jpg" alt="中学生思维导图学习法套装（全2册）"></a><p class="name" ddt-src="25212278"><a title="中学生思维导图学习法套装（全2册）" href="http://product.dangdang.com/25212278.html" target="_blank">中学生思维导图学习法套装（全2册）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">76</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">90</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726960_8" ddt-pit="8" dd_name="8">
                <a title="学霸摘抄本" class="img" href="http://product.dangdang.com/25328580.html" target="_blank"><img src="http://img3m0.ddimg.cn/24/8/25328580-1_l_2.jpg" alt="学霸摘抄本"></a><p class="name" ddt-src="25328580"><a title="学霸摘抄本" href="http://product.dangdang.com/25328580.html" target="_blank">学霸摘抄本</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">18</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">20</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726960_9" ddt-pit="9" dd_name="9">
                <a title="孙维刚谈立志成才——全班55%怎样考上北大、清华(第二版)" class="img" href="http://product.dangdang.com/25584848.html" target="_blank"><img src="http://img3m8.ddimg.cn/80/14/25584848-1_l_1.jpg" alt="孙维刚谈立志成才——全班55%怎样考上北大、清华(第二版)"></a><p class="name" ddt-src="25584848"><a title="孙维刚谈立志成才——全班55%怎样考上北大、清华(第二版)" href="http://product.dangdang.com/25584848.html" target="_blank">孙维刚谈立志成才——全班55%怎样考上北大、清华(第二版)</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">37</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">42</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726960_10" ddt-pit="10" dd_name="10">
                <a title="提升学生小组合作学习的56个策略：让学生变得专注、自信、会学习" class="img" href="http://product.dangdang.com/25478061.html" target="_blank"><img src="http://img3m1.ddimg.cn/15/9/25478061-1_l_2.jpg" alt="提升学生小组合作学习的56个策略：让学生变得专注、自信、会学习"></a><p class="name" ddt-src="25478061"><a title="提升学生小组合作学习的56个策略：让学生变得专注、自信、会学习" href="http://product.dangdang.com/25478061.html" target="_blank">提升学生小组合作学习的56个策略：让学生变得专注、自信、会学习</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">25</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">29</span><span class="tail">.90</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6540_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726961_1" ddt-pit="1" dd_name="1">
                <a title="初中三年必须掌握的100个高效学习方法 新课标优秀课外读物，初中生实用助学手册  提分助手" class="img" href="http://product.dangdang.com/21097282.html" target="_blank"><img src="http://img3m2.ddimg.cn/85/30/21097282-1_l_2.jpg" alt="初中三年必须掌握的100个高效学习方法 新课标优秀课外读物，初中生实用助学手册  提分助手"></a><p class="name" ddt-src="21097282"><a title="初中三年必须掌握的100个高效学习方法 新课标优秀课外读物，初中生实用助学手册  提分助手" href="http://product.dangdang.com/21097282.html" target="_blank">初中三年必须掌握的100个高效学习方法&nbsp;新课标优秀课外读物，初中生实</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">23</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">29</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726961_2" ddt-pit="2" dd_name="2">
                <a title="小学生活数学创新空间（四年级）" class="img" href="http://product.dangdang.com/27876161.html" target="_blank"><img src="http://img3m1.ddimg.cn/38/28/27876161-1_l_5.jpg" alt="小学生活数学创新空间（四年级）"></a><p class="name" ddt-src="27876161"><a title="小学生活数学创新空间（四年级）" href="http://product.dangdang.com/27876161.html" target="_blank">小学生活数学创新空间（四年级）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">37</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">50</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726961_3" ddt-pit="3" dd_name="3">
                <a title="衡中高考日记" class="img" href="http://product.dangdang.com/27943286.html" target="_blank"><img src="http://img3m6.ddimg.cn/41/35/27943286-1_l_2.jpg" alt="衡中高考日记"></a><p class="name" ddt-src="27943286"><a title="衡中高考日记" href="http://product.dangdang.com/27943286.html" target="_blank">衡中高考日记</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">39</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">45</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726961_4" ddt-pit="4" dd_name="4">
                <a title="高效学习方法全集：初中版（全新修订超值版）各科学法全解+实用学霸笔记+高分作文解密" class="img" href="http://product.dangdang.com/22737172.html" target="_blank"><img src="http://img3m2.ddimg.cn/40/6/22737172-1_l_1.jpg" alt="高效学习方法全集：初中版（全新修订超值版）各科学法全解+实用学霸笔记+高分作文解密"></a><p class="name" ddt-src="22737172"><a title="高效学习方法全集：初中版（全新修订超值版）各科学法全解+实用学霸笔记+高分作文解密" href="http://product.dangdang.com/22737172.html" target="_blank">高效学习方法全集：初中版（全新修订超值版）各科学法全解+实用学霸</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">20</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">24</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726961_5" ddt-pit="5" dd_name="5">
                <a title="思维第一：全面提升学习力" class="img" href="http://product.dangdang.com/25315721.html" target="_blank"><img src="http://img3m1.ddimg.cn/35/25/25315721-1_l_6.jpg" alt="思维第一：全面提升学习力"></a><p class="name" ddt-src="25315721"><a title="思维第一：全面提升学习力" href="http://product.dangdang.com/25315721.html" target="_blank">思维第一：全面提升学习力</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">35</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">38</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726961_6" ddt-pit="6" dd_name="6">
                <a title="逆袭   艾丁教你高效学习" class="img" href="http://product.dangdang.com/27922041.html" target="_blank"><img src="http://img3m1.ddimg.cn/81/28/27922041-1_l_3.jpg" alt="逆袭   艾丁教你高效学习"></a><p class="name" ddt-src="27922041"><a title="逆袭   艾丁教你高效学习" href="http://product.dangdang.com/27922041.html" target="_blank">逆袭&nbsp;&nbsp;&nbsp;艾丁教你高效学习</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">56</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">58</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726961_7" ddt-pit="7" dd_name="7">
                <a title="我的第一本学习方法书 小学生读物 小学生课外阅读 学习方法指导书籍 老师推荐阅读" class="img" href="http://product.dangdang.com/21110433.html" target="_blank"><img src="http://img3m3.ddimg.cn/69/9/21110433-1_l_7.jpg" alt="我的第一本学习方法书 小学生读物 小学生课外阅读 学习方法指导书籍 老师推荐阅读"></a><p class="name" ddt-src="21110433"><a title="我的第一本学习方法书 小学生读物 小学生课外阅读 学习方法指导书籍 老师推荐阅读" href="http://product.dangdang.com/21110433.html" target="_blank">我的第一本学习方法书&nbsp;小学生读物&nbsp;小学生课外阅读&nbsp;学习方法指导书籍&nbsp;</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">26</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726961_8" ddt-pit="8" dd_name="8">
                <a title="你好，寒假！ ——学生寒假生活与学期初生活重建" class="img" href="http://product.dangdang.com/26195504.html" target="_blank"><img src="http://img3m4.ddimg.cn/5/22/26195504-1_l_1.jpg" alt="你好，寒假！ ——学生寒假生活与学期初生活重建"></a><p class="name" ddt-src="26195504"><a title="你好，寒假！ ——学生寒假生活与学期初生活重建" href="http://product.dangdang.com/26195504.html" target="_blank">你好，寒假！&nbsp;——学生寒假生活与学期初生活重建</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">53</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">59</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726961_9" ddt-pit="9" dd_name="9">
                <a title="状元笔记 初中生版 初中三年快速提高学习成绩的高效学习方法 学霸笔记初中 初中课外阅读 中考必备" class="img" href="http://product.dangdang.com/23713921.html" target="_blank"><img src="http://img3m1.ddimg.cn/55/29/23713921-1_l_3.jpg" alt="状元笔记 初中生版 初中三年快速提高学习成绩的高效学习方法 学霸笔记初中 初中课外阅读 中考必备"></a><p class="name" ddt-src="23713921"><a title="状元笔记 初中生版 初中三年快速提高学习成绩的高效学习方法 学霸笔记初中 初中课外阅读 中考必备" href="http://product.dangdang.com/23713921.html" target="_blank">状元笔记&nbsp;初中生版&nbsp;初中三年快速提高学习成绩的高效学习方法&nbsp;学霸笔</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">23</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726961_10" ddt-pit="10" dd_name="10">
                <a title="高考：一场突破自己的魔鬼考验" class="img" href="http://product.dangdang.com/24165017.html" target="_blank"><img src="http://img3m7.ddimg.cn/8/21/24165017-1_l_11.jpg" alt="高考：一场突破自己的魔鬼考验"></a><p class="name" ddt-src="24165017"><a title="高考：一场突破自己的魔鬼考验" href="http://product.dangdang.com/24165017.html" target="_blank">高考：一场突破自己的魔鬼考验</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">33</span><span class="tail">.80</span></span><span class="price_r"><span class="sign">¥</span><span class="num">39</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>   
                                                                        <div class="content tab_6" type="item" dd_name="英语专项" style="display: none;">
                                            <div class="roll_aa " id="mapid_852861_parent_6542_part_" marquee="true" name="m852861_pid6542_p" js="true" action="newclickroll" delay="500" prevnoneclass="btn_prev_none" nextnoneclass="btn_next_none" page="0" speed="0" display_count="" is_display_tab="1" noend="1" style="">
                     <div class="btn_brand_prev" type="rollpre"></div>
        <div class="btn_brand_next" type="rollnext"></div>
                    <ul class="mix_marquee_tab">
            <li class="current">1</li><li>2</li></ul>
                    <div class="over" style="">
                            <ul class="list_aa" style="left:0;" type="rollbox">
                    <li type="rollitem" dd_name="第1帧" style="">
    <ul class="product_ul " id="component_852861__6542_6528__6528" ddt-area="6528" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726964_1" ddt-pit="1" dd_name="1">
                <a title="大猫英语分级阅读一级1 Big Cat(适合小学一、二年级 读物8册+家庭阅读指导+MP3光盘）点读版" class="img" href="http://product.dangdang.com/23702481.html" target="_blank"><img src="http://img3m1.ddimg.cn/0/22/23702481-1_l_1.jpg" alt="大猫英语分级阅读一级1 Big Cat(适合小学一、二年级 读物8册+家庭阅读指导+MP3光盘）点读版"></a><p class="name" ddt-src="23702481"><a title="大猫英语分级阅读一级1 Big Cat(适合小学一、二年级 读物8册+家庭阅读指导+MP3光盘）点读版" href="http://product.dangdang.com/23702481.html" target="_blank">大猫英语分级阅读一级1&nbsp;Big&nbsp;Cat(适合小学一、二年级&nbsp;读物8册+家庭阅</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">62</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">65</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726964_2" ddt-pit="2" dd_name="2">
                <a title="薄冰小学英语语法练习册（最新修订版）" class="img" href="http://product.dangdang.com/24163292.html" target="_blank"><img src="http://img3m2.ddimg.cn/65/35/24163292-1_l_15.jpg" alt="薄冰小学英语语法练习册（最新修订版）"></a><p class="name" ddt-src="24163292"><a title="薄冰小学英语语法练习册（最新修订版）" href="http://product.dangdang.com/24163292.html" target="_blank">薄冰小学英语语法练习册（最新修订版）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">9</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">10</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726964_3" ddt-pit="3" dd_name="3">
                <a title="大猫英语分级阅读四级1 Big Cat(适合小学三、四年级 10册读物+家庭阅读指导+MP3光盘）点读版" class="img" href="http://product.dangdang.com/23781288.html" target="_blank"><img src="http://img3m8.ddimg.cn/3/19/23781288-1_l_1.jpg" alt="大猫英语分级阅读四级1 Big Cat(适合小学三、四年级 10册读物+家庭阅读指导+MP3光盘）点读版"></a><p class="name" ddt-src="23781288"><a title="大猫英语分级阅读四级1 Big Cat(适合小学三、四年级 10册读物+家庭阅读指导+MP3光盘）点读版" href="http://product.dangdang.com/23781288.html" target="_blank">大猫英语分级阅读四级1&nbsp;Big&nbsp;Cat(适合小学三、四年级&nbsp;10册读物+家庭阅</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">62</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">65</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726964_4" ddt-pit="4" dd_name="4">
                <a title="少儿英语自然拼读法（附MP3光盘一张）" class="img" href="http://product.dangdang.com/23834893.html" target="_blank"><img src="http://img3m3.ddimg.cn/49/11/23834893-1_l_2.jpg" alt="少儿英语自然拼读法（附MP3光盘一张）"></a><p class="name" ddt-src="23834893"><a title="少儿英语自然拼读法（附MP3光盘一张）" href="http://product.dangdang.com/23834893.html" target="_blank">少儿英语自然拼读法（附MP3光盘一张）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">23</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726964_5" ddt-pit="5" dd_name="5">
                <a title="大猫英语分级阅读六级1 Big Cat(适合小学四、五年级 6册读物+家庭阅读指导+MP3光盘）点读版" class="img" href="http://product.dangdang.com/23984952.html" target="_blank"><img src="http://img3m2.ddimg.cn/24/35/23984952-1_l_6.jpg" alt="大猫英语分级阅读六级1 Big Cat(适合小学四、五年级 6册读物+家庭阅读指导+MP3光盘）点读版"></a><p class="name" ddt-src="23984952"><a title="大猫英语分级阅读六级1 Big Cat(适合小学四、五年级 6册读物+家庭阅读指导+MP3光盘）点读版" href="http://product.dangdang.com/23984952.html" target="_blank">大猫英语分级阅读六级1&nbsp;Big&nbsp;Cat(适合小学四、五年级&nbsp;6册读物+家庭阅</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">67</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">70</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726964_6" ddt-pit="6" dd_name="6">
                <a title="快捷英语活页英语时文阅读理解17期七年级" class="img" href="http://product.dangdang.com/25479381.html" target="_blank"><img src="http://img3m1.ddimg.cn/48/34/25479381-1_l_2.jpg" alt="快捷英语活页英语时文阅读理解17期七年级"></a><p class="name" ddt-src="25479381"><a title="快捷英语活页英语时文阅读理解17期七年级" href="http://product.dangdang.com/25479381.html" target="_blank">快捷英语活页英语时文阅读理解17期七年级</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726964_7" ddt-pit="7" dd_name="7">
                <a title="三一口语备考王（第1-3级）（附MP3光盘一张）" class="img" href="http://product.dangdang.com/23834896.html" target="_blank"><img src="http://img3m6.ddimg.cn/52/14/23834896-1_l_2.jpg" alt="三一口语备考王（第1-3级）（附MP3光盘一张）"></a><p class="name" ddt-src="23834896"><a title="三一口语备考王（第1-3级）（附MP3光盘一张）" href="http://product.dangdang.com/23834896.html" target="_blank">三一口语备考王（第1-3级）（附MP3光盘一张）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">33</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">36</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726964_8" ddt-pit="8" dd_name="8">
                <a title="周计划：小学英语听力强化训练100篇（二年级）(MP3下载+二维码扫听）" class="img" href="http://product.dangdang.com/23967231.html" target="_blank"><img src="http://img3m1.ddimg.cn/24/0/23967231-1_l_12.jpg" alt="周计划：小学英语听力强化训练100篇（二年级）(MP3下载+二维码扫听）"></a><p class="name" ddt-src="23967231"><a title="周计划：小学英语听力强化训练100篇（二年级）(MP3下载+二维码扫听）" href="http://product.dangdang.com/23967231.html" target="_blank">周计划：小学英语听力强化训练100篇（二年级）(MP3下载+二维码扫听）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">22</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726964_9" ddt-pit="9" dd_name="9">
                <a title="把钱拿出来!(入门级.适合小学高年级.初一)(新版)(书虫.牛津英汉双语读物)——家喻户晓的牛津书虫系列读物，销量超6000万册" class="img" href="http://product.dangdang.com/22805115.html" target="_blank"><img src="http://img3m5.ddimg.cn/69/17/22805115-1_l_6.jpg" alt="把钱拿出来!(入门级.适合小学高年级.初一)(新版)(书虫.牛津英汉双语读物)——家喻户晓的牛津书虫系列读物，销量超6000万册"></a><p class="name" ddt-src="22805115"><a title="把钱拿出来!(入门级.适合小学高年级.初一)(新版)(书虫.牛津英汉双语读物)——家喻户晓的牛津书虫系列读物，销量超6000万册" href="http://product.dangdang.com/22805115.html" target="_blank">把钱拿出来!(入门级.适合小学高年级.初一)(新版)(书虫.牛津英汉双语</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">4</span><span class="tail">.50</span></span><span class="price_r"><span class="sign">¥</span><span class="num">5</span><span class="tail">.90</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726964_10" ddt-pit="10" dd_name="10">
                <a title="小学生英语音标有声速查表" class="img" href="http://product.dangdang.com/27873075.html" target="_blank"><img src="http://img3m5.ddimg.cn/21/13/27873075-1_l_2.jpg" alt="小学生英语音标有声速查表"></a><p class="name" ddt-src="27873075"><a title="小学生英语音标有声速查表" href="http://product.dangdang.com/27873075.html" target="_blank">小学生英语音标有声速查表</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">8</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">9</span><span class="tail">.90</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li><li type="rollitem" dd_name="第2帧">
    <ul class="product_ul " id="component_852861__6542_6529__6529" ddt-area="6529" dd_name="商品">
                    <li class="line1 " nname="book-104811-12717_1-726965_1" ddt-pit="1" dd_name="1">
                <a title="快捷英语活页英语时文阅读理解17期八年级" class="img" href="http://product.dangdang.com/25479380.html" target="_blank"><img src="http://img3m0.ddimg.cn/47/33/25479380-1_l_3.jpg" alt="快捷英语活页英语时文阅读理解17期八年级"></a><p class="name" ddt-src="25479380"><a title="快捷英语活页英语时文阅读理解17期八年级" href="http://product.dangdang.com/25479380.html" target="_blank">快捷英语活页英语时文阅读理解17期八年级</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line2 " nname="book-104811-12717_1-726965_2" ddt-pit="2" dd_name="2">
                <a title="新东方 8天提升英语阅读理解力——初中版（初阶）" class="img" href="http://product.dangdang.com/25247877.html" target="_blank"><img src="http://img3m7.ddimg.cn/6/2/25247877-1_l_1.jpg" alt="新东方 8天提升英语阅读理解力——初中版（初阶）"></a><p class="name" ddt-src="25247877"><a title="新东方 8天提升英语阅读理解力——初中版（初阶）" href="http://product.dangdang.com/25247877.html" target="_blank">新东方&nbsp;8天提升英语阅读理解力——初中版（初阶）</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">21</span><span class="tail">.30</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line3 " nname="book-104811-12717_1-726965_3" ddt-pit="3" dd_name="3">
                <a title="中学生英语阅读新视野1" class="img" href="http://product.dangdang.com/23801661.html" target="_blank"><img src="http://img3m1.ddimg.cn/81/5/23801661-1_l_6.jpg" alt="中学生英语阅读新视野1"></a><p class="name" ddt-src="23801661"><a title="中学生英语阅读新视野1" href="http://product.dangdang.com/23801661.html" target="_blank">中学生英语阅读新视野1</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">26</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">28</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line4 " nname="book-104811-12717_1-726965_4" ddt-pit="4" dd_name="4">
                <a title="薄冰小学图解英语语法" class="img" href="http://product.dangdang.com/23638345.html" target="_blank"><img src="http://img3m5.ddimg.cn/16/7/23638345-1_l_1.jpg" alt="薄冰小学图解英语语法"></a><p class="name" ddt-src="23638345"><a title="薄冰小学图解英语语法" href="http://product.dangdang.com/23638345.html" target="_blank">薄冰小学图解英语语法</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">30</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">32</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line5 " nname="book-104811-12717_1-726965_5" ddt-pit="5" dd_name="5">
                <a title="大猫英语分级阅读六级2 Big Cat(适合小学四、五年级 7册读物+家庭阅读指导+MP3光盘）点读版" class="img" href="http://product.dangdang.com/23984953.html" target="_blank"><img src="http://img3m3.ddimg.cn/25/36/23984953-1_l_6.jpg" alt="大猫英语分级阅读六级2 Big Cat(适合小学四、五年级 7册读物+家庭阅读指导+MP3光盘）点读版"></a><p class="name" ddt-src="23984953"><a title="大猫英语分级阅读六级2 Big Cat(适合小学四、五年级 7册读物+家庭阅读指导+MP3光盘）点读版" href="http://product.dangdang.com/23984953.html" target="_blank">大猫英语分级阅读六级2&nbsp;Big&nbsp;Cat(适合小学四、五年级&nbsp;7册读物+家庭阅</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">67</span><span class="tail">.40</span></span><span class="price_r"><span class="sign">¥</span><span class="num">70</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line6 " nname="book-104811-12717_1-726965_6" ddt-pit="6" dd_name="6">
                <a title="BASIC READERS:美国学校现代英语阅读教材(套装共7册)(英文原版)" class="img" href="http://product.dangdang.com/23823863.html" target="_blank"><img src="http://img3m3.ddimg.cn/8/7/23823863-1_l_2.jpg" alt="BASIC READERS:美国学校现代英语阅读教材(套装共7册)(英文原版)"></a><p class="name" ddt-src="23823863"><a title="BASIC READERS:美国学校现代英语阅读教材(套装共7册)(英文原版)" href="http://product.dangdang.com/23823863.html" target="_blank">BASIC&nbsp;READERS:美国学校现代英语阅读教材(套装共7册)(英文原版)</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">214</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">228</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line7 " nname="book-104811-12717_1-726965_7" ddt-pit="7" dd_name="7">
                <a title="中学生英语听力新视野 3" class="img" href="http://product.dangdang.com/23425648.html" target="_blank"><img src="http://img3m8.ddimg.cn/70/23/23425648-1_l_3.jpg" alt="中学生英语听力新视野 3"></a><p class="name" ddt-src="23425648"><a title="中学生英语听力新视野 3" href="http://product.dangdang.com/23425648.html" target="_blank">中学生英语听力新视野&nbsp;3</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">24</span><span class="tail">.10</span></span><span class="price_r"><span class="sign">¥</span><span class="num">25</span><span class="tail">.00</span></span></p><div class="icon_pop"><span style="background: url(http://img4.ddimg.cn/00035/pic/mej.png) no-repeat 0px 0px; _background-image: none; _filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://img4.ddimg.cn/00035/pic/mej.png',sizingMethod='noscale');" class="product_tags"></span></div>            </li>
                        <li class="line8 " nname="book-104811-12717_1-726965_8" ddt-pit="8" dd_name="8">
                <a title="中学生百科英语 延伸阅读 1" class="img" href="http://product.dangdang.com/24198108.html" target="_blank"><img src="http://img3m8.ddimg.cn/33/34/24198108-1_l_3.jpg" alt="中学生百科英语 延伸阅读 1"></a><p class="name" ddt-src="24198108"><a title="中学生百科英语 延伸阅读 1" href="http://product.dangdang.com/24198108.html" target="_blank">中学生百科英语&nbsp;延伸阅读&nbsp;1</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">67</span><span class="tail">.20</span></span><span class="price_r"><span class="sign">¥</span><span class="num">79</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line9 " nname="book-104811-12717_1-726965_9" ddt-pit="9" dd_name="9">
                <a title="快捷英语活页英语时文阅读理解17期中考" class="img" href="http://product.dangdang.com/25479382.html" target="_blank"><img src="http://img3m2.ddimg.cn/49/35/25479382-1_l_2.jpg" alt="快捷英语活页英语时文阅读理解17期中考"></a><p class="name" ddt-src="25479382"><a title="快捷英语活页英语时文阅读理解17期中考" href="http://product.dangdang.com/25479382.html" target="_blank">快捷英语活页英语时文阅读理解17期中考</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span><span class="price_r"><span class="sign">¥</span><span class="num">27</span><span class="tail">.00</span></span></p><div class="icon_pop"></div>            </li>
                        <li class="line10 " nname="book-104811-12717_1-726965_10" ddt-pit="10" dd_name="10">
                <a title="读美国中小学课本学各科词汇1（体验美国课堂，不必远赴重洋！）--新东方英语学习丛书" class="img" href="http://product.dangdang.com/22538856.html" target="_blank"><img src="http://img3m6.ddimg.cn/21/10/22538856-1_l_6.jpg" alt="读美国中小学课本学各科词汇1（体验美国课堂，不必远赴重洋！）--新东方英语学习丛书"></a><p class="name" ddt-src="22538856"><a title="读美国中小学课本学各科词汇1（体验美国课堂，不必远赴重洋！）--新东方英语学习丛书" href="http://product.dangdang.com/22538856.html" target="_blank">读美国中小学课本学各科词汇1（体验美国课堂，不必远赴重洋！）--新</a></p><p class="price"><span class="rob"><span class="sign">¥</span><span class="num">29</span><span class="tail">.60</span></span><span class="price_r"><span class="sign">¥</span><span class="num">34</span><span class="tail">.80</span></span></p><div class="icon_pop"></div>            </li>
                </ul>

    </li>                </ul>
                        </div>
    </div>
                                        </div>   
                                    

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
		$('.m-username').text(user.userName||user.userId)
		
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
