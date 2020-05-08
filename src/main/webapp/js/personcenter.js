/**
 * 
 */
var businessObj={
	"我的订单":"orders",
	"我的资产":"wallets",
	"我的收藏":"collection",
	"地址管理":"address",
},resData,newAry=[]

post_("我的订单")

$(".mijia-personal-functional-list-box ul li").click(function(e){
	let tar=$(e.target);
	post_(tar.text())
})

function post_(par){
	$.post("MyInfomation",{msg:businessObj[par]},function(data){
		data=JSON.parse(data);
		if(data.code=="error"){
			window.location.href="login.jsp"
		}else{
			resData=data
			if(par=="我的订单"){
				
			}else if(par=="我的资产"){
				
			}else if(par=="我的收藏"){
				
			}else if(par=="地址管理"){
				
			}
		}
	})
}


function ordersAry(){
	
}


function initOrders(data){
	var tempAry=[]
	data.forEach(function(item,index){
		if(tempAry.indexOf(item.fatherorder)==-1){
			tempAry.push(item.fatherorder)
			
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
					 
	
					 
 	
	if(dataAry.length==0){
		$(".mijia-personal-main").html("<div style='text-align:center'>没有相应订单数据</div>")
	}
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

$(".mijia-personal-selector ul li").click(function(e){
	newAry=[]
	let tar=$(e.target)
	if(tar.text()=="待付款"){
		resData.forEach(function(item,index){
			if(item.status=="待付款"){
				newAry.push(item)
			}
		})
	}else if(tar.text()=="付款成功"){
		resData.forEach(function(item,index){
			if(item.status=="付款成功"){
				newAry.push(item)
			}
		})
	}else if(tar.text()=="已完成"){
		resData.forEach(function(item,index){
			if(item.status=="已完成"){
				newAry.push(item)
			}
		})
	}else if(tar.text()=="订单取消"){
		resData.forEach(function(item,index){
			if(item.status=="订单取消"){
				newAry.push(item)
			}
		})
	}
	initOrders(newAry)
})