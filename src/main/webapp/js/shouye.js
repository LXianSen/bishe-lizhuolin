
	var navDetails = $('.top_box .directory .nav-details')
	var fixedlis = $('.fixed-nav li')
	var book = $('.new_bookList>.book')
	var userbox = $('.m-user-con')
	var loginbox = $('.login')
	var type = []
	var searchData = []
	

	console.log("首页js更新3")
	
	//点击搜索框旁的购物车
	$(".shopcart-mark").click(function(){
		window.location.href="shoppingCart.jsp"
	})
	
	//渲染搜索列表
	function searchList(searchData){
		let ary=[]
		$(".m-auto-list>ul").empty()
		/*searchData.forEach(function (item, index) {
			$(".m-auto-list>ul").append("<li data-type=" + item.type + " data-no=" + item.no + ">" + item.name + "</li>")
		})*/
		searchData.data.forEach(function (item, index) {
						for(var i in item){
							if(typeof(item[i])=="string"){
								if(item[i].indexOf($(".search-input").val())!=-1){
									if(ary.indexOf(item[i])==-1){
										console.log(i,item[i])
										ary.push(item[i])
										$('.m-auto-list>ul').append("<li data-type=" + item.sontype + " data-no=" + item.no + ">" + item[i] + "</li>")
									}
								}
							}	
						}
					})
	}
	
	//点击搜索出来的下拉列表
	$(".m-auto-list>ul").on("click","li",function(e){
		let value = $(e.target).text()
		console.log(value)
		 window.location.href="booklist.jsp?search_name="+encodeURI(encodeURI(value))
	})
	
	$(".search_box").click(function (e) {
		var e = e || window.event;
		e.stopPropagation()
	})

	var newbooks = [
		{ name: "人生（茅盾文学奖得主路遥代表作，全新精装版）", isbn: "0000001", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
		{ name: "ceshi", isbn: "0000002", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
		{ name: "人生（茅盾文学奖得主路遥代表作，全新精装版）", isbn: "0000001", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
		{ name: "人生（茅盾文学奖得主路遥代表作，全新精装版）", isbn: "0000001", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
		{ name: "人生（茅盾文学奖得主路遥代表作，全新精装版）", isbn: "0000001", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
		{ name: "人生（茅盾文学奖得主路遥代表作，全新精装版）", isbn: "0000001", author: "路遥", price: "40.00", disprice: "25.80", img: "./images/28504153-1_l_3.jpg" },
	]

	//初始化图书分类
	$.post("BookTypeShow", { typename: "" }, function (data) {
		type = JSON.parse(data)
		$('.directory>ul').empty()
		for (let i = 0; i < type.length; i++) {
			$('.directory>ul').append("<li data-no=" + i + "><span>" + type[i].firstname + "</span></li>")
			console.log(222222)
		}
		var lis = $('.top_box .directory ul li');
		userbox.mouseenter(function (e) {
			$('.site-item-nav').removeClass('hidden').addClass('show')
		})
		userbox.mouseleave(function (e) {
			$('.site-item-nav').removeClass('show').addClass('hidden')
		})
		$('.top_box .directory ul li').mouseenter(function (e) {

			navDetails.removeClass('hide')
			var li = e.target
			var second = type[$(li).data('no')]
			$('.nav-details>ul').empty()
			for (let i = 0; i < second.secondname.length; i++) {
				$('.nav-details>ul').append('<li><img src=' + second.secondname[i].imgurl + ' alt="" class="smallimg"><span>' + second.secondname[i].name + '</span></li>')
			}

		})
		$('.directory').mouseleave(function () {
			navDetails.addClass('hide')
		})
	})

	

	//防抖函数
	function debounce(fn, wait) {
		var timeout = null;
		return function () {
			if (timeout !== null) clearTimeout(timeout);
			timeout = setTimeout(fn, wait);
		}
	}
	//节流
	function throttle(fn, await) {
		let canRun = true; // 通过闭包保存一个标记
		return function () {
			// 在函数开头判断标记是否为true，不为true则return
			if (!canRun) return;
			// 立即设置为false
			canRun = false;
			// 将外部传入的函数的执行放在setTimeout中
			setTimeout(function () {
				// 最后在setTimeout执行完毕后再把标记设置为true(关键)表示可以执行下一次循环了。
				// 当定时器没有执行的时候标记永远是false，在开头被return掉
				fn.apply(this, arguments);
				canRun = true;
			}, await);
		};
	}

	function handle(e) {
		let ary=[]
		$(".m-auto-list>ul").empty()
		if($(".search-input").val()){
			$.post("Search", { inputmsg: $(".search-input").val() }, function (data) {
				var textdata = JSON.parse(data)
				
				$('.m-auto-list').addClass('show')
				if(textdata.code=="500"){
					console.log(textdata)
					$('.m-auto-list>ul').append("<li>" + textdata.msg + "</li>")
					
				}else{
					console.log(textdata)
					if (textdata.data.length > 8) {
						textdata.data.slice(0, 9)
					}
					textdata.data.forEach(function (item, index) {
						for(var i in item){
							if(typeof(item[i])=="string"){
								if(item[i].indexOf($(".search-input").val())!=-1){
									if(ary.indexOf(item[i])==-1){
										console.log(i,item[i])
										ary.push(item[i])
										$('.m-auto-list>ul').append("<li data-type=" + item.sontype + " data-no=" + item.no + ">" + item[i] + "</li>")
									}
								}
							}	
						}
					})
					
				}
			})
		}else{
			console.log("hide")
			$('.m-auto-list').removeClass('show')
		}
		
	}
	//用户输入文字
	$('.search-input').on("input", throttle(handle, 1000))

	$("body").click(function (e) {
		$('.m-auto-list').removeClass('show')
		
	})
	//聚焦输入框
	$(".search-input").focus(function (e) {
		let tar=$(e.target)
		if(tar.val()){
			$.post("Search",{inputmsg:tar.val()},function(data){
				data=JSON.parse(data)
				if(data){
					$('.m-auto-list').addClass('show')
					searchList(data)
				}
				
			})
		}
	})
	
	$(".search-input").keydown(function(e){
		console.log("weeeeeeeeeee")
		var val=encodeURI(encodeURI($(".search-input").val()));
		if(e.keyCode==13){
			window.location.href="booklist.jsp?search_name="+val
		}
	})

	
	
	for (let i = 0; i < type.length; i++) {
		$('.directory>ul').append("<li data-no=" + i + "><span>" + type[i].firstname + "</span></li>")
	}
	var lis = $('.top_box .directory ul li');
	/*userbox.mouseenter(function (e) {
		$('.site-item-nav').removeClass('hidden').addClass('show')
	})
	userbox.mouseleave(function (e) {
		$('.site-item-nav').removeClass('show').addClass('hidden')
	})*/
	$('.top_box .directory ul li').mouseenter(function (e) {

		navDetails.removeClass('hide')
		var li = e.target
		console.log(li)
		var second = type[$(li).data('no')]
		$('.nav-details>ul').empty()
		for (let i = 0; i < second.secodename.length; i++) {
			$('.nav-details>ul').append('<li><img src=' + second.secodename[i].imgurl + ' alt="" class="smallimg"><span>' + second.secodename[i].name + '</span></li>')
		}

	})
	$('.directory').mouseleave(function () {
		navDetails.addClass('hide')
	})


	fixedlis.mouseenter(function (e) {
		let li = e.target
		$(li.children[2]).addClass("show")
		$('.fixed-nav li fixed-pop')
	})
	fixedlis.mouseleave(function (e) {
		let li = e.target
		console.log(li)
		$(li.children[2]).removeClass("show")
	})

	$('.new_bookList>.book').click(function (e) {
		var tar = $(e.target)
		var Isbn = tar.parents('.book').data('isbn')
		window.location.href = "detail.jsp"
	})
	$(".new_bookList").on("click",".book",function(e){
		var tar = $(e.target)
		var Isbn = tar.parents('.book').data('isbn')
		window.location.href = "detail.jsp?isbn="+Isbn
	})
	
	$.post("NewBookShow",{},function(data){
		data=JSON.parse(data)
		console.log(data)
		//处理新书
	$('.new_box .new_bookList').empty()
	data.forEach(function (item, index) {

		$('.new_box .new_bookList').append('<div data-ISBN=' + item.ISBN + ' class="book"><div class="newBook clearfix"><div style="width:150px;height:150px;text-align:center"><img src=' + item.img1 + ' alt="" class="img" style="width:150px;height:150px"></div><div style="text-align:left"><p class="titleText"><a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" target="_blank">' + item.bname + '</a><p class="author">' + item.bauthor + '</p><p class="price"><span class="rob"> <span class="sign">¥</span> <span class="num">' + (item.bprice*item.bdiscount).toFixed(2) + '</span> </span> <span class="price_r"> <span class="sign">¥</span> <span class="num">' + item.bprice + '</span></span></p></div></p></div></div>')

	})
	})
	
	function handleUser(){
		var user = JSON.parse(sessionStorage.getItem("user"))
		if (user) {
			$('.m-user-con').removeClass('userhide')
			$('.login').addClass('userhide')
			$('.m-username').text(user.username || user.userd)
		}else{
			$('.m-user-con').addClass('userhide')
			$('.login').removeClass('userhide')
		}
	}
	
	$.post("Recommend",{},function(data){
		data=JSON.parse(data)
		console.log(data)
		if(data.code=="error"){
			sessionStorage.clear()
			handleUser()
		}else if(data.code=="504"){
			$(".like_box").append(`<div class="like_title">
					<h2>猜你喜欢</h2>
				</div>
				<div class="like_bookList"></div>`)
				$('.like_box .like_bookList').empty()
				$('.like_box .like_bookList').html('<p style="padding-left:440px; font-size: 20px;line-height: 90px;">当前暂无推荐</p>')
		}else{
			$(".like_box").append(`<div class="like_title">
				<h2>猜你喜欢</h2>
			</div>
			<div class="like_bookList"></div>`)
			
			$('.like_box .like_bookList').empty()
			if(data.length==0){
				$('.like_box .like_bookList').append('当前暂无推荐')
			}else{
				data.forEach(function (item, index) {

					$('.like_box .like_bookList').append('<div data-ISBN=' + item.ISBN + ' class="book"><div class="newBook clearfix"><div style="width:150px;height:150px;text-align:center"><img src=' + item.img1 + ' alt="" class="img" style="width:150px;height:150px"></div><div style="text-align:left"><p class="titleText"><a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" target="_blank">' + item.bname + '</a><p class="author">' + item.bauthor + '</p><p class="price"><span class="rob"> <span class="sign">¥</span> <span class="num">' + (item.bprice*item.bdiscount).toFixed(2) + '</span> </span> <span class="price_r"> <span class="sign">¥</span> <span class="num">' + item.bprice + '</span></span></p></div></p></div></div>')

				})
			}
	
		}
	})
	
	