<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>Bootstrap 模板</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入 Bootstrap -->
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="./iconfont/iconfont.css">
<link rel="stylesheet" href="./css/detail.css?ver=2">
<!-- HTML5 Shiv 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
<!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
<!--[if lt IE 9]>
         <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
         <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
      <![endif]-->
</head>
<body>
	<header>
		<div class="headerCenter">
			<a>登录</a> <a>注册</a>
		</div>
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
				<li><a href="#">首页</a></li>
				<li class="active">白夜行</li>
			</ul>
			<div class="book-info-detail">
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
						<div class="good-name fl">白夜行</div>
						<div class="good-tag fl">折扣</div>
					</div>
					<div class="summary">
						<span class="staticWords">我一直走在白夜里，从来就没有太阳，所以不怕失去。</span> <span
							class="staticWords hyperlinkWords"></span>
					</div>
					<div class="promotion-box"></div>
					<div class="card">
						<div class="price-line">
							<h5 class="sku-title">售价</h5>
							<div class="price">
								<span class="money-symbol">¥</span><span class="value">41.10</span>
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
													<div class="text-item">
														<p class="text-title">满99包邮</p>
														<p class="text-content">本商品满99元可包邮，不足99元收取运费10元</p>
													</div>
													<div class="text-item">
														<p class="text-title">有品三方</p>
														<p class="text-content">
															本商品为有品精选精品，第三方品牌方为实际销售方，小米有品精心挑选，严格把关，为您精选品质上乘的精品商品。</p>
													</div>
													<div class="text-item">
														<p class="text-title">由中山市华艺灯饰照明股份有限公司发货并提供售后</p>
														<p class="service-item-qualification">查看商家资质</p>
													</div>
													<div class="text-item">
														<p class="text-title">7天无理由</p>
														<p class="text-content">本商品支持7天无理由退货 (安装后不支持)</p>
													</div>
													<div class="text-item">
														<p class="text-title">平台运费说明</p>
														<p class="text-content">由小米平台发货的小米自营商品,单笔满49元免运费,不满49元收取10元运费;
														</p>
														<p class="text-content">
															有品自营产品、有品平台三方产品，单笔订单满99元免运费，不满99元收取10元运费;</p>
														<p class="text-content">特殊商品需要单独收取运费,具体以实际结算金额为准;</p>
														<p class="text-content">优惠券不能抵扣运费。</p>
													</div>
													<div class="text-item">
														<p class="text-title">退换货运费声明</p>
														<p class="text-content">非质量问题退换货,运费不予返还;</p>
														<p class="text-content">因质量问题退换货,运费予以返还,多件产品只退部分产品时,运费按比例返还;</p>
														<p class="text-content">电视等大件商品,无质量问题退货产生的运费由购买者承担,从退款中直接扣除。</p>
														<p class="text-content">包邮订单申请退款，剩余订单不达包邮门槛，将补扣10元运费。</p>
													</div>
													<div class="text-item">
														<p class="text-title">企业信息</p>
														<p class="text-content">企业名称： 中山市华艺灯饰照明股份有限公司</p>
														<p class="text-content">企业执照注册号： 91442000708060260Q</p>
														<p class="text-content">企业地址： 广东中山市中山市中山市古镇镇东兴东路华艺工业园区</p>
														<p class="text-content">营业期限： 长期</p>
														<p class="text-content">经营范围：
															设计、生产、销售：电光源、照明灯具及配件、半导体光电器具及组件、输配电及控制设备、模具、家用通风电器及其他照明器具和灯用电器附件：经营货物技术进出口业务（国家限定公司经营和国家禁止进出口的商品除外；不单列贸易方式）；承接环境灯光安装及设计工程（依法须经批准的项目，经相关部门批准后方可开展经营）
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="size">
											<div class="content-main">
												<div class="text-item">
													<p class="text-title">满99包邮</p>
													<p class="text-content">本商品满99元可包邮，不足99元收取运费10元</p>
												</div>
												<div class="text-item">
													<p class="text-title">有品三方</p>
													<p class="text-content">
														本商品为有品精选精品，第三方品牌方为实际销售方，小米有品精心挑选，严格把关，为您精选品质上乘的精品商品。</p>
												</div>
												<div class="text-item">
													<p class="text-title">由中山市华艺灯饰照明股份有限公司发货并提供售后</p>
													<p class="service-item-qualification">查看商家资质</p>
												</div>
												<div class="text-item">
													<p class="text-title">7天无理由</p>
													<p class="text-content">本商品支持7天无理由退货 (安装后不支持)</p>
												</div>
												<div class="text-item">
													<p class="text-title">平台运费说明</p>
													<p class="text-content">由小米平台发货的小米自营商品,单笔满49元免运费,不满49元收取10元运费;</p>
													<p class="text-content">有品自营产品、有品平台三方产品，单笔订单满99元免运费，不满99元收取10元运费;
													</p>
													<p class="text-content">特殊商品需要单独收取运费,具体以实际结算金额为准;</p>
													<p class="text-content">优惠券不能抵扣运费。</p>
												</div>
												<div class="text-item">
													<p class="text-title">退换货运费声明</p>
													<p class="text-content">非质量问题退换货,运费不予返还;</p>
													<p class="text-content">因质量问题退换货,运费予以返还,多件产品只退部分产品时,运费按比例返还;</p>
													<p class="text-content">电视等大件商品,无质量问题退货产生的运费由购买者承担,从退款中直接扣除。</p>
													<p class="text-content">包邮订单申请退款，剩余订单不达包邮门槛，将补扣10元运费。</p>
												</div>
												<div class="text-item">
													<p class="text-title">企业信息</p>
													<p class="text-content">企业名称： 中山市华艺灯饰照明股份有限公司</p>
													<p class="text-content">企业执照注册号： 91442000708060260Q</p>
													<p class="text-content">企业地址： 广东中山市中山市中山市古镇镇东兴东路华艺工业园区</p>
													<p class="text-content">营业期限： 长期</p>
													<p class="text-content">经营范围：
														设计、生产、销售：电光源、照明灯具及配件、半导体光电器具及组件、输配电及控制设备、模具、家用通风电器及其他照明器具和灯用电器附件：经营货物技术进出口业务（国家限定公司经营和国家禁止进出口的商品除外；不单列贸易方式）；承接环境灯光安装及设计工程（依法须经批准的项目，经相关部门批准后方可开展经营）
													</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="service">
								<div class="service-item">
									<span class="service-item-text author">作者：<span>东野圭吾</span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text publish">出版社：<span>南海出版社</span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text publish-data">出版时间：<span>2017年8月</span></span>
								</div>
								<div class="service-item">
									<span class="service-item-text stock">库存：<span>99</span></span>
								</div>
							</div>
						</div>
					</div>
					<div class="address-line">
						<h5 class="sku-title">物流</h5>
						<span class="sku-content">预计2020年05月17日开始发货</span>
					</div>

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
										<span class="iconfont icon-add"></span>
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
	</div>
	<div class="fixed-tips">
		<span>该商品添加成功</span>
	</div>
	</div>

	<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
	<script src="https://code.jquery.com/jquery.js"></script>
	<!-- 包括所有已编译的插件 -->
	<script src="js/bootstrap.min.js"></script>
</body>
<script type="text/javascript"
	src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script src="js/detail.js?ver=2">
	
</script>
</html>