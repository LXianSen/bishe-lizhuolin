var cart = $('.cart')
	var plus = $('.m-icons-add-active')
	var minu = $('.m-icons-reduce')
	var count = $('.count-input')
	var img = $('.book-info-img .thumb .thumb-container .thumb-pic img')
	var bigImg = $('.book-info-img .image img')
	
	window.onload=function(){
		$.post('BookDetail',{isbn:'0000001'},function(data){
			console.log(data)
		})
	}
	cart.click(function(e) {
		
		 $.post("CartAdd",{isbn:'0000002',count:$('.count-input').val(),type:"add"},function(data){
			 data=JSON.parse(data)
			 if(data.code=="error"){
				 console.log(111111111111)
				 
				 window.location.href="login.jsp"
			 }
		 })
	})
	plus.click(function() {
		var num = count.val()
		console.log(num)
		num++
		count.val(num)
		if (num > 1) {
			minu.parent().removeClass('minus-btn').addClass('minus-btn-active')
			minu.removeClass('m-icons-reduce')
					.addClass('m-icons-reduce-active')
		}

	})
	minu.click(function() {
		var num = count.val()
		if (num > 1) {
			num--
		}
		count.val(num)
		if (num <= 1) {
			minu.parent().addClass('minus-btn').removeClass('minus-btn-active')
			minu.addClass('m-icons-reduce')
					.removeClass('m-icons-reduce-active')
		}
	})
	img.mouseenter(function(e) {
		var tar = $(e.target)

		var url = tar.attr('src')
		console.log(url)
		bigImg.attr('src', url)
	})
	//跳转到购物车
	$('.shopcart').click(function(){
		window.location.href="shoppingCart.jsp"
	})