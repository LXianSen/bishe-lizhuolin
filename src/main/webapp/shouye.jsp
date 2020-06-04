<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>首页</title>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 引入 Bootstrap -->
	<link href="./css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="./iconfont/iconfont.css?ver=1">
	<link rel="stylesheet" href="css/shouye.css?var=1">
</head>
<body>
	<header>
	</header>
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
					<ul></ul>
				</div>
			</div>
		</div>

		<!-- 分类 -->
		<div class="top_box">
			<div class="directory">
				<ul>
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
						<li data-target="#myCarousel" 
						data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">
						<div class="item active">
							<img 
								src="http://img62.ddimg.cn/upload_img/00838/cxtc/750x315-1589001800.jpg" 
								style="width:100%"
								alt="First slide">
						</div>
						<div class="item">
							<img src="images/750x315-1589874530.jpg" style="width:100%"
								alt="Second slide">
						</div>
						<div class="item">
							<img src="images/750x315-1590132559.jpg" style="width:100%"
								alt="Third slide">
						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a class="left carousel-control" 
						href="#myCarousel" 
						role="button" 
						data-slide="prev"> 
						<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> 
					<a class="right carousel-control" 
						href="#myCarousel" 
						role="button" 
						data-slide="next"> 
						<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>
			</div>
		</div>

		<div class="new_box">
			<div class="new_title">
				<h2>新书上架</h2>
			</div>
			<div class="new_bookList"></div>
		</div>
		
		<div class="like_box">
			<!-- <div class="like_title">
				<h2>猜你喜欢</h2>
			</div>
			<div class="like_bookList"></div> -->
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
	</div>

	<footer>
	</footer>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="js/shouye.js?ver=1"></script>
<script type="text/javascript" src="header.js?ver=2"></script>
<script type="text/javascript" src="navigation.js?ver=1"></script>
<script type="text/javascript" src="footer.js?ver=1"></script>

</html>