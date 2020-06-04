<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>结算</title>
<link rel="stylesheet" href="css/order.css">
<link rel="stylesheet" href="iconfont/iconfont.css">
<link rel="stylesheet" href="css/shouye.css?ver=2">
<style>
* {
	margin: 0;
	padding: 0;
}

.express-append {
	border-top: 1px solid #e7e7e7;
	position: relative;
}

.wrapper {
	margin: 0 auto 100px;
	width: 1073px;
	min-height: 400px;
}

.m-toast-group.m-toast-top-center {
	top: 0;
	right: 0;
	width: 100%;
}

.m-toast-group {
	position: fixed;
	z-index: 999999;
	pointer-events: auto;
	margin-bottom: 20px;
	text-align: center;
}

.m-secondary-navigator {
	padding: 30px 0;
	width: 100%;
	display: block;
	float: none;
	background: transparent repeat 0 0 none;
	font-size: 13px;
}

.m-secondary-navigator span:first-child a {
	margin-left: 0;
}

.m-secondary-navigator span:after {
	content: ">";
}

.m-secondary-navigator span a:active, .m-secondary-navigator span a:focus,
	.m-secondary-navigator span a:visited {
	color: #000;
}

.m-secondary-navigator span a {
	margin: 0 6px;
	cursor: pointer;
	color: #000;
}

a, button {
	outline: none;
}

.m-secondary-navigator span:last-child:after {
	content: "";
}

.m-secondary-navigator span:last-child a:active, .m-secondary-navigator span:last-child a:focus,
	.m-secondary-navigator span:last-child a:visited {
	color: #999;
}

.m-secondary-navigator span:last-child a {
	color: #999;
	cursor: default;
}

.checkout-coupons-con {
	position: relative;
	float: left;
	height: 40px;
	margin-top: 10px;
	color: #c00000;
}

.checkout-summary, .checkout-summary-noborder {
	margin-top: 37px;
	text-align: right;
}

.checkout-summary {
	border-bottom: 1px solid #e7e7e7;
}

.wrapper .bottom-pay {
	margin-top: 45px;
	text-align: right;
}

.wrapper .address .title {
	margin-bottom: 15px;
	font-size: 19px;
	color: #333;
}

.clearfix {
	*zoom: 1;
}

.wrapper .address .moreAddress {
	margin-top: 15px;
	margin-bottom: 8px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 42px;
	line-height: 42px;
	background-color: #fafafa;
	width: 100%;
	text-align: center;
	color: #999;
	font-size: 14px;
	-webkit-transition: all .5s cubic-bezier(0, 1, .5, 1);
	-o-transition: all .5s cubic-bezier(0, 1, .5, 1);
	transition: all .5s cubic-bezier(0, 1, .5, 1);
	cursor: pointer;
}

.clearfix:after, .clearfix:before {
	content: " ";
	display: table;
}

.wrapper .address .list .address-list .address-item {
	width: 250px;
}

.address-list .toAddAddress .addIcon {
	margin-left: 0 auto;
	margin-right: 0 auto;
	margin-top: 68px;
	text-align: center;
}

.address-list .toAddAddress .addAds {
	margin: 0 auto;
	margin-top: 10px;
	text-align: center;
	color: #ccc;
	font-size: 14px;
}

.m-icons-addAddress {
	width: 27px;
	height: 27px;
	background-position: 0 -648px;
}

.m-icons {
	display: inline-block;
	background-image:
		url(https://shop.io.mi-img.com/static/h5/static3/media/yp-icons.2bf57ccf.png);
}

.wrapper .address .moreAddress .txt {
	margin-right: 8px;
}

.m-icons-down1 {
	width: 12px;
	height: 12px;
	background-position: 0 -86px;
}

.wrapper .form-item {
	overflow: hidden;
	margin: 36px 20px 0;
}

.wrapper .form-item .left-label {
	float: left;
	height: 50px;
	line-height: 50px;
	font-size: 19px;
	color: #333;
}

.wrapper .form-item .desc {
	margin-left: 50px;
	display: inline-block;
	height: 50px;
	line-height: 50px;
	font-size: 14px;
	color: #845f3f;
}

.wrapper .merchant .merchant-info {
	margin-top: 55px;
	margin-bottom: 17px;
	height: 30px;
}

.wrapper .merchant .merchant-spread {
	border: 1px solid #e7e7e7;
	padding-left: 20px;
	padding-right: 20px;
}

.wrapper .merchant .merchant-info .icon, .wrapper .merchant .merchant-info .name
	{
	display: inline-block;
	height: 30px;
	line-height: 30px;
}

.wrapper .merchant .merchant-info .name {
	margin-left: 10px;
	font-size: 14px;
	color: #333;
}

.wrapper .merchant .merchant-info .threshold {
	font-size: 12px;
	color: #999;
}

img {
	vertical-align: middle;
	border: none;
}

.wrapper .merchant .merchant-spread {
	border: 1px solid #e7e7e7;
	padding-left: 20px;
	padding-right: 20px;
}

.wrapper .merchant .good-container {
	position: relative;
	height: 90px;
	line-height: 90px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	overflow: hidden;
	border-bottom: 1px solid #e7e7e7;
}

.wrapper .merchant .form-item {
	margin-left: 0;
	margin-right: 0;
	border-bottom: none;
}

.wrapper .merchant .good-container .pro-support {
	position: absolute;
	left: 65px;
	bottom: 3px;
	height: 25px;
	line-height: 25px;
	font-size: 12px;
	color: #999;
}

.wrapper .merchant .good-container .img {
	width: 50px;
}

.wrapper .merchant .good-container .name {
	margin-left: 20px;
	width: 400px;
	color: #333;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
	white-space: nowrap;
	position: relative;
}

.wrapper .merchant .good-container .total {
	text-align: right;
	width: 180px;
	color: #c00000;
}

.wrapper .merchant .good-container .pro-support a {
	margin-right: 5px;
	vertical-align: -2px;
}

.wrapper .merchant .good-container .name .product-name {
	display: inline-block;
	vertical-align: middle;
}

.wrapper .merchant .good-container .total .txt {
	margin-right: 3px;
}

.wrapper .merchant .form-item.no-border {
	border-bottom: none;
}

.wrapper .form-invoice-pro {
	margin: 10px 0 0 126px;
}

.wrapper .form-item .left-label {
	float: left;
	height: 50px;
	line-height: 50px;
	font-size: 19px;
	color: #333;
}

.wrapper .merchant .form-item .select {
	margin-left: 51px;
	float: left;
}

.wrapper .merchant .form-item .select .option-list {
	height: 50px;
	line-height: 50px;
}

.wrapper .merchant .form-item .select .option-list .active {
	color: #845f3f;
	border: 1px solid #845f3f;
}

.wrapper .merchant .form-item .select .option-list .option {
	width: 247.5px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	display: inline-block;
	height: 44px;
	line-height: 42px;
	background-color: #fff;
	text-align: center;
	color: #333;
	font-size: 14px;
	cursor: pointer;
	border: 1px solid #e7e7e7;
	-webkit-transition: all .5s cubic-bezier(0, 1, .5, 1);
	-o-transition: all .5s cubic-bezier(0, 1, .5, 1);
	transition: all .5s cubic-bezier(0, 1, .5, 1);
}

.wrapper .merchant .form-item .select .option-list .option+.option {
	margin-left: 10px;
}

.wrapper .form-invoice-pro {
	margin: 10px 0 0 126px;
}

.wrapper .form-invoice-pro a {
	font-size: 14px;
	color: #67a3d9;
	text-decoration: underline;
}

.wrapper .merchant .form-item {
	margin-left: 0;
	margin-right: 0;
	border-bottom: none;
}

.wrapper .form-item .left-label {
	float: left;
	height: 50px;
	line-height: 50px;
	font-size: 19px;
	color: #333;
}

.wrapper .merchant .form-item .select {
	margin-left: 51px;
	float: left;
}

.wrapper .merchant .form-item .select .userMessage {
	margin-top: 23px;
	resize: none;
	width: 762.5px;
	height: 100px;
	border: 1px solid #e7e7e7;
	outline: none;
	padding-left: 15px;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	font-size: 14px;
	padding-top: 12px;
}

.wrapper .check-freeInfo {
	text-align: right;
}

.fr {
	float: right;
}

.wrapper .check-freeInfo .freeInfo-item {
	height: 25px;
	font-size: 14px;
	display: block;
	position: relative;
}

.wrapper .check-freeInfo .fee-map-item {
	position: relative;
	z-index: 999;
}

.wrapper .check-freeInfo .freeInfo-item {
	height: 25px;
	font-size: 14px;
	display: block;
	position: relative;
}

.wrapper .check-freeInfo .freeInfo-item {
	height: 25px;
	font-size: 14px;
	display: block;
	position: relative;
}

.wrapper .check-freeInfo .total {
	font-size: 18px;
	margin-top: 37px;
	margin-bottom: 20px;
}

.wrapper .check-freeInfo .freeInfo-item .freeInfo-key {
	position: absolute;
	width: 126px;
	display: block;
}

.wrapper .check-freeInfo .freeInfo-item .freeInfo-value {
	margin-left: 25px;
	margin-right: 20px;
	padding-left: 126px;
	display: block;
	color: #c00000;
	white-space: nowrap;
	overflow: hidden;
	-o-text-overflow: ellipsis;
	text-overflow: ellipsis;
}

.wrapper .check-freeInfo .total .freeInfo-value {
	margin-right: 20px;
	color: #c00000;
}

.m-btn-brown {
	color: #fff;
	background-color: #845f3f;
	border-color: #845f3f;
}

.m-btn-middle {
	min-width: 167px;
	height: 52px;
	line-height: 50px;
	font-size: 20px;
}

.m-btns {
	display: inline-block;
	border-radius: 2px;
	text-align: center;
	color: #666;
	border: 1px solid #666;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	padding: 0 6px;
	-webkit-transition: all .5s cubic-bezier(0, 1, .5, 1);
	-o-transition: all .5s cubic-bezier(0, 1, .5, 1);
	transition: all .5s cubic-bezier(0, 1, .5, 1);
}

li, ol, ul {
	list-style: none;
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

.m-fixedBar .fixed-service-pop {
	width: 230px;
	left: -244px;
}

.m-fixedBar .fixed-pop {
	position: absolute;
	left: -144px;
	top: 0;
	display: none;
	padding-right: 20px;
}

.m-fixedBar .fixed-service-pop .pop-inner {
	padding: 10px 18px;
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

.m-fixedBar .fixed-service-pop .info-title {
	margin-top: 8px;
	color: #333;
	font-size: 12px;
}

.m-fixedBar .fixed-service-pop .info-phone {
	margin-top: 15px;
	color: #845f3f;
	font-size: 20px;
}

.m-fixedBar .fixed-service-pop .info-day {
	margin-top: 1px;
	color: #666;
	font-size: 12px;
}

.m-fixedBar .fixed-service-pop .info-des {
	margin-top: 18px;
	color: #333;
	font-size: 12px;
}

.m-fixedBar .fixed-service-pop .info-phone {
	margin-top: 15px;
	color: #845f3f;
	font-size: 20px;
}

.m-fixedBar .fixed-service-pop .info-day {
	margin-top: 1px;
	color: #666;
	font-size: 12px;
}

.m-fixedBar .fixed-down-pop {
	width: 130px;
	overflow: hidden;
}

.m-fixedBar .pop-inner {
	padding: 10px;
	border: 1px solid #dfdfdf;
	background: #fff;
}

.address-list .first {
	margin-left: 0;
}

.address-list .unselected {
	border: 1px solid #e7e7e7;
}

.address-list .address-item {
	background: #fff;
	margin-bottom: 10px;
	height: 200px;
	position: relative;
}

.clearfix:after {
	clear: both;
}

.m-btn-brown {
	color: #fff;
	background-color: #845f3f;
	border-color: #845f3f;
}

a {
	text-decoration: none;
}

.modal-data  .submit-box {
	background: white;
}
</style>
</head>

<body>
	<header> </header>
	<div class="express-append">
		<div class="wrapper">
			<div class="m-secondary-navigator">
				<span><a href="/">首页</a></span><span><a href="/cart">购物车</a></span><span><a
					href="#">确认页</a></span>
			</div>
			<div>
				<div class="address">
					<div class="title">收货地址</div>
					<div class="clearfix list">
						<div class="address-list ">
							<div class="address-list ">
								<div class="address-item first selected notHidden">
									<div class="address-item-content">
										<div class="mark addr-visible">默认</div>
										<div class="content">
											<div class="name"></div>
											<div class="tel"></div>
											<div class="city"></div>
											<div class="address"></div>
											<div class="cityno"></div>
										</div>
										<div class="update isHidden">
											<span>修改</span><span>删除</span>
										</div>
									</div>
								</div>
								<div class="address-item others unselected toAddAddress">
									<div class="addIcon">
										<a class="m-icons m-icons-addAddress " data-src=""
											href="javascript:;"></a>
									</div>
									<div class="addAds">添加新地址</div>
								</div>
							</div>
						</div>
					</div>
					<div class="moreAddress">
						<span class="txt">显示更多收货地址</span><a
							class="m-icons m-icons- m-icons-down1" data-src=""
							href="javascript:;"></a>
					</div>
				</div>
				<div class="quick-payment">
					<div class="form-item">
						<span class="left-label">支付方式</span><span class="desc">在线支付</span>
					</div>
					<div class="form-item">
						<span class="left-label">配送方式</span><span class="desc">快递配送</span>
					</div>
				</div>
				<div>
					<div class="merchant clearfix">
						<div class="merchant-info clearfix">
							<div class="icon">
								<img class=""
									src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAY1BMVEUAAACGXTKGXjKFXjOFXjObZzOGXzGHXzOGYDOFXTKFXjOGXjKFXjGGYTOGXTGHXzGGXTGHXzOHXTKGXjGGXjKGXTKHXTGKXzOZZj2GXTKGXjGGXjGHXjOHYDSHYjWGYT2FXTE81JceAAAAIHRSTlMA2PBaiASBRlD7Qb6wNt+Mqi5R0aBzaB0IzrV7aToiFU6bVX4AAAC/SURBVEjH7dLJCsMgFIXhq0mrNlPNPLb3/Z+ypiAhAyZ30wHyrzyLDxGEs59L4DzV+LUTSFzFKiLAlgowcoAUTZ2wFXzc/R6IFjtxALkANRWA+j+gA1MFU6HZHnwt6c0b7Ed9mCE3AC5THby7juPiBLacClDsAcVs3F7hBv40i3E3BACZ2TEF3A8DUZblQAHMHMJPAUYBT611RQBTCRVkR0B2s6Ut2tc7wKqQCJSmAdXDRjHnvABTwOexPIIzYi8e5Dp3abNxGgAAAABJRU5ErkJggg=="
									data-src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADAAAAAwCAMAAABg3Am1AAAAY1BMVEUAAACGXTKGXjKFXjOFXjObZzOGXzGHXzOGYDOFXTKFXjOGXjKFXjGGYTOGXTGHXzGGXTGHXzOHXTKGXjGGXjKGXTKHXTGKXzOZZj2GXTKGXjGGXjGHXjOHYDSHYjWGYT2FXTE81JceAAAAIHRSTlMA2PBaiASBRlD7Qb6wNt+Mqi5R0aBzaB0IzrV7aToiFU6bVX4AAAC/SURBVEjH7dLJCsMgFIXhq0mrNlPNPLb3/Z+ypiAhAyZ30wHyrzyLDxGEs59L4DzV+LUTSFzFKiLAlgowcoAUTZ2wFXzc/R6IFjtxALkANRWA+j+gA1MFU6HZHnwt6c0b7Ed9mCE3AC5THby7juPiBLacClDsAcVs3F7hBv40i3E3BACZ2TEF3A8DUZblQAHMHMJPAUYBT611RQBTCRVkR0B2s6Ut2tc7wKqQCJSmAdXDRjHnvABTwOexPIIzYi8e5Dp3abNxGgAAAABJRU5ErkJggg=="
									alt="有品精选" style="width: 30px; height: 30px;">
							</div>
							<span class="name">商品列表</span><span class="threshold"></span>
						</div>
						<div class="merchant-spread">
							<!-- <div class="good-container clearfix">
                                    <p class="pro-support">
                                    	<a class="m-icons m-icons-service " data-src="" href="javascript:;"></a>
                                    </p>
                                    <span class="img">
                                    	<img class="" style="width: 50px; height: 50px;">
                                    </span>
                                    <span class="name">
                                          <span class="product-name">白夜行</span>
                                    </span>
                                    <span class="total"><span class="">￥</span>
                                    <span class="txt">41.10</span>
                                    </span>
                                    <span
                                        class="price">41.10元×1</span>
                                </div> -->
							<!-- <div class="good-container clearfix">
                                    <p class="pro-support">
                                    	<a class="m-icons m-icons-service " data-src="" href="javascript:;"></a>
                                    </p>
                                    <span class="img">
                                    	<img class="" style="width: 50px; height: 50px;">
                                    </span>
                                    <span class="name">
                                          <span class="product-name">朗菲去污地垫套装（3D）版CS-627 黑色 组合装</span>
                                    </span>
                                    <span class="total"><span class="">￥</span>
                                    <span class="txt">159.00</span>
                                    </span>
                                    <span
                                        class="price">159.00元×1</span>
                                </div> -->

							<div class="form-item">
								<span class="left-label">买家留言</span><span class="select"><textarea
										type="text" class="userMessage marginBottom"
										placeholder="填写内容需与商家协商并确认，45字以内" maxlength="45"></textarea></span>
							</div>
						</div>
					</div>
				</div>
				<div class="checkout-summary clearfix">
					<div class="check-freeInfo fr">
						<div class="freeInfo-item book-total">
							<span class="freeInfo-key">商品总价：</span><span
								class="freeInfo-value">320.00元</span>
						</div>
						<div class="freeInfo-item discount-total">
							<span class="freeInfo-key">优惠：</span><span class="freeInfo-value">0.00元</span>
						</div>
						<div class="total">
							<span class="freeInfo-key">合计：</span><span class="freeInfo-value">￥320.00</span>
						</div>
					</div>
				</div>
				<div class="bottom-pay">
					<a class="m-btns m-btn-middle m-btn-brown goOrder"
						href="javascript:;">去下单</a>
				</div>
			</div>
		</div>
		<div class="m-toast-group m-toast-top-center"></div>
	</div>

	<div class="m-modal-portal isHidden">
		<div class="m-overlay m-overlay-opened">
			<div class="m-modal m-modal-opened modal-content" tabindex="-1"
				aria-label="">
				<div class="modal-data ">
					<div class="title">
						<div class="mark layer-title">修改收货地址</div>
						<div class="closeIcon">
							<span class="iconfont icon-icon-test5"></span>
						</div>
					</div>
					<div class="lines"></div>
					<div class="input-box">
						<div class="input-u">
							<input type="text" placeholder="姓名" class="m-input default uname"
								value="">
							<div class="hint default"></div>
						</div>
						<div class="input-u">
							<input type="text" placeholder="手机号" class="m-input default utel"
								value="">
							<div class="hint default"></div>
						</div>
					</div>
					<div class="input-box2">
						<div class="input-u">
							<input type="text" placeholder="选择省／市／区／街道"
								class="m-input default province" value="" readonly="">
							<div class="hint default"></div>
						</div>
					</div>
					<div class="input-box2">
						<div class="input-u">
							<input type="text" placeholder="详细地址"
								class="m-input default address"></input>
							<div class="hint default"></div>
						</div>
					</div>

					<div class="submit-box">
						<a class="submit-center m-btns m-btn-lg m-btn-brown saveaddress"
							href="javascript:;">保存</a><a
							class="submit-margin submit-center m-btns m-btn-lg m-btn-brown canclebtn"
							href="javascript:;">取消</a>
					</div>
					<div class="selectAddress isHidden">
						<div class="closeIcon">
							<a class="m-icons m-icons-close-hover " data-src=""
								href="javascript:;"></a>
						</div>
						<div class="selectTitle">
							<span class="ts-span">选择省/自治区</span>
						</div>
						<div class="line"></div>
						<div class="address-content">
							<span>北京</span><span>天津</span><span>河北</span><span>山西</span><span>内蒙古</span><span>辽宁</span><span>吉林</span><span>黑龙江</span><span>上海</span><span>江苏</span><span>浙江</span><span>安徽</span><span>福建</span><span>江西</span><span>山东</span><span>河南</span><span>湖北</span><span>湖南</span><span>广东</span><span>广西</span><span>海南</span><span>重庆</span><span>四川</span><span>贵州</span><span>云南</span><span>西藏</span><span>陕西</span><span>甘肃</span><span>青海</span><span>宁夏</span><span>新疆</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="m-fixedBar"></div>
	<footer></footer>
</body>
<script type="text/javascript"
	src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="header.js?ver=1"></script>
<script type="text/javascript" src="navigation.js?ver=1"></script>
<script type="text/javascript" src="footer.js?ver=1"></script>
<!-- <script src="js/city-picker.js"></script> -->
<script>
    var isadd,addressID,addressFlag=false
    addressinit()
    
	
    
    
    function addressinit(){
    	$.post("OrderCommit",{},function(data){
    		data=JSON.parse(data)
    		if(data.code=="error"){
    			window.location.href="login.jsp"
    		}else{
    			console.log(data)
    			if(data.length==0){
    				addressFlag=true
    			}
    			$(".address-list").empty()
    			data.forEach(function(item,index){
    				$(".address-list").append('<div class="address-item others unselected notHidden" data-no='+item.addressid+'><div class="address-item-content"><div class="mark addr-unvisible">默认</div><div class="content"><div class="name">'+item.contact+'</div><div class="tel">'+item.tel+'</div><div class="city">'+item.province+'/'+item.city+'/'+item.county+'</div><div class="address">'+item.details+'</div></div><div class="update isHidden"><span>设为默认地址</span><span>修改</span><span>删除</span></div></div></div>')
    				if(item.isdefault=="1"){
    					sessionStorage.setItem("addressInfo",JSON.stringify(item))
    					$(".address-item").addClass("first").removeClass("others").addClass("selected").removeClass("unselected")
    					$(".mark").addClass("addr-visible").removeClass("addr-unvisible")
    					$(".update span:first").remove()
    				}
    				
    			})
    			$(".address-list").append('<div class="address-item others unselected toAddAddress"><div class="addIcon"><span class="iconfont icon-add"></span></div><div class="addAds">添加新地址</div></div>')
    			
    		}
    	})
    }
    	
        $(".address-list").on("mouseover",".address-item",function(e){
            console.log(1)
            var tar = $(e.target)
            tar.children().children(".update").removeClass("isHidden")
        })
        $(".address-list").on("mouseleave",".address-item",function(e){
            console.log($(e.target))
            var tar = $(e.target)
            if (tar.is("span")) {
                $(".update").addClass("isHidden")
            } else {
                tar.children().children(".update").addClass("isHidden")
            }
    
        })
        $(".address-list").on("click",".update",function(e){
            var tar = $(e.target)
            switch (tar.text()) {
                case "设为默认地址": {
                    $(".address-item").addClass("unselected").removeClass("selected")
                    $(".mark").addClass("addr-unvisible").removeClass("addr-visible")
                    tar.parents(".address-item").addClass("selected").removeClass("unselected")
                    tar.parents(".address-item-content").children(".mark").addClass("addr-visible").removeClass("addr-unvisible")
                    $(".update").prepend("<span>设为默认地址</span>")
    	  			tar.parents(".update").children().first().remove()
                    $.post("SetDefaultAddress",{addressid:tar.parents(".address-item").data("no"),isdefault:"1"},function(){
    
                    })
                    break
                };
                case "删除": {
                    tar.parents(".address-item").remove()
                    break
                };
                case "修改": {
                	isadd=false
                    let content=tar.parents(".address-item-content").children(".content")
                    $(".layer-title").text("修改收货地址");
                    $(".m-modal-portal").removeClass("isHidden")
                    $(".uname").val(content.children('.name').text())
                    $(".utel").val(content.children('.tel').text())
    				$(".province").val(content.children(".city").text())
    				$(".address").val(content.children(".address").text())
    				$(".cityno").val(content.children(".cityno").text())
    				ary=content.children(".city").text().split("/")
    				addressID=tar.parents(".address-item").data("no")
                }
            }
        })
        $(".title>.closeIcon").click(function(){
            $(".m-modal-portal").addClass("isHidden")
        })
        $(".address-list").on("click",".toAddAddress",function(e){
        	$(".layer-title").text("添加收货地址");
            $(".m-modal-portal").removeClass("isHidden")
            isadd=true
        })
        var data=JSON.parse(sessionStorage.getItem("bookinfo"))
        var count = JSON.parse(sessionStorage.getItem("count"))||0
        var totalPrice=0,discountPrice=0
        console.log(data)
        $(".merchant-spread").empty();
        data.forEach(function(item,index){
        	totalPrice+=item.bprice*item.count
        	discountPrice+=item.bprice*(1-item.bdiscount)*item.count
        	if(count==0){
        		count=item.count
        	}
        	$(".merchant-spread").append('<div class="good-container clearfix">'+
                    '<p class="pro-support">'+
                	'<a class="m-icons m-icons-service " data-src="" href="javascript:;"></a>'+
                '</p>'+
                '<span class="img">'+
                	'<img class="" src="'+item.img1+'" style="width: 50px; height: 50px;">'+
                '</span>'+
                '<span class="name">'+
                      '<span class="product-name">'+item.bname+'</span>'+
                '</span>'+
                '<span class="total"><span class="">￥</span>'+
                '<span class="txt">'+item.bprice*count+'</span>'+
                '</span>'+
                '<span class="price">¥'+item.bprice+'×'+count+'</span></div>')
            count=0
        })
        
        $(".book-total .freeInfo-value").text((totalPrice).toFixed(2)+"元")
        $(".discount-total .freeInfo-value").text((discountPrice).toFixed(2)+"元")
        $(".total .freeInfo-value").text("￥"+((totalPrice-discountPrice).toFixed(2)))
        $(".merchant-spread").append('<div class="form-item"><span class="left-label">买家留言</span><span class="select"><textarea type="text" class="userMessage marginBottom" placeholder="填写内容需与商家协商并确认，45字以内"  maxlength="45"></textarea></span></div>')
        
        $(".canclebtn").click(function(){
        	$(".m-modal-portal").addClass("isHidden")
        })
        
        $(".toCart").click(function(){
        	window.location.href="shoppingCart.jsp"
        })
        
      //1.点击每一个城市 -- 上面“城市”和“选择“都会发生变化，下面地名也会发生变化
      //2.点击上方的地名 -- 会去到相应的类别，上面也同样会发生变换

      var provinceData,cityData,areaData,streetData
      var type1="province"
      var code="CITY_CODE"
    	  var str="",ary=[];
      var testData={

      }
      function showProvince(tar,istop){
        	if(istop){
        		var index=tar?$(".sd-span").index(tar)+1:0
        		tar.nextAll().remove();
        		$(".selectTitle").append("<span class='ts-span'></span>")
        	}else{
        		tar&&$(".selectTitle .ts-span").before("<span class='sd-span' data-no="+tar.data('no')+">"+tar.text()+"</span>") //点击下方城市添加到上方
        	}
        	
          let postData,choose,code,
          num=$(".sd-span").length,
          
          no=tar?tar.data("no"):""
          $(".selectAddress").hasClass("isHidden")&&$(".selectAddress").removeClass("isHidden")
          $(".address-content").empty()
          /* switch(index){
              case 0:{
                  num=0
                  break
              };
              case 1:{
                  num=1
                  no=tar.prev().data("no")
                  break
              };
              case 2:{
                  num=2
                  no=tar.prev().data("no")
                  break
              }
          } */
          switch(num){
              case 0:{
                  choose="选择省/自治区"
                  postData={}
                  code="PROVINCE_CODE"
                  name="PROVINCE_NAME"
                  break;
              };
              case 1:{
                  choose="选择城市/地区"
                  postData={p:no}
                  code="CITY_CODE"
                  name="CITY_NAME"
                  break
              };
              case 2:{
                  choose="选择区县"
                  postData={c:no}
                  code="AREA_CODE"
                  name="AREA_NAME"
                  break
              };
              case 3:{
                  choose="选择配送区域"
                  postData={a:no}
                  code="STREET_CODE"
                  name="STREET_NAME"
                  break
              };
              case 4:{
            	  ary=[]
            	  $(".province").val("");
            	  Array.from($(".sd-span")).forEach(function(item,index){
            		  ary.push($(item).text())
            		  /* str=str+$(item).text()+'/' */
            	  })
            	  /* str=str.substring(0,str.length-2) */
            	  $(".province").val(ary.join("/"))
            	  $(".selectTitle .sd-span").remove()
            	  $(".selectAddress").addClass("isHidden")
            	  break
              }
          }
          
          // $(".selectTitle>.sd-span").remove() //省-没有 市-保留省 区-保留省市 街道-保留省市区
          $(".ts-span").text(choose)  //省-选择省/自治区 市-选择城市/地区 区-选择区县 街道-选择配送区域
          // $(".address-content").addClass("province")
          //传参：省-不需要传参 市-PROVINCE_CODE 区-CITY_CODE 街道-AREA_CODE
          //得到的数据中放到data中 省-PROVINCE_CODE 市-CITY_CODE 区-AREA_CODE 街道-STREET_CODE
          //处理下方数据

          $.post("ChoosePCS",postData,function(data){
              data=JSON.parse(data)
              data.forEach(function(item,index){
                  $(".address-content").append("<span data-no="+item[code]+">"+item[name]+"</span>")
              })
          })
      }
      //点击input框
      $(".province").click(function(){
    	  console.log("测试")
          showProvince()
      })

      //点击下面
      $(".address-content").on("click","span",function(e){
          let tar=$(e.target)
          showProvince(tar,false)
          // let tar=$(e.target)
          // console.log(tar)
          // $(".selectAddress").prepend("<span class='sd-span'>"+tar.text()+"</span>")
          // if(type1=="province"){
          //     $(".ts-span").text("选择城市/地区")
          // }else if(type1="city"){
          //     $(".ts-span").text("选择区县")
          // }
          // $.post("",{province_no:tar.data("no"),type:type1},function(data){
          //     type1="city"
          //     code="AREA_CODE"
          //     $(".address-content").empty()
          //     data.forEach(function(item,index){
          //         $(".address-content").append("<span data-no="+item[code]+">"+item.SHORT_NAME+"</span>")
          //     })
          // })
      })
      //点击上方
      $(".selectTitle").on("click",".sd-span",function(e){
          let tar=$(e.target)
          showProvince(tar,true)
          // let index=$(".sd-span").index(tar)
          // console.log($(".sd-span").index(tar))
          // switch(index){
          //     case 0:{
          //         showProvince()
          //         break
          //     };
          //     case 1:{

          //     }
          // }
      })

      
	$(".closeIcon").click(function() {
		$(".selectAddress").addClass("isHidden")
	})

	$(".saveaddress").click(function() {
		if (isadd) {
			$.post("addressadd", {
				province : ary[0],
				city : ary[1],
				county : ary[2],
				details : $(".input-u .address").val(),
				contact : $(".uname").val(),
				tel : $(".utel").val(),
				isdefault : addressFlag ? '1' : '0'
			}, function(data) {
				addressinit()
			})
		} else {
			$.post("AddressUpdate", {
				province : ary[0],
				city : ary[1],
				county : ary[2],
				details : $(".input-u .address").val(),
				contact : $(".uname").val(),
				tel : $(".utel").val(),
				addressid : addressID
			}, function() {
				addressinit()
			})
		}
		$(".m-modal-portal").addClass("isHidden")

	})
	/* $(".address-list").on("click","")
	$(".update span").first().click(function(e){
	  var tar=$(e.target)
	  console.log(tar)
	  tar.parents(".address-item").children(".mark").addClass("addr-visible").removeClass("addr-unvisible")
	  $(".update").prepend("<span>设为默认地址</span>")
	  tar.parents(".update").children().first().remove()
	  $.post("SetDefaultAddress",{addressid:tar.parents(".address-item").data("no"),isdefault:"1"},function(data){
		  
	  })
	}) */

	$(".address-list").on("click", ".address-item", function(e) {
		var tar = $(e.target);
		$(".address-item").addClass("unselected").remove("selected");
		tar.addClass("selected").removeClass("unselected")
	})

	var orders = JSON.parse(sessionStorage.getItem("bookinfo"))
	var random = randomNumber()

	orders.map(function(item, index) {
		item = Object.assign(item, {
			fatherorder : random,
			sonorder : random + index,
			status : "待支付"
		})
		return item
	})
	console.log(orders)

	function randomNumber() {
		const now = new Date()
		let month = now.getMonth() + 1
		let day = now.getDate()
		let hour = now.getHours()
		let minutes = now.getMinutes()
		let seconds = now.getSeconds()
		return now.getFullYear().toString() + month.toString() + day + hour
				+ minutes + seconds
				+ (Math.round(Math.random() * 89 + 100)).toString()
	}

	$(".bottom-pay").click(function() {
		var postdata = {
			addressid : $(".selected").data("no"),
			orderlist : JSON.stringify(orders)
		}
		sessionStorage.setItem("orderInfo", postdata.orderlist)
		$.ajax({
			url : "OrderAdd",
			data : postdata,
			type : "post",
			traditional : true,
			success : function(data) {
				window.location.href = "topay.jsp"
			}
		})
	})
	$(".goOrder").click(function() {
		/* window.location.href="topay.jsp" */
	})
</script>

</html>