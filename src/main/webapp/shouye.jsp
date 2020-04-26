<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Bootstrap 模板</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- 引入 Bootstrap -->
		<link href="./css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="./iconfont/iconfont.css">
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
				position: relative;
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
				width: 245px;
    			height: 18px;
    			vertical-align: middle;
    			outline: 0;
    			padding-left: 14px;
			}
	
			.search_font {
				font-size: 30px;
				vertical-align: middle;
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
	
			.new_title {
				padding: 50px 0 30px;
			}
	
			.new_title>h2{
				margin:0
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
	
			li,
			ol,
			ul {
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
	
			.userhide {
				display: none
			}
	
			.h-user-icon {
				top: 8px;
				left: 0;
			}
	
			.m-safe-anchor {
				display: flex;
				vertical-align: middle;
				align-items: center;
			}
	
			.m-login-info a {
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
				-webkit-box-shadow: 0 3px 28px rgba(0, 0, 0, .1);
				box-shadow: 0 3px 28px rgba(0, 0, 0, .1);
				-webkit-transition: all .3s cubic-bezier(0, 1, .5, 1);
				-o-transition: all .3s cubic-bezier(0, 1, .5, 1);
				transition: all .3s cubic-bezier(0, 1, .5, 1);
				background: #fff;
			}
	
			.hidden,
			.hide {
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
	
			.m-login-info .show {
				height: 240px;
			}
	
			.nav-details {
				color: #333333
			}
	
			.nav-details ul {
				display: flex;
				flex-wrap: wrap;
	
			}
	
			.nav-details ul li {
				width: 25%;
				cursor: pointer;
			}
	
			.nav-details ul li .smallimg {
				width: 40px;
				height: 40px;
				margin-right: 10px;
			}
	
			.nav-details ul li>span {
				color: #666666;
				font-size: 14px;
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
				margin: 0
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
	
			.zbtj .tab_content_aa .roll_aa {}
	
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
	
			ul:after,
			.fbox:after,
			.clearfix:after {
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
				display: flex;
				flex-wrap: wrap;
			}
	
			.zbtj .product_ul li {
				width: 150px;
				margin-right: 47px;
				margin-bottom: 16px;
				position: relative;
				overflow: visible;
			}
	
			.zbtj .product_ul a.img,
			.zbtj .product_ul li img {
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
				margin: 0;
				box-sizing: content-box;
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
	
			.m-auto-list {
				position: absolute;
				left: 0;
				top: 50px;
				width: 100%;
				border: 1px solid #e7e7e7;
				background: #fff;
				-webkit-box-shadow: 1px 9px 25px rgba(0, 0, 0, .1);
				box-shadow: 1px 9px 25px rgba(0, 0, 0, .1);
				display: none;
				z-index: 99;
			}
	
			.m-auto-list li {
				height: 36px;
				line-height: 36px;
				padding: 0 10px;
				color: #666;
				font-size: 13px;
				cursor: pointer;
				overflow: hidden;
            }
            .hot-box{
                /* height: 200px; */
                padding: 10px 0;
            } 
            .person-box{
                height: 100%;
                float: left;
                width: 80%;
            }
            .person-rank-box{
                width: 20%;
                float: right;
                height: 100%;
                background: #845f3f;
                color: white;
                height: 300px;
            }
            .person-info{
                height: 50%;
                padding: 0 10px;
                display: flex;
                align-items: center;
            }
            .person-img{
                /* width: 90px; */
                height: 120px;
                border-radius: 5px;
                overflow: hidden;
            }
            .person-img>img{
                height: 100%;
            }
            .person-detail{
                flex: 1;
                height: 120px;
                padding-left: 20px;
            }
            .person-name{
                font-size: 23px;
                font-weight: bold;
            }
            .person-brief{
                font-size: 14px;
                padding-top: 15px;
            }
            .person-book{
                display: flex;
                align-items: center;
                justify-content: flex-start;
                padding: 20px 0;
            }
            .perbook{
                padding: 0 10px;
                width: 100px;
                height: 120px;
            }
            .perbook-img{
                height: 120px;
                overflow: hidden;
                border-radius: 5px;
            }
            .perbook-img>img{
                height: 120px;
            }
            .perbook-name{
                font-size: 14px;
                text-overflow: ellipsis;
                width: 100%;
                overflow: hidden;
                padding-top: 10px;
                overflow-wrap: unset;
                white-space: nowrap;
            }
            .per-person{
                padding: 10px;
            }
            .per-no{
                display: inline-block;
                width: 24px;
                height: 17px;
                text-align: center;
                background: rgba(206,155,78,.9);
                border-radius: 0 5px 0 5px;
            }
            .per-person-name{
                padding-left: 10px;
            }
            .bookads{
                display: flex;
                align-items: center;
                padding: 50px 0 30px;
            }
            .ads-images{
                width: 33.33%;
            }
            .ads-images>img{
                width: 100%;
            }
		</style>
	</head>
	
	<body>
		<!-- 顶部 -->
		<header>
			<div class="headerCenter">
				<div class=" login">
					<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
				</div>
				<div class="fr site-item m-user-con userhide">
					<div class="m-login-info">
						<a href="personCenter.jsp" class="m-safe-anchor" data-src="/personal-center/orders"
							data-target="_blank">
							<span class="m-icons m-icons-user-active  h-user-icon" data-src="" href=""
								style="background: ./images/user.png center center/100% no-repeat; border-radius: 50%;"></span>
							<span class="m-username">丑丑小怪物</span>
							<span class="m-icons m-icons-dropdown  h-down-icon" data-src="" href=""></span>
						</a>
						<div class="site-item-nav hidden">
							<ul class="site-nav user-nav">
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/orders" href="#"
										class="m-safe-anchor">我的订单</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="//app.youpin.mi.com/r/afterServiceList"
										href="#" class="m-safe-anchor">退款/售后</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/assets" href="#"
										class="m-safe-anchor">我的资产</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/collections" href="#"
										class="m-safe-anchor">我的收藏</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/address" href="#"
										class="m-safe-anchor">地址管理</a></li>
								<li><a rel="nofollow" href="javascript:;">退出登录</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
		<!-- 主体 -->
		<div class="content_center">
	
			<!-- 搜索 -->
			<div class="clear">
				<div class="search_box">
					<div class="search">
						<span class="iconfont icon-icon-test1 search_font"></span>
						<input type="text" class="search-input">
					</div>
					<span class="iconfont icon-icon-test search_font shopcart"></span>
	
					<div class="m-auto-list">
						<ul>
							<li class="">扫地机器人</li>
							<li class="">扫地机</li>
							<li class="">三星</li>
							<li class="">伞</li>
							<li class="">扫把</li>
							<li class="">扫拖一体机器人</li>
							<li class="">三明治机</li>
							<li class="">扫地机器人配件</li>
							<li class="">散热器</li>
							<li class="">三脚架</li>
						</ul>
					</div>
				</div>
			</div>
	
			<!-- 分类 -->
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
								<img src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
									alt="First slide">
							</div>
							<div class="item">
								<img src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
									alt="Second slide">
							</div>
							<div class="item">
								<img src="https://img.youpin.mi-img.com/youpinoper/b11cfe646f29f79742dc6f8491d5cba6.jpg?id=&w=1080&h=450"
									alt="Third slide">
							</div>
						</div>
						<!-- 轮播（Carousel）导航 -->
						<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next"> <span
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
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
					<div>
						<div class="newBook clearfix">
							<img src="./images/28506743-1_l_8.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
					<div>
						<div class="newBook clearfix">
							<img src="./images/28519012-1_l_9.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
					<div>
						<div class="newBook clearfix">
							<img src="./images/28523273-1_l_2.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
					<div>
						<div class="newBook clearfix">
							<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
					<div>
						<div class="newBook clearfix">
							<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
							<p class="titleText">
								<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
									target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
								<p class="author">路遥</p>
								<p class="price">
									<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
											class="tail">.80</span>
									</span> <span class="price_r"> <span class="sign">¥</span> <span class="num">45</span>
										<span class="tail">.00</span>
									</span>
								</p>
							</p>
						</div>
					</div>
				</div>
	
            </div>
            
            <div class="hot-author">
                <div class="new_title">
					<h2>热门作者</h2>
                </div>
                <div class="hot-box clearfix">
                    <div class="person-box">
                        <div class="person-info">
                            <div class="person-img">
                                <img src="http://img63.ddimg.cn/topic_img/gys_0014951/cl.jpg" alt="">
                            </div>
                            <div class="person-detail">
                                <div class="person-name">二混子</div>
                                <div class="person-brief">陈磊（笔名：二混子）漫画式科普的开创者，80后，创立拥有全网700万粉丝的知识类公众号“混子曰”“混子谈钱”“着迷小课”及“混子谈命”，总阅读量超过2.5亿人次，曾获网站度新锐作家、年度挚爱阅读大使等称号。“混子曰”公众号下的“Stone历史剧”栏目，</div>
                            </div>
                        </div>
                        <div class="person-book">
                            <div class="perbook">
                                <div class="perbook-img">
                                    <img src="https://img3.doubanio.com/view/subject/l/public/s29053580.jpg">
                                </div>
                                <div class="perbook-name">马伯庸笑翻中国简史</div>
                            </div>
                            <div class="perbook">
                                <div class="perbook-img">
                                    <img src="http://img3m0.ddimg.cn/30/25/24156030-1_l_12.jpg" alt="长安十二时辰 上下册套装">
                                </div>
                                <div class="perbook-name">长安十二时辰 上下册套装</div>
                            </div>
                        </div>
                    </div>
                    <div class="person-rank-box">
                        <div class="per-person">
                            <span class="per-no">1</span>
                            <span class="per-person-name">张嘉佳</span>
                        </div>
                        <div class="per-person">
                            <span class="per-no">2</span>
                            <span class="per-person-name">安妮宝贝</span>
                        </div>
                    </div>
                </div>
            </div>
			<!-- <div>
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
									<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
										target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
									<p class="author">路遥</p>
									<p class="price">
										<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
												class="tail">.80</span>
										</span> <span class="price_r"> <span class="sign">¥</span> <span
												class="num">45</span> <span class="tail">.00</span>
										</span>
									</p>
								</p>
							</div>
							<div class="newBook clearfix">
								<img src="./images/28504153-1_l_3.jpg" alt="" class="img">
								<p class="titleText">
									<a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"
										target="_blank">人生（茅盾文学奖得主路遥代表作，全新精装版）</a>
									<p class="author">路遥</p>
									<p class="price">
										<span class="rob"> <span class="sign">¥</span> <span class="num">25</span> <span
												class="tail">.80</span>
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
			</div> -->
	
            <div class="bookads">
                <div class="ads-images">
                    <img src="https://img1.doubanio.com/view/freyr_page_photo/raw/public/5537.jpg" alt="">
                </div>
                <div class="ads-images">
                    <img src="https://img3.doubanio.com/view/freyr_page_photo/raw/public/5481.jpg" alt="">
                </div>
                <div class="ads-images">
                    <img src="https://img3.doubanio.com/view/freyr_page_photo/raw/public/5411.jpg" alt="">
                </div>
            </div>
            
		</div>
		<div class="m-fixedBar">
			<ul class="fixed-nav">
				<li><a class="m-icons m-icons- m-icons-service-fixed" data-src="" href="javascript:;"></a>
					<p class="text">购物车</p>
				</li>
				<li><a class="m-icons m-icons- m-icons-download" data-src="" href="javascript:;"></a>
					<p class="text">个人中心</p>
				</li>
	
				<li><a class="m-icons m-icons- m-icons-wx-chat" data-src="" href="javascript:;"></a>
					<p class="text">关注微信</p>
					<div class="fixed-pop fixed-wx-pop ">
						<div class="pop-inner">
							<img class="qr-code"
								src="https://shop.io.mi-img.com/static/h5/static3/media/wx_code.83208f15.png" alt="qr-code">
							<p class="site-info">扫码关注「小米有品」微信服务号，签到积分赢大奖</p>
						</div>
						<a class="m-icons m-icons-arrow-right " data-src="" href="javascript:;"></a>
					</div>
				</li>
				<li><a class="m-icons m-icons- m-icons-top" data-src="" href="javascript:;"></a>
					<p class="text">回到顶部</p>
				</li>
			</ul>
		</div>
	
		<footer> </footer>
	
		<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
		<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
	</body>
	
	<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
	<script type="text/javascript">
	
	/* {
		firstname: "教育",
		secodename: [
			{
				name: "英语综合教材",
				imgurl: ""
			},
			{
				name: "中小学教辅",
				imgurl: ""
			}
		]
	},
	{
		firstname: "小说",
		secodename: [
			{
				name: "中国当代小说",
				imgurl: "./images/28504153-1_l_3.jpg"
			},
			{
				name: "四大名著",
				imgurl: ""
			}
		]
	}, */
	
		var navDetails = $('.top_box .directory .nav-details')
		var fixedlis = $('.fixed-nav li')
		var book = $('.new_bookList>.book')
		var userbox = $('.m-user-con')
		var loginbox = $('.login')
		var type = [
			
		]
		
	var searchData=[
        {name:"张爱玲",type:"author",no:"001"},
        {name:"白夜行",type:"book",no:"0000001"},
        {name:"清华出版社",type:"publish",no:"0011"}
    ]

    $(".m-auto-list>ul").empty()
    searchData.forEach(function(item,index){
        $(".m-auto-list>ul").append("<li data-type="+item.type+" data-no="+item.no+">"+item.name+"</li>")
    })
    $(".m-auto-list>ul>li").click(function(e){
        let Ttype=$(e.target).data("type")
        let Tno=$(e.target).data("no")
        let value=$(e.target).val()
        console.log(Ttype)
        if(Ttype=="book"){
            window.location.href="detail.jsp?search_name="+value+"&ISBN="+Tno
        }else{
            window.location.href="booklist.jsp?search_name="+value+"&ISBN="+Tno
        }
        // window.location.href="booklist.jsp?type="+Ttype
    })
    $(".search_box").click(function(e){
        var e=e||window.event;
        e.stopPropagation()
    })
		
		var newbooks=[
			{name:"人生（茅盾文学奖得主路遥代表作，全新精装版）",isbn:"0000001",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
			{name:"ceshi",isbn:"0000002",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
			{name:"人生（茅盾文学奖得主路遥代表作，全新精装版）",isbn:"0000001",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
			{name:"人生（茅盾文学奖得主路遥代表作，全新精装版）",isbn:"0000001",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
			{name:"人生（茅盾文学奖得主路遥代表作，全新精装版）",isbn:"0000001",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
			{name:"人生（茅盾文学奖得主路遥代表作，全新精装版）",isbn:"0000001",author:"路遥",price:"40.00",disprice:"25.80",img:"./images/28504153-1_l_3.jpg"},
		]
		
		$.post("BookTypeShow",{typename:""},function(data){
			type=JSON.parse(data)
			$('.directory>ul').empty()
			for (let i = 0; i < type.length; i++) {
				$('.directory>ul').append("<li data-no=" + i + "><span>" + type[i].firstname + "</span></li>")
				console.log(222222)
			}
			var lis = $('.top_box .directory ul li');
			userbox.mouseenter(function (e) {
				$('.site-item-nav').removeClass('hidden').addClass('show')
			})
			userbox.mouseleave(function (e) {
				$('.site-item-nav').removeClass('show').addClass('hidden')
			})
			$('.top_box .directory ul li').mouseenter(function (e) {
		
				navDetails.removeClass('hide')
				var li = e.target
				console.log(li)
				var second = type[$(li).data('no')]
				$('.nav-details>ul').empty()
				for (let i = 0; i < second.secondname.length; i++) {
					$('.nav-details>ul').append('<li><img src=' + second.secondname[i].imgurl + ' alt="" class="smallimg"><span>' + second.secondname[i].name + '</span></li>')
				}
		
			})
			$('.directory').mouseleave(function () {
				navDetails.addClass('hide')
			})
		})
	
		//处理新书
		$('.new_box .new_bookList').empty()
		newbooks.forEach(function(item,index){
			
			$('.new_box .new_bookList').append('<div data-ISBN='+item.isbn+' class="book"><div class="newBook clearfix"><img src='+item.img+' alt="" class="img"><p class="titleText"><a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"target="_blank">'+item.name+'</a><p class="author">'+item.author+'</p><p class="price"><span class="rob"> <span class="sign">¥</span> <span class="num">'+item.disprice+'</span> </span> <span class="price_r"> <span class="sign">¥</span> <span class="num">'+item.price+'</span></span></p></p></div></div>')
	
		})
	
		//防抖函数
		function debounce(fn, wait) {
			var timeout = null;
			return function () {
				if (timeout !== null) clearTimeout(timeout);
				timeout = setTimeout(fn, wait);
			}
		}
		//节流
		function throttle(fn, await) {
			let canRun = true; // 通过闭包保存一个标记
			return function () {
				// 在函数开头判断标记是否为true，不为true则return
				if (!canRun) return;
				// 立即设置为false
				canRun = false;
				// 将外部传入的函数的执行放在setTimeout中
				setTimeout(function() {
					// 最后在setTimeout执行完毕后再把标记设置为true(关键)表示可以执行下一次循环了。
					// 当定时器没有执行的时候标记永远是false，在开头被return掉
					fn.apply(this, arguments);
					canRun = true;
				}, 500);
			};
		}
	
		function handle(e) {
			console.log(1)
			var tar = $(e.target)
			console.log(tar)
			$('.m-auto-list').addClass('show')
			$.post("Search", { inputmsg: tar.val() }, function (data) {
				console.log(data)
				var textdata=data
				if (data.length > 8) {
					textdata.slice(0,9)
				}
				textdata.forEach(function(item,index){
					$('.m-auto-list').text(item)
				})
				$('.m-auto-list').addClass('show')
			})
		}
	
		$('.search-input').on("input", throttle(handle, 1000))
	
		$("body").click(function(e){
	        $('.m-auto-list').removeClass('show')
	    })
	
		$(".search-input").focus(function(e){
			$('.m-auto-list').addClass('show')
		})
	
		window.onload = function () {
			//处理用户登录
			var user = JSON.parse(sessionStorage.getItem("user"))
			if (user) {
				userbox.removeClass('userhide')
				loginbox.addClass('userhide')
				$('.m-username').text(user.userName || user.userId)
			}
	
	
			//处理分类
		}
		for (let i = 0; i < type.length; i++) {
			$('.directory>ul').append("<li data-no=" + i + "><span>" + type[i].firstname + "</span></li>")
			console.log(222222)
		}
		var lis = $('.top_box .directory ul li');
		userbox.mouseenter(function (e) {
			$('.site-item-nav').removeClass('hidden').addClass('show')
		})
		userbox.mouseleave(function (e) {
			$('.site-item-nav').removeClass('show').addClass('hidden')
		})
		$('.top_box .directory ul li').mouseenter(function (e) {
	
			navDetails.removeClass('hide')
			var li = e.target
			console.log(li)
			var second = type[$(li).data('no')]
			$('.nav-details>ul').empty()
			for (let i = 0; i < second.secodename.length; i++) {
				$('.nav-details>ul').append('<li><img src=' + second.secodename[i].imgurl + ' alt="" class="smallimg"><span>' + second.secodename[i].name + '</span></li>')
			}
	
		})
		$('.directory').mouseleave(function () {
			navDetails.addClass('hide')
		})
		
		
		fixedlis.mouseenter(function (e) {
			let li = e.target
			$(li.children[2]).addClass("show")
			$('.fixed-nav li fixed-pop')
		})
		fixedlis.mouseleave(function (e) {
			let li = e.target
			console.log(li)
			$(li.children[2]).removeClass("show")
		})
		
		$('.new_bookList>.book').click(function (e) {
			var tar = $(e.target)
			var Isbn = tar.parents('.book').data('isbn')
			window.location.href = "detail.jsp"
			/* $.post('BookDetail', {
				isbn : Isbn
			}, function(data) {
				console.log(data)
			}) */ 
		})
		
	</script>
	
	</html>

