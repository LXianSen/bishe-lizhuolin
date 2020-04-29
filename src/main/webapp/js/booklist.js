var cart = $('.cart')
	var plus = $('.m-icons-add-active')
	var minu = $('.m-icons-reduce')
	var count = $('.count-input')
	var img = $('.book-info-img .thumb .thumb-container .thumb-pic img')
    var bigImg = $('.book-info-img .image img')
    
    //4.26add
    
    //获得地址后面的参数
    function getParams() {
        var params = {};
        if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
            var paramArray = unescape(this.location.search).substring(1, this.location.search.length).split("&");
            if (paramArray.length > 0) {
                paramArray.forEach(function (currentValue) {
                    params[currentValue.split("=")[0]] = currentValue.split("=")[1];
                });
            }
        }
        return params;
    }

    var getparams=getParams().type


    
    //
	//4.26update
	window.onload=function(){
		$.post('BookDetail',{isbn:getparams},function(data){
            console.log(data)
            data=JSON.parse(data)
            $(".good-name").text(data.bname)
            $(".card .value").text(data.bprice)
            $(".author").text(data.bauthor)
            $(".publish").text(data.bpublish)
            $(".publish-data").text(data.bdate)
            $(".price").text(data.bprice)
		})
    }
    //
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