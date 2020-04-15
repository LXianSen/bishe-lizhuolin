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
	color:white
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

.top_box .directory ul li {
	padding: 0 30px;
	height: 37px;
	line-height: 37px;
	color: #fff;
	font-size: 14px;
	transition: all .2s ease;
	text-align: left;
	overflow: hidden;
}

.top_box .directory ul li:hover {
	background-color: #684b34;
	color: #f1ede9;
}

.top_box .ads {
	width: 859px;
	height: 338px;
	float: right;
	overflow: hidden;
}
.show{
	display:block
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
    -webkit-box-shadow: 0 0 18px rgba(0,0,0,.1);
    box-shadow: 0 0 18px rgba(0,0,0,.1);
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
    background-image: url(https://shop.io.mi-img.com/static/h5/static3/media/yp-icons.2bf57ccf.png);
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
.m-fixedBar .text{
	margin:0
}
.m-fixedBar ul{
	margin-bottom:0
}
footer{
	height:100px;
}
</style>
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
					<span class="glyphicon glyphicon-search"></span> <input type="text">
				</div>
				<span class="iconfont icon-icon-test search_font"></span>
			</div>
		</div>


		<div class="top_box">
			<div class="directory">
				<ul>
					<li><span>有书推荐</span></li>
					<li>有书推荐</li>
					<li>有书推荐</li>
				</ul>
				<div class="nav-details hide">
					<ul>
						<li>
							<div>
								<p>数学</p>
							</div>
							<div>
								<span>研究生/本科/专科教材</span> <span>|</span> <span>高职高专教材</span> <span>|</span>
								<span>中职教材</span>
							</div>
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
			<li>
				<a class="m-icons m-icons- m-icons-service-fixed" data-src="" href="javascript:;"></a>
				<p class="text">联系客服</p>
				<div class="fixed-pop fixed-service-pop ">
					<div class="pop-inner">
						<p class="info-title">小米有品平台问题，建议反馈，商户和物流问题投诉等请拨打 小米有品客服热线</p>
						<p class="info-phone">400-100-1199</p>
						<p class="info-day">(周一至周日 8：00-18：00)</p>
						<p class="info-des">小米/米家自营品牌，手机电视智能硬件商品或订单发货/退款售后问题 请拨打小米自营客服热线</p>
						<p class="info-phone">400-100-5678</p>
						<p class="info-day">(周一至周日 8：00-18：00)</p>
					</div>
					<a class="m-icons m-icons-arrow-right " data-src="" href="javascript:;"></a>
				</div>
			</li>
			<li>
				<a class="m-icons m-icons- m-icons-download" data-src="" href="javascript:;"></a>
				<p class="text">下载 APP</p>
				<div class="fixed-pop fixed-down-pop ">
					<div class="pop-inner">
						<img class="qr-code" src="https://shop.io.mi-img.com/static/h5/static3/media/code.6b4e6f01.png" alt="qr-code">
						<p class="site-info">下载小米有品APP<br>得新人礼包</p>
					</div>
					<a class="m-icons m-icons-arrow-right " data-src="" href="javascript:;"></a>
				</div>
			</li>
			<li>
				<a class="m-icons m-icons- m-icons-gift" data-src="" href="javascript:;"></a>
				<p class="text">新人有礼</p>
				<div class="fixed-pop fixed-gift-pop ">
					<div class="pop-inner">
						<div class="gift-bg"></div>
						<img class="qr-code" src="https://shop.io.mi-img.com/static/h5/static3/media/code.6b4e6f01.png" alt="qr-code">
						<p class="site-info">立即扫码下载·小米有品 APP</p>
					</div>
					<a class="m-icons m-icons-arrow-right " data-src="" href="javascript:;"></a>
				</div>
			</li>
			<li>
				<a class="m-icons m-icons- m-icons-wx-chat" data-src="" href="javascript:;"></a>
				<p class="text">关注微信</p>
				<div class="fixed-pop fixed-wx-pop ">
					<div class="pop-inner">
						<img class="qr-code" src="https://shop.io.mi-img.com/static/h5/static3/media/wx_code.83208f15.png" alt="qr-code">
						<p class="site-info">扫码关注「小米有品」微信服务号，签到积分赢大奖</p>
					</div>
					<a class="m-icons m-icons-arrow-right " data-src="" href="javascript:;"></a>
				</div>
			</li>
			<li>
				<a class="m-icons m-icons- m-icons-top" data-src="" href="javascript:;"></a>
				<p class="text">回到顶部</p>
			</li>
		</ul>
	</div>

	<footer>
		
	</footer>

	<!-- jQuery (Bootstrap 的所有 JavaScript 插件都依赖 jQuery，所以必须放在前边) -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@1.12.4/dist/jquery.min.js"></script>
	<!-- 加载 Bootstrap 的所有 JavaScript 插件。你也可以根据需要只加载单个插件。 -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js"></script>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
	var lis = $('.top_box .directory ul li');
	var navDetails = $('.top_box .directory .nav-details')
	var fixedlis=$('.fixed-nav li')
	lis.mouseenter(function(e) {
		navDetails.removeClass('hide')
		var li = e.target
		console.log(li)
	})
	lis.mouseleave(function() {
		navDetails.addClass('hide')
	})
	fixedlis.mouseenter(function(e){
		console.log(e)
		let li=e.target
		$(li.children[2]).addClass("show")
		$('.fixed-nav li fixed-pop')
	})
	fixedlis.mouseleave(function(e){
		let li=e.target
		$(li.children[2]).removeClass("show")
	})
</script>
</html>
