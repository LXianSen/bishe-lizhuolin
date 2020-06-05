<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="css/personcenter.css?ver=2">
<link rel="stylesheet" href="iconfont/iconfont.css">
<link rel="stylesheet" href="css/shouye.css">
</head>

<body>
	<header></header>
	<div class="mijia-personal-box">
		<div class="mijia-personal-section-box container">
			<div class="m-secondary-navigator">
				<span><a href="shouye.jsp">首页</a></span><span><a>个人中心</a></span><span><a>我的订单</a></span>
			</div>
			<div class="mijia-personal-list-box">
				<div>
					<section>
						<div class="mijia-personal-profile">
							<div
								class="m-icons m-icons-per-user mijia-personal-profile-photo"
								data-src="" href="">
							</div>
							<p class="mijia-personal-profile-username">🙊</p>
							<!-- <p style="padding:10px 0 0;">余额:<span class="balance">680</span><a style="padding-left:10px;cursor:pointer;color:#E6A23C">充值</a></p> -->
						</div>
					</section>
					<section>
						<div class="mijia-personal-functional-list-box">
							<ul>
								<li class="active"><span class="active-circle"></span><a
									href="javascript:void(0)">我的订单</a></li>
								<li><a href="javascript:void(0)">我的资产</a></li>
								<li><a href="javascript:void(0)">我的收藏</a></li>
								<li><a href="javascript:void(0)">地址管理</a></li>
							</ul>
						</div>
					</section>
				</div>
			</div>
			<div class="mijia-personal-container-box"></div>
		</div>
		<div class="m-toast-group m-toast-top-center"></div>
	</div>
	<div class="m-fixedBar"></div>
	<div class="center-tips-box hide">
		<div class="content-box">
			<div class="title">充值</div>
			<div class="price">
				<span>金额:</span> <input type="text" class="price-input">
			</div>
			<div class="btn">
				<span class="recharge" style="cursor: pointer">确定</span> <span
					class="cancel" style="cursor: pointer">取消</span>
			</div>
		</div>

	</div>
	<footer></footer>
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
</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script src="js/personcenter.js?ver=1"></script>
<script type="text/javascript" src="header.js?ver=1"></script>
<script type="text/javascript" src="navigation.js?ver=1"></script>
<script type="text/javascript" src="footer.js?ver=1"></script>
</html>