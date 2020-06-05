/**
 * 
 */
var businessObj={
	"我的订单":"orders",
	"我的资产":"wallets",
	"我的收藏":"collection",
	"地址管理":"address",
},resData,newAry=[],statusNo="待支付"

console.log("测试修改")
	
post_("我的订单")

$(".mijia-personal-profile-username").text(JSON.parse(sessionStorage.getItem("user")).username)


$(".mijia-personal-functional-list-box ul li").click(function(e){
// debugger
	let tar=$(e.target);
	$(".mijia-personal-functional-list-box ul li").removeClass("active")
	$(".mijia-personal-functional-list-box ul li active-circle").remove()
	tar.parent().addClass("active")
	tar.parent().prepend('<span class="active-circle"></span>')
	statusNo="待支付"
	console.log(tar.text())
	post_(tar.text())
	
})


$(".mijia-personal-container-box").on("click",".mijia-personal-selector ul li",function(e){
	let tar=$(e.target);
	statusNo=tar.text()
	console.log(statusNo)
	$(".mijia-personal-selector ul li").removeClass("active")
	tar.addClass("active")
	post_("我的订单")
})

function post_(par){
	$.post("MyInfomation",{msg:businessObj[par],status:statusNo},function(data){
		data=JSON.parse(data);
		if(data.code=="error"){
			window.location.href="login.jsp"
		}else{
			resData=data
			if(par=="我的订单"){
				initOrders(resData,statusNo) 
			}else if(par=="我的资产"){
				initWalllet(resData)
			}else if(par=="地址管理"){
				initAddress(resData)
			}
			
		}
	})
}


var textData=[
				{
					fatherorder:"123",
					totalprice:"50.00", // 总价
					date:"2020/04/27 15:38:03",
					status:"代付款",
					sonorder:[
						{
							sonorder:"1231",
							bname:"",
							bprice:"25.00",
							img1:"",
							count:"1"
						},
						{
							sonorder:"1232",
							bname:"",
							bprice:"25.00",
							img1:"",
							count:"1"
						}
					]
				},
				{
					fatherorder:"234",
					totalprice:"66.00", // 总价
					date:"2020/04/27 15:38:03",
					status:"代付款",
					sonorder:[
						{
							sonorder:"2341",
							bname:"",
							bprice:"33.00",
							img1:"",
							count:"2"
						}
					]
				}
			]

function ordersAry(){
	
}
/* initOrders(textData) */

function initAddress(data){
	$(".mijia-personal-container-box").empty()
	$(".mijia-personal-container-box").html(`
			<div class="mijia-personal-main-box">
                    	<div>
                    		<section><div class="person-tit"><p>地址管理</p></div></section>
                    		<section>
                    			<div class="mijia-personal-main mijia-personal-address-box">
                    				<div class="address-list ">
                    					<div class="address-list "></div>
                    				</div>
                    			</div>
                    		</section>
                    	</div>
                    	
                    </div>
	`)
	
	
    	
    		
    		
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

$(".mijia-personal-container-box").on("mouseover",".address-item",function(e){
    console.log(1)
    var tar = $(e.target)
    tar.children().children(".update").removeClass("isHidden")
})
$(".mijia-personal-container-box").on("mouseleave",".address-item",function(e){
    console.log($(e.target))
    var tar = $(e.target)
    if (tar.is("span")) {
        $(".update").addClass("isHidden")
    } else {
        tar.children().children(".update").addClass("isHidden")
    }

})
$(".mijia-personal-container-box").on("click",".update",function(e){
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
$(".mijia-personal-container-box").on("click",".toAddAddress",function(e){
	$(".layer-title").text("添加收货地址");
    $(".m-modal-portal").removeClass("isHidden")
    isadd=true
})

function initWalllet(data){
	$(".mijia-personal-container-box").empty()
	$(".mijia-personal-container-box").html(`
			<div class="mijia-personal-main-box">
                    	<div class="m-coupon-wrap">
                    		<h2 class="person-tit">账户金额</h2>
                    	</div>
                    	<p style="font-size:20px;padding:20px 0">您的账户余额：￥<span> ${data[0].balance} </span></p>
                    	<a class="m-btns m-btn-brown m-btn-sm recharge" href="javascript:;">充值</a>
                    </div>
	`)
}

$(".mijia-personal-container-box").on("click",".recharge",function(){
	$(".center-tips-box").removeClass("hide")
})

$(".recharge").click(function(){
	$.post("Charge",{balance:$(".price-input").val()},function(data){
		$(".center-tips-box").addClass("hide")
		post_("我的资产")
	})
})

function initOrders(data,statusNo){
	var str="",price=0,ary=[],btnHtml=""
	
	data.forEach(function(item,index){
		if(item.status==statusNo){
			ary.push(item)
		}
	})
	if(statusNo=="待支付"){
		$(".mijia-personal-container-box").empty()
		$(".mijia-personal-container-box").append(`
				<div class="mijia-personal-main-box">
		                        <div>
		                            <section>
		                                <div class="mijia-personal-selector">
		                                    <ul>
		                                        <li class="active">待支付</li>
		                                        <li class="">支付成功</li>
		                                        <li class="">已完成</li>
		                                        <li class="">订单取消</li>
		                                    </ul>
		                                </div>
		                            </section>
		                            <section></section>
		                            <section>
		                                <div class="mijia-personal-main"></div>
		                                </section>
				`) 
	}
	
	switch(statusNo){
	case "待支付":btnHtml='<a class="m-btns m-btn-gray m-btn-sm cancleOrder" href="javascript:;">取消订单</a>'+
		'<a class="m-btns m-btn-brown m-btn-sm topay" href="javascript:;">去支付</a>'
	break
	case "支付成功":btnHtml='<a class="m-btns m-btn-brown m-btn-sm torecive" href="javascript:;">确认收货</a>'
	break
	case "已完成":btnHtml=""
		break
	case "订单取消":btnHtml=""
		break
	}
	$(".mijia-personal-main").empty()
	ary.forEach(function(item,index){
		
		
		console.log(index)
		str=""
		item.sonorder.forEach(function(item1,index1){
			console.log(index1)
			str=str+'<div class="mijia-personal-product will-click has-price">'+
            '<div class="mijia-personal-product-image mijia-personal-left">'+
			'<img class="" src='+item1.img1+'  alt="">'+
		'</div>'+
		'<span class="mijia-personal-product-text-box mijia-personal-left">'+
            '<div class="mijia-personal-has-price mijia-personal-product-name-box">'+
                 '<p>'+item1.bname+'</p>'+
                 '<p class="mijia-personal-price mijia-personal-product-price">￥'+(item1.bprice*item1.bdiscount).toFixed(2)+'</p>'+
             '</div>'+
         '</span>'+
		 '<span class="mijia-personal-product-count mijia-personal-right">X&nbsp;'+item1.count+'</span>'+
		 '<span class="mijia-personal-product-refound mijia-personal-right"></span>'+
      '</div>'
			
		})
		
		$(".mijia-personal-main").append('<div class="mijia-personal-order-item">'+
				  '<section class="mijia-personal-item-header">'+
				  		'<span>订单日期：'+item.date+'</span>'+
				  		'<span class="mijia-personal-sub-font mijia-personal-sub-title">30分钟后订单关闭</span>'+
			    		'<span class="mijia-personal-active-font mijia-personal-right">'+item.status+'</span>'+
				  '</section>'+
				  '<section>'+
						'<div class="mijia-personal-products-box mijia-personal-block" style="margin-top: 0px;">'+str+
			
			
				  '</section>'+
			    '<section>'+
						'<span class="mijia-personal-right mijia-personal-price-box">订单总金额:&nbsp;'+
							'<span class="mijia-personal-price">'+(item.totalprice).toFixed(2)+'元</span>'+
						'</span>'+
				  '</section>'+
				  '<section>'+
				  		'<div class="mijia-personal-button-box mijia-personal-right">'+
				  		btnHtml+
				  		'</div>'+
				  '</section>'+
				'</div>')	
				
				console.log(statusNo+"为什么不输出")
		if(statusNo=="待支付"){
			
		}else{
			console.log("进来没")
			$(".mijia-personal-sub-font.mijia-personal-sub-title").remove()
		}
		
	})
	
	
	
	
	
	var bookItem='<div class="mijia-personal-product will-click has-price">'+
                    '<div class="mijia-personal-product-image mijia-personal-left">'+
						'<img class="" src="https://img.youpin.mi-img.com/shopmain/ab0c338dd9f4ae4901fbc2ad60a7a132.png?w=800&amp;h=800"  alt="">'+
					'</div>'+
					'<span class="mijia-personal-product-text-box mijia-personal-left">'+
                        '<div class="mijia-personal-has-price mijia-personal-product-name-box">'+
                             '<p>朗菲去污地垫套装（3D）版CS-627 黑色 组合装</p>'+
                             '<p class="mijia-personal-price mijia-personal-product-price">￥159</p>'+
                         '</div>'+
                     '</span>'+
					 '<span class="mijia-personal-product-count mijia-personal-right">X&nbsp;1</span>'+
					 '<span class="mijia-personal-product-refound mijia-personal-right"></span>'+
                  '</div>'
					 
	
	
					 
 	
	/*
	 * if(dataAry.length==0){ $(".mijia-personal-main").html("<div
	 * style='text-align:center'>没有相应订单数据</div>") }
	 */
}

function orderItemFn(item){
	var orderItem='<div class="mijia-personal-order-item">'+
	  '<section class="mijia-personal-item-header">'+
	  		'<span>订单日期：'+item.date+'</span>'+
	  		'<span class="mijia-personal-sub-font mijia-personal-sub-title">59分钟后订单关闭</span>'+
    		'<span class="mijia-personal-active-font mijia-personal-right">'+item.status+'</span>'+
	  '</section>'+
	  '<section>'+
			'<div class="mijia-personal-products-box mijia-personal-block" style="margin-top: 0px;">'+


	  '</section>'+
    '<section>'+
			'<span class="mijia-personal-right mijia-personal-price-box">订单总金额:&nbsp;'+
				'<span class="mijia-personal-price">208元</span>'+
			'</span>'+
	  '</section>'+
	  '<section>'+
	  		'<div class="mijia-personal-button-box mijia-personal-right">'+
	  			'<a class="m-btns m-btn-gray m-btn-sm" href="javascript:;">取消订单</a>'+
	  			'<a class="m-btns m-btn-brown m-btn-sm" href="javascript:;">去支付</a>'+
	  		'</div>'+
	  '</section>'+
	'</div>'
}
$(".mijia-personal-container-box").on("click",".topay",function(){
	console.log(11111111111)
	window.location.href="topay.jsp"
})

$(".mijia-personal-container-box").on("click",".cancleOrder",function(){
	$.post("OrderCancel",{status:"订单取消",fatherorder:""},function(data){
		console.log(data)
	})
})


