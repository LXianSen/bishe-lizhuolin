<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/topay.css?ver=2">
    <link rel="stylesheet" href="iconfont/iconfont.css">
    <link rel="stylesheet" href="css/shouye.css?ver=2">
</head>

<body>
<header></header>
    <div class="order-wrap">
        <div class="container">
            <div class="m-secondary-navigator"><span><a href="/">首页</a></span><span><a
                        href="/personal-center">个人中心</a></span><span><a href="#">确认订单</a></span></div>
        </div>
        <div class="pay-con">
            <div class="order-con">
                <div class="container">
                    <div class="order-info">
                        <h2 class="tit">订单提交成功！去付款咯～</h2>
                        <div class="order-warm">请在30分钟内完成支付, 超时后将取消订单</div>
                        <ul class="order-detail">
                            <li><span class="item-label">订单编号：</span></li>
                            <li class="price"><span class="item-label">订单价格：</span></li>
                            <li><span class="item-label">收货信息：</span><span class="item"></span><span
                                    class="item">151****2112</span><span class="item">四川</span><span
                                    class="item">成都市</span><span class="item">金牛区</span><span
                                    class="item">龙湖上城五栋一单元</span></li>
                            <li><span class="item-label">商品名称：</span><span> 洁致折叠小方桌 白色 独立装</span></li>
                            <li><span class="item-label">配送时间：</span> 不限送货时间</li>
                            <li><span class="item-label">发票类型：</span><span class="item">不开发票</span></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="pay-method">
                <div class="container">
                    <h2 class="tit">请选择</h2>
                    <h3 class="sub-tit"></h3>
                    <ul class="payment-list clearfix">
                        <li style="line-height: 59px;text-align: center;font-size: 20px;cursor:pointer" class="payment">立即支付</li>
                        <li style="line-height: 59px;text-align: center;font-size: 20px;cursor:pointer" class="backindex">返回首页</li>
                    </ul>
                    <div id="pay-sub"></div>
                </div>
            </div>
        </div>
        <div class="m-toast-group m-toast-top-center"></div>
    </div>
    <div class="m-fixedBar">
		
	</div>
	
	<div class="center-tips-box hide">
		<div class="content-box">
			<div class="title">支付提示</div>
			<div class="content">
				你已支付成功 
			</div>
			<div class="btn">
				<span class="toIndex" style="cursor:pointer">返回首页</span>
				<span class="cancel" style="cursor:pointer">取消</span>
			</div>
		</div>
		
	</div>
    <footer></footer>
</body>
	<script type="text/javascript" src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="header.js?ver=1"></script>
	<script type="text/javascript" src="navigation.js?ver=1"></script>
	<script type="text/javascript" src="footer.js?ver=1"></script>
	<script>
	var price=0,orderno=""
	init()
		function init(){
			var orderlist=JSON.parse(sessionStorage.getItem("orderInfo"))
			var addressinfo=JSON.parse(sessionStorage.getItem("addressInfo")),strary=[]
			price=0
			orderlist.forEach(function(item,index){
				strary.push(item.bname)
				price+=(item.bprice*item.bdiscount)*item.count
				orderno=item.fatherorder
			})
			
			console.log(orderlist)
			$(".order-info").empty()
			$(".order-info").append('<h2 class="tit">订单提交成功！去付款咯～</h2>'+
                    '<div class="order-warm">请在30分钟内完成支付, 超时后将取消订单</div>'+
                    '<ul class="order-detail">'+
                        '<li><span class="item-label">订单编号：</span>'+orderlist[0].fatherorder+'</li>'+
                        '<li class="price"><span class="item-label">订单价格：</span>'+(price).toFixed(2)+'元</li>'+
                        '<li><span class="item-label">收货信息：</span><span class="item">'+addressinfo.contact+'</span><span'+
                                'class="item">'+addressinfo.tel+'</span><span class="item">'+addressinfo.province+'</span><span'+
                                'class="item">'+addressinfo.city+'</span><span class="item">'+addressinfo.county+'</span><span'+
                                'class="item">'+addressinfo.details+'</span></li>'+
                        '<li><span class="item-label">商品名称：</span><span> '+strary.join(";")+'</span></li>'+
                    '</ul>')
		}
	$(".backindex").click(function(){
		window.location.href="shouye.jsp"
	})
	$(".payment").click(function(){
		$.post("PayOrders",{totalmoney:price,fatherorder:orderno},function(data){
			data=JSON.parse(data)
			if(data.code=="error"){
    			window.location.href="login.jsp"
    		}else{
    			$(".center-tips-box").removeClass("hide")
    			$(".center-tips-box .content").text(data.msg)
    			if(data.code=="200"){
    				
    				
    			}else if(data.code=="500"){
    				
    			}
    			console.log(data)
    		}
			
		})
	})
	$(".toIndex").click(function(){
		window.location.href="shouye.jsp"
	})
	$(".cancel").click(function(){
		$(".center-tips-box").addClass("hide")
	})
	</script>
</html>