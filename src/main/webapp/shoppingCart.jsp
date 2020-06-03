<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="iconfont/iconfont.css?ver=1">
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

.container {
	width: 1080px;
	margin: 0 auto;
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

a {
	text-decoration: none;
}

.m-secondary-navigator span:last-child a:active, .m-secondary-navigator span:last-child a:focus,
	.m-secondary-navigator span:last-child a:visited {
	color: #999;
}

.m-secondary-navigator span:last-child a {
	color: #999;
	cursor: default;
}

.has-good-container .title {
	height: 42px;
	line-height: 40px;
	background-color: #fafafa;
	color: #999;
	margin-bottom: 3px;
}

.has-good-container .select-icon {
	-webkit-box-sizing: content-box;
	box-sizing: content-box;
	display: inline-block;
	margin-left: 7px;
	margin-right: 20px;
	vertical-align: middle;
	margin-top: -5px;
}

.m-icons-check-active {
	width: 18px;
	height: 18px;
	background-position: 0 -418px;
}

.m-icons {
	display: inline-block;
	background-image:
		url(images/yp-icons.7c45b9c9.png);
}

.has-good-container .title .all-txt {
	width: 130px;
}

.has-good-container .title span {
	display: inline-block;
	vertical-align: middle;
}

.has-good-container .title .product {
	width: 325px;
}

.has-good-container .title .price {
	width: 205px;
}

.has-good-container .title .num {
	width: 208px;
}

.has-good-container .title .total {
	width: 129px;
}

.cart-merchant-list {
	padding-bottom: 100px;
}

.cart-merchant-list .merchant-info {
	padding-top: 47px;
	padding-bottom: 17px;
	vertical-align: middle;
	border-bottom: 1px solid #e7e7e7;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: row;
	flex-direction: row;
	-ms-flex-align: center;
	align-items: center;
	-ms-flex-pack: start;
	justify-content: flex-start;
}

.cart-merchant-list .merchant-info .name {
	margin-left: 10px;
	cursor: pointer;
	-ms-flex: 1 1 0%;
	flex: 1 1 0%;
}

.cart-merchant-list .merchant-info .mijiapost {
	position: relative;
	cursor: pointer;
}

.cart-merchant-list .merchant-info .postmarginright {
	margin-right: 15px;
	color: #999;
}

.cart-merchant-list .merchant-info .mijiapost .hide {
	display: none;
}

.cart-merchant-list .merchant-info .mijiapost .layer {
	position: absolute;
	cursor: default;
	border: 1px solid #e7e7e7;
	-webkit-box-shadow: 0 0 24px rgba(0, 0, 0, .1);
	box-shadow: 0 0 24px rgba(0, 0, 0, .1);
	top: 30px;
	right: 0;
	width: 300px;
	padding: 30px 25px;
	background-color: #fff;
	text-align: center;
	z-index: 999;
}

.hidden, .hide {
	display: none;
}

.cart-merchant-list .good-item-container:last-of-type {
	border-bottom: 1px solid #e7e7e7;
}

.cart-merchant-list .good-item-container {
	border-bottom: 1px dashed #e7e7e7;
	position: relative;
}

.cart-total {
	position: relative;
	margin-bottom: 160px;
	background-color: #fafafa;
	font-size: 18px;
	width: 1080px;
	height: 80px;
	z-index: 98;
}

.cart-total .ico {
	padding: 25px 0;
	height: 30px;
	line-height: 30px;
}

.fl {
	float: left;
}

.cart-total .select-text {
	width: 75px;
}

.cart-total .already-select {
	margin-left: 20px;
}

.cart-total .totol-price-con {
	position: absolute;
	right: 230px;
	bottom: 0;
	height: 70px;
	padding-top: 10px;
	font-size: 12px;
	color: #999;
}

.cart-total .no-reduce {
	height: 55px;
	padding-top: 25px;
}

.cart-total .checkout {
	margin-top: -.5px;
	float: right;
	width: 200px;
	height: 80px;
	line-height: 80px;
	text-align: center;
	background-color: #a9010d;
	color: #fff;
	font-size: 20px;
	cursor: pointer;
	-webkit-transition: all .5s cubic-bezier(0, 1, .5, 1);
	-o-transition: all .5s cubic-bezier(0, 1, .5, 1);
	transition: all .5s cubic-bezier(0, 1, .5, 1);
}

.fr {
	float: right;
}

.m-secondary-navigator span:after {
	content: ">";
}

.m-secondary-navigator span:last-child:after {
	content: "";
}

.cart-merchant-list .merchant-info .mijiapost .postimg {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	margin-right: 5px;
	display: inline-block;
	border: 1px solid #999;
	border-radius: 50%;
	width: 17px;
	height: 17px;
	padding-left: 6px;
}

.clearfix:after, .clearfix:before {
	content: " ";
	display: table;
}

.cart-merchant-list .image {
	float: left;
	height: 142px;
	position: relative;
	width: 120px;
	cursor: pointer;
}

.cart-good-items .del, .cart-good-items .num, .cart-good-items .price,
	.cart-good-items .select, .cart-good-items .subtotal {
	padding: 35px 0;
	height: 72px;
	line-height: 72px;
}

.cart-good-items .select {
	width: 45px;
}

.cart-good-items .del, .cart-good-items .name, .cart-good-items .num,
	.cart-good-items .price, .cart-good-items .select, .cart-good-items .subtotal
	{
	float: left;
	height: 142px;
}

.cart-good-items .name {
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	width: 330px;
	padding: 27px 90px 27px 5px;
	height: 142px;
	line-height: 88px;
	cursor: pointer;
}

.cart-good-items .price {
	width: 215px;
	text-align: left;
}

.cart-good-items .num {
	width: 205px;
}

.cart-good-items .subtotal {
	width: 130px;
	text-align: left;
	color: #c00000;
}

.cart-good-items .del {
	text-align: right;
}

.cart-merchant-list .image img {
	position: absolute;
	top: 10px;
	left: 0;
	width: 120px;
	height: 120px;
}

img {
	vertical-align: middle;
	border: none;
}

.cart-good-items .name .vertical-wrap {
	margin-top: 10px;
	line-height: 24px;
}

.cart-good-items .price {
	width: 215px;
	text-align: left;
}

.cart-good-items .num .can-edit {
	margin-left: -55px;
}

.num-reduce-add {
	display: inline-block;
	vertical-align: middle;
	text-align: center;
	-webkit-box-sizing: border-box;
	box-sizing: border-box;
	height: 32px;
	border: 1px solid #b3b3b3;
	overflow: hidden;
}

.num-reduce-add .minus-plus {
	float: left;
	width: 30px;
	height: 30px;
}

.m-icons-reduce-active {
    width: 30px;
    height: 30px;
    background-position: 0 -1372px;
}

.m-icons-reduce {
	width: 30px;
	height: 30px;
	background-position: 0 -1405px;
}

.num-reduce-add .txt {
	border-left: 1px solid #b3b3b3;
	border-right: 1px solid #b3b3b3;
	float: left;
	height: 30px;
	line-height: 30px;
}

.num-reduce-add .minus-plus {
	float: left;
	width: 30px;
	height: 30px;
}

.m-icons-add-active {
	width: 30px;
	height: 30px;
	background-position: 0 -1032px;
}

.cart-good-items .del .icon {
	display: inline-block;
	width: 13px;
	height: 13px;
}

.m-icons-close-hover {
	width: 13px;
	height: 13px;
	background-position: 0 -135px;
}

.cart-total {
	position: relative;
	margin-bottom: 160px;
	background-color: #fafafa;
	font-size: 18px;
	width: 1080px;
	height: 80px;
	z-index: 98;
}

.cart-merchant-list {
	padding-bottom: 100px;
}

.cart-good-items {
	overflow: hidden;
}

.clearfix {
	*zoom: 1;
}

.clearfix:after, .clearfix:before {
	content: " ";
	display: table;
}

.clearfix:after {
	clear: both;
}

.clearfix:after, .clearfix:before {
	content: " ";
	display: table;
}

.cart-total .total-after-prefer {
	width: 200px;
	color: #c00000;
	font-size: 20px;
}

.cart-total .total-after-prefer span {
	color: #333;
}

.cart-good-items{
	height:auto
}

.cart-good-items .del, .cart-good-items .num, .cart-good-items .price, .cart-good-items .select, .cart-good-items .subtotal {
    padding: 35px 0;
    height: 72px;
    line-height: 72px;
    }
.m-icons-check {
    width: 18px;
    height: 18px;
    background-position: 0 -506px;
}
</style>
</head>
<body>
	<header>
		</header>
	<div>
		<div class="express-append">
			<div class="container">
				<div class="m-secondary-navigator">
					<span><a href="/">首页</a></span><span><a href="#">购物车</a></span>
				</div>
			</div>
			<div class="has-good-container container">
				<div class="title" id="good-title">
					<a class="m-icons m-icons-check-active select-icon allChecked" data-src=""
						href="javascript:;"></a><span class="all-txt">全选</span><span
						class="product">商品信息</span><span class="price">单价</span><span
						class="num">数量</span><span class="total">金额</span><span
						class="edit">操作</span>
				</div>
				<div class="cart-merchant-list" id="merchantList">
					<div>
						<div class="merchant-item-container">
							<div class="merchant-info">
								<a class="m-icons m-icons-check-active select-icon allChecked" data-src="" href="javascript:;"></a>
								<span class="name" data-src="/flagshipstore?id=1&amp;title=有品精选">购物车</span>
								<div class="postmarginright mijiapost">
									<span><span class="postimg">!</span>已免运费</span>
									<span class="layer hide">有品精选商品，即有品配送和第三方商家发货的商品，2018年1月1日起，单笔订单满99元免运费，不满99元收10元运费。*包邮订单拆单后若部分订单退款使得剩余订单不满足包邮条件时将补扣10元运费。</span>
								</div>
							</div>
							<div class="book-info-list">
								
							</div>
						</div>
					</div>
				</div>
				<div class="cart-total bottom-total ">
					<div class="ico fl">
						<a class="m-icons m-icons-check-active select-icon allChecked" data-src=""
							href="javascript:;"></a><span class="select-text">全选</span><span
							class="already-select">已选1件</span>
					</div>
					<div class="totol-price-con no-reduce">
						<span class="total-after-prefer"><span>合计：</span>￥159.00</span>
					</div>
					<span class="checkout  fr">去结算</span>
				</div>
			</div>
		</div>
	</div>
	<div class="m-fixedBar">
		
	</div>
	<footer></footer>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="header.js?ver=1"></script>
<script type="text/javascript" src="navigation.js?ver=1"></script>
<script type="text/javascript" src="footer.js?ver=1"></script>
<script>
	var cart,bookary=[],totalPrice=0;
	
	$.post("ShowCartlist",{},function(data){
		data=JSON.parse(data)
		if(data.code=="error"){
			window.location.href="login.jsp"
		}else{
			cart=data.carMap
			for(let c in cart){
				bookary.push(cart[c]);
			}
			sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
			init(cart)
		}
		
	})
	
	function init(cart){
		totalPrice=0
		$(".book-info-list").empty()
		console.log(cart)
		for(let key in cart){
			totalPrice+=cart[key].bprice*cart[key].count
			console.log(cart[key])
			var minusStyle=cart[key].count>1?"m-icons-reduce-active":"m-icons-reduce"
			$(".book-info-list").append('<div class="good-item-container cart-goods-con">'+
					'<div class="merchant-reduce-top"></div>'+
					'<div class="cart-good-items clearfix" data-isbn='+cart[key].ISBN+'>'+
						'<div class="select">'+
							'<a class="m-icons m-icons-check-active select-icon" data-src="" href="javascript:;"></a>'+
						'</div>'+
						'<div class="image" data-src="/detail?gid=120854&amp;pid=126201" data-target="_blank">'+
							'<img class="" src='+cart[key].img1+'>'+
						'</div>'+
						'<div class="name" data-src="/detail?gid=120854&amp;pid=126201" data-target="_blank">'+
							'<div class="vertical-wrap">'+
								'<p class="good-name brown-hover">'+cart[key].bname+'</p>'+
								'<div></div>'+
							'</div>'+
						'</div>'+
						'<div class="price"><span>￥'+cart[key].bprice+'</span></div>'+
						'<div class="num">'+
							'<div class="can-edit">'+
								'<div class="num-reduce-add" style="width: 134px;"><a class="m-icons '+minusStyle+'  minus-plus minus" data-src="" href="javascript:;"></a><span class="txt" style="width: 70px;">'+cart[key].count+'</span><a class="m-icons m-icons-add-active minus-plus add" data-src="" href="javascript:;"></a></div>'+
							'</div>'+
						'</div>'+
						'<div class="subtotal"><span>￥'+cart[key].bprice*cart[key].count+'</span></div>'+
						'<div class="del">'+
							'<a class="m-icons m-icons-close-hover icon" data-src="" href="javascript:;"></a>'+
						'</div>'+
					'</div></div>')
			if(cart[key].ISBN==$(".cart-good-items").data('ISBN')){
				$('.txt').text(cart[key].count)
			}
		}
		$(".already-select").text("已选"+$(".book-info-list .select-icon").length+"件")
		$(".total-after-prefer").text("￥"+totalPrice)
	}
	
	$('.txt').text(cart)
	
	$(".book-info-list").on("click",".del",function(e){
		var tar=$(e.target)
		$.post("CartDelete",{isbn:tar.parents(".cart-good-items").data("isbn")},function(data){
			$.post("ShowCartlist",{},function(data){
				bookary=[]
				data=JSON.parse(data)
				totalPrice=0
				if(data.code=="error"){
					window.location.href="login.jsp"
				}else{
					cart=data.carMap
					for(let c in cart){
						bookary.push(cart[c]);
						
					}
					
					sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
					init(cart)
				}
			})
		})
	})
	
	$(".book-info-list").on("click",".minus",function(e){
		totalPrice=0
		var tar=$(e.target)
		var num = tar.next().text()
		if (num > 1) {
			num--
			if(num<=1){
				tar.removeClass("m-icons-reduce-active").addClass("m-icons-reduce")
			}
			tar.next().text(num)
			$.post("CartAdd",{
				isbn:tar.parents(".cart-good-items").data("isbn"),
				type:"minus",
				count: "1"
			},function(){
				$.post("ShowCartlist",{},function(data){
					bookary=[]
					data=JSON.parse(data)
					if(data.code=="error"){
						window.location.href="login.jsp"
					}else{
						cart=data.carMap
						for(let c in cart){
							bookary.push(cart[c]);
							totalPrice+=cart[c].bprice*cart[c].count
							if(cart[c].ISBN==tar.parents(".cart-good-items").data("isbn")){
								console.log(cart[c].bprice,cart[c].count)
								tar.parents(".num").next().children().text("￥"+cart[c].bprice*cart[c].count)
							}
						}
						sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
						$(".total-after-prefer").text("￥"+totalPrice)
					}
					
				})
			})
			
		}else{
				
			
		}
		
		
	})
	
	$(".book-info-list").on("click",".add",function(e){
		totalPrice=0
		var tar=$(e.target)
		var num = tar.prev().text()
			num++
		if(num>1){
			tar.prevAll().eq(1).addClass("m-icons-reduce-active").removeClass("m-icons-reduce")
		}
		tar.prev().text(num)
		$.post("CartAdd",{
			isbn:tar.parents(".cart-good-items").data("isbn"),
			type:"add",
			count: "1"
		},function(){
			$.post("ShowCartlist",{},function(data){
				bookary=[]
				data=JSON.parse(data)
				if(data.code=="error"){
					window.location.href="login.jsp"
				}else{
					cart=data.carMap
					for(let c in cart){
						bookary.push(cart[c]);
						totalPrice+=cart[c].bprice*cart[c].count
						if(cart[c].ISBN==tar.parents(".cart-good-items").data("isbn")){
							console.log(cart[c].bprice,cart[c].count)
							tar.parents(".num").next().children().text("￥"+cart[c].bprice*cart[c].count)
						}
					}
					sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
					$(".total-after-prefer").text("￥"+totalPrice)
				}
				
			})
		})
	})
	
	
	$(".checkout").click(function(){
		window.location.href="order.jsp"
	})
	
	$(".allChecked").click(function(){
		$(".allChecked").toggleClass("m-icons-check-active").toggleClass("m-icons-check")
		console.log($(".allChecked").is(".m-icons-check-active"))
		if($(".allChecked").is(".m-icons-check-active")){
			$(".select-icon").addClass("m-icons-check-active").removeClass("m-icons-check")
			$(".already-select").text("已选"+$(".book-info-list .select-icon").length+"件")
			$.post("ShowCartlist",{},function(data){
				bookary=[]
				data=JSON.parse(data)
				if(data.code=="error"){
					window.location.href="login.jsp"
				}else{
					cart=data.carMap
					for(let c in cart){
						bookary.push(cart[c]);
						/* totalPrice+=cart[c].bprice*cart[c].count
						if(cart[c].ISBN==tar.parents(".cart-good-items").data("isbn")){
							console.log(cart[c].bprice,cart[c].count)
							tar.parents(".num").next().children().text("￥"+cart[c].bprice*cart[c].count)
						} */
					}
					sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
					/* $(".total-after-prefer").text("￥"+totalPrice) */
				}
				
			})
		}else{
			$(".select-icon").removeClass("m-icons-check-active").addClass("m-icons-check")
			$(".already-select").text("已选0件")
			sessionStorage.setItem("bookinfo",[])
		}
		
	})
	
	$(".book-info-list").on("click",".select-icon",function(e){
		var cart
		$.post("ShowCartlist",{},function(data){
			bookary=[]
			data=JSON.parse(data)
			if(data.code=="error"){
				window.location.href="login.jsp"
			}else{
				cart=data.carMap
				for(let i=0;i<booklist.length;i++){
					if($(".book-info-list .select-icon").eq(i).is(".m-icons-check-active")){
						num++
						bookary.push(cart[i])
					}else{
						
					}
				}
				sessionStorage.setItem("bookinfo",JSON.stringify(bookary))
			}
			
		})
		var tar=$(e.target),num=0,booklist=$(".book-info-list .select-icon")
		tar.toggleClass("m-icons-check-active").toggleClass("m-icons-check")
		
		if(num==booklist.length){
			$(".allChecked").addClass("m-icons-check-active").removeClass("m-icons-check")
		}else{
			$(".allChecked").removeClass("m-icons-check-active").addClass("m-icons-check")
		}
		$(".already-select").text("已选"+num+"件")
		
	})
	
	
</script>
</html>