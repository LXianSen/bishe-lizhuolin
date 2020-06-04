<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>图书详情</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./iconfont/iconfont.css">
<link rel="stylesheet" href="./css/detail.css?ver=2">
<link rel="stylesheet" href="css/shouye.css?ver=1">
</head>
<body>
	<header>
	</header>
	<div class="content_center">
		<div class="clear">
			<div class="search_box">
				<div class="search">
					<span class="iconfont icon-icon-test1 search_font"></span> <input
						type="text">
				</div>
				<span class="iconfont icon-icon-test search_font shopcart"></span>
			</div>
		</div>
		<div class="book-info">
			<ul class="breadcrumb">
				<li><a href="shouye.jsp">首页</a></li>
				<li class="active"></li>
			</ul>
			<div class="book-info-detail clear">
				<div class="book-info-img">
					<div class="image">
						<img
							src="http://img3m2.ddimg.cn/62/32/25119332-1_u_9.jpg">
					</div>
					<div class="thumb fr" style="display: block;">
						<div class="thumb-container" style="top: 0px;">
							<div class="thumb-pic" style="border-color: rgb(132, 95, 63);">
								<img
									src="http://img3m2.ddimg.cn/62/32/25119332-1_u_9.jpg">
							</div>
							<div class="thumb-pic" style="border-color: rgb(236, 236, 236);">
								<img
									src="http://img3m2.ddimg.cn/62/32/25119332-3_x_8.jpg">
							</div>
							<div class="thumb-pic" style="border-color: rgb(236, 236, 236);">
								<img
									src="http://img3m2.ddimg.cn/62/32/25119332-4_x_8.jpg">
							</div>
							<div class="thumb-pic" style="border-color: rgb(236, 236, 236);">
								<img
									src="http://img3m2.ddimg.cn/62/32/25119332-5_x_3.jpg">
							</div>
						</div>
					</div>
				</div>
				<div class="sku-container">
					<div class="name clearfix">
						<div class="good-name fl"></div>
						<div class="good-tag fl">折扣</div>
					</div>
					<div class="summary">
						<span class="staticWords"></span> 
						<span class="staticWords hyperlinkWords"></span>
					</div>
					<div class="promotion-box"></div>
					<div class="card">
						<div class="price-line">
							<h5 class="sku-title">售价</h5>
							<div class="price">
								<span class="money-symbol">¥</span><span class="value"></span>
							</div>
						</div>
						<div class="service-line">
							<h5 class="sku-title">信息</h5>
							<div class="introduce-container">
								<!-- <p class="icon">!</p> -->
								<div class="content ">
									<div class="cardmodal-outer-container"
										style="width: 500px; left: -20px; top: -20px;">
										<div class="inner-container"
											style="width: 500px; left: 20px; top: 20px;">
											<div class="container" style="width: 494px;">
												<div class="content-main">
													
												</div>
											</div>
										</div>
										<div class="size">
											<div class="content-main">
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="service">
								<div class="service-item">
									<span class="service-item-text author">作者：<span></span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text publish">出版社：<span></span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text publish-data">出版时间：<span></span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text stock">库存：<span></span></span>
								</div>
							</div>
						</div>
					</div>
					<!-- <div class="address-line">
						<h5 class="sku-title">物流</h5>
						<span class="sku-content">预计2020年05月17日开始发货</span>
					</div> -->

					<div>

						<div class="count-line">
							<h5 class="sku-title count-title">数量</h5>
							<div class="count-container">
								<div>
									<div class="minus-btn">
										<span class="iconfont icon-jianhao"></span>
									</div>
									<input type="text" value="1" class="count-input">
									<div class="minus-btn-active">
										<a class="m-icons m-icons-add-active " data-src="" href="javascript:;"></a>
										<!-- <span class="iconfont icon-add"></span> -->
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="btn-line">
						<div class="buy-btn-container">
							<a class="m-btns m-btn-middle m-btn-brown cart"
								>加入购物车</a>
						</div>
						<div class="buy-btn-container">
							<a class="m-btns m-btn-middle m-btn-brown-stroke buy"
								href="javascript:;">立即购买</a>
						</div>
						<div class="favor-btn ">
							<div>
								<span class="iconfont icon-icon-test8" style="font-size:20px"></span>
								<p style="line-height:24px">收藏</p>
							</div>
						</div>
						
					</div>
				</div>
			</div>
		</div>
		<div class="m-fixedBar">
	</div>
	<div class="fixed-tips">
		<span>该商品添加成功</span>
	</div>
	</div>
	<footer></footer>
	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- 包括所有已编译的插件 -->
	<script src="js/bootstrap.min.js"></script>
</body>
<script type="text/javascript"
	src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script src="js/detail.js?ver=2"></script>
<script type="text/javascript" src="header.js?ver=2"></script>
<script type="text/javascript" src="navigation.js?ver=1"></script>
<script type="text/javascript" src="footer.js?ver=1"></script>
</html>