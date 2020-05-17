<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Bootstrap 模板</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- 引入 Bootstrap -->
		<link href="./css/bootstrap.min.css" rel="stylesheet">
		<link rel="stylesheet" href="./iconfont/iconfont.css?ver=1">
		<link rel="stylesheet" href="css/shouye.css?ver=2">
		
		
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
							<span class="iconfont icon-icon-test2"></span>
							<span class="m-username">丑丑小怪物</span>
							<span class="iconfont icon-icon-test10"></span>
						</a>
						<div class="site-item-nav hidden">
							<ul class="site-nav user-nav">
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/orders" href="#"
										class="m-safe-anchor">我的订单</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/collections" href="#"
										class="m-safe-anchor">我的收藏</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/address" href="#"
										class="m-safe-anchor">地址管理</a></li>
								<li class="exit"><a rel="nofollow" href="javascript:;">退出登录</a></li>
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
				<div class="shopcart-mark">1</div>
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
							<img src="http://img62.ddimg.cn/upload_img/00838/cxtc/750x315-1589001800.jpg" style="width:100%"
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
							<div class="person-brief">
								陈磊（笔名：二混子）漫画式科普的开创者，80后，创立拥有全网700万粉丝的知识类公众号“混子曰”“混子谈钱”“着迷小课”及“混子谈命”，总阅读量超过2.5亿人次，曾获网站度新锐作家、年度挚爱阅读大使等称号。“混子曰”公众号下的“Stone历史剧”栏目，
							</div>
						</div>
					</div>
					<div class="person-book">
						<div class="perbook">
							<div class="perbook-img">
								<img src="http://img3m0.ddimg.cn/12/14/24242340-1_b_16.jpg" alt="半小时漫画中国史">
							</div>
							<div class="perbook-name">半小时漫画中国史</div>
						</div>
						<div class="perbook">
							<div class="perbook-img">
								<img src="http://img3m9.ddimg.cn/81/1/25272999-1_b_9.jpg" alt="半小时漫画中国史2">
							</div>
							<div class="perbook-name">半小时漫画中国史2</div>
						</div>
						<div class="perbook">
							<div class="perbook-img">
								<img src="http://img3m8.ddimg.cn/21/1/25301748-1_b_5.jpg" alt="半小时漫画中国史3">
							</div>
							<div class="perbook-name">半小时漫画中国史3</div>
						</div>
						<div class="perbook">
							<div class="perbook-img">
								<img src="http://img3m3.ddimg.cn/83/14/27931943-1_b_6.jpg" alt="半小时漫画中国史4">
							</div>
							<div class="perbook-name">半小时漫画中国史4</div>
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
					<div class="per-person">
						<span class="per-no">3</span>
						<span class="per-person-name">余华</span>
					</div>
					<div class="per-person">
						<span class="per-no">4</span>
						<span class="per-person-name">余秋雨</span>
					</div>
					<div class="per-person">
						<span class="per-no">5</span>
						<span class="per-person-name">曹文轩</span>
					</div>
					<div class="per-person">
						<span class="per-no">6</span>
						<span class="per-person-name">大冰</span>
					</div>
					<div class="per-person">
						<span class="per-no">7</span>
						<span class="per-person-name">东野圭吾</span>
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

	<footer>
		<div class="footer-text">@2020.04 </div>
	</footer>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/shouye.js?ver=2"></script>

</html>