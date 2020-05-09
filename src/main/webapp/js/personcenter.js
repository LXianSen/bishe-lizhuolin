/**
 * 
 */
var businessObj={
	"我的订单":"orders",
	"我的资产":"wallets",
	"我的收藏":"collection",
	"地址管理":"address",
},resData,newAry=[],statusNo=""

post_("我的订单")

$(".mijia-personal-functional-list-box ul li").click(function(e){
	let tar=$(e.target);
	statusNo="代付款"
	post_(tar.text())
	
})

$(".mijia-personal-selector ul li").click(function(e){
	let tar=$(e.target);
	statusNo=tar.text()
	post_("我的订单")
})

function post_(par){
	$.post("MyInfomation",{msg:businessObj[par],status:statusNo},function(data){
		data=JSON.parse(data);
		if(data.code=="error"){
			window.location.href="login.jsp"
		}else{
			resData=data
		}
	})
}


var textData=[
				{
					fatherorder:"123",
					totalprice:"50.00", //总价
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
					totalprice:"66.00", //总价
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
initOrders(textData)

function initOrders(data){
	var str=""
	$(".mijia-personal-main").empty()
	data.forEach(function(item,index){
		console.log(index)
		str=""
		item.sonorder.forEach(function(item1,index1){
			console.log(index1)
			str=str+'<div class="mijia-personal-product will-click has-price">'+
            '<div class="mijia-personal-product-image mijia-personal-left">'+
			'<img class="" src="https://img.youpin.mi-img.com/shopmain/ab0c338dd9f4ae4901fbc2ad60a7a132.png?w=800&amp;h=800"  alt="">'+
		'</div>'+
		'<span class="mijia-personal-product-text-box mijia-personal-left">'+
            '<div class="mijia-personal-has-price mijia-personal-product-name-box">'+
                 '<p>'+item1.bname+'</p>'+
                 '<p class="mijia-personal-price mijia-personal-product-price">￥'+item1.bprice+'</p>'+
             '</div>'+
         '</span>'+
		 '<span class="mijia-personal-product-count mijia-personal-right">X&nbsp;'+item1.count+'</span>'+
		 '<span class="mijia-personal-product-refound mijia-personal-right"></span>'+
      '</div>'
			
		})
		
		$(".mijia-personal-main").append('<div class="mijia-personal-order-item">'+
				  '<section class="mijia-personal-item-header">'+
				  		'<span>订单日期：'+item.date+'</span>'+
				  		'<span class="mijia-personal-sub-font mijia-personal-sub-title">59分钟后订单关闭</span>'+
			    		'<span class="mijia-personal-active-font mijia-personal-right">'+item.status+'</span>'+
				  '</section>'+
				  '<section>'+
						'<div class="mijia-personal-products-box mijia-personal-block" style="margin-top: 0px;">'+str+
			
			
				  '</section>'+
			    '<section>'+
						'<span class="mijia-personal-right mijia-personal-price-box">订单总金额:&nbsp;'+
							'<span class="mijia-personal-price">'+item.totalprice+'元</span>'+
						'</span>'+
				  '</section>'+
				  '<section>'+
				  		'<div class="mijia-personal-button-box mijia-personal-right">'+
				  			'<a class="m-btns m-btn-gray m-btn-sm" href="javascript:;">取消订单</a>'+
				  			'<a class="m-btns m-btn-brown m-btn-sm" href="javascript:;">去支付</a>'+
				  		'</div>'+
				  '</section>'+
				'</div>')	
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
					 
	
	
					 
 	
	/*if(dataAry.length==0){
		$(".mijia-personal-main").html("<div style='text-align:center'>没有相应订单数据</div>")
	}*/
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

