<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/topay.css">
</head>

<body>
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
                            <li><span class="item-label">订单编号：</span>4200427800804029</li>
                            <li class="price"><span class="item-label">订单价格：</span>49元</li>
                            <li><span class="item-label">收货信息：</span><span class="item">吴琪瑶</span><span
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
                    <h2 class="tit">选择以下支付方式付款</h2>
                    <h3 class="sub-tit">支付平台</h3>
                    <ul class="payment-list clearfix">
                        <li><img src="https://shop.io.mi-img.com/static/h5/static3/media/alipay.d834fcda.png"
                                alt="alipay"></li>
                        <li><img src="https://shop.io.mi-img.com/static/h5/static3/media/weixin.8f9c6e77.png"
                                alt="wxpay"></li>
                    </ul>
                    <div id="pay-sub"></div>
                </div>
            </div>
        </div>
        <div class="m-toast-group m-toast-top-center"></div>
    </div>
</body>

</html>