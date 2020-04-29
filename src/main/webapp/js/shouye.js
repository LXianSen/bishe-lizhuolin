/* {
		firstname: "教育",
		secodename: [
			{
				name: "英语综合教材",
				imgurl: ""
			},
			{
				name: "中小学教辅",
				imgurl: ""
			}
		]
	},
	{
		firstname: "小说",
		secodename: [
			{
				name: "中国当代小说",
				imgurl: "./images/28504153-1_l_3.jpg"
			},
			{
				name: "四大名著",
				imgurl: ""
			}
		]
	}, */

	var navDetails = $('.top_box .directory .nav-details')
	var fixedlis = $('.fixed-nav li')
	var book = $('.new_bookList>.book')
	var userbox = $('.m-user-con')
	var loginbox = $('.login')
	var type = [

	]

	var searchData = [
		{ name: "张爱玲", type: "author", no: "001" },
		{ name: "白夜行", type: "book", no: "0000001" },
		{ name: "清华出版社", type: "publish", no: "0011" }
	]
	// $(window).scroll(function(){
	//     console.log($("body").scrollTop())
	// })

	$(".toTop").click(function () {
		$('body,html').animate({
			scrollTop: 0
		},
			500);
		return false;
	});

	$(".m-auto-list>ul").empty()
	searchData.forEach(function (item, index) {
		$(".m-auto-list>ul").append("<li data-type=" + item.type + " data-no=" + item.no + ">" + item.name + "</li>")
	})
	$(".m-auto-list>ul>li").click(function (e) {
		let Ttype = $(e.target).data("type")
		let Tno = $(e.target).data("no")
		let value = $(e.target).val()
		console.log(Ttype)
		if (Ttype == "book") {
			window.location.href = "detail.jsp?search_name=" + value + "&ISBN=" + Tno
		} else {
			window.location.href = "booklist.jsp?search_name=" + value + "&ISBN=" + Tno
		}
		// window.location.href="booklist.jsp?type="+Ttype
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
			console.log(li)
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

	//处理新书
	$('.new_box .new_bookList').empty()
	newbooks.forEach(function (item, index) {

		$('.new_box .new_bookList').append('<div data-ISBN=' + item.isbn + ' class="book"><div class="newBook clearfix"><img src=' + item.img + ' alt="" class="img"><p class="titleText"><a title="人生（茅盾文学奖得主路遥代表作，全新精装版）" href="http://product.dangdang.com/28504153.html"target="_blank">' + item.name + '</a><p class="author">' + item.author + '</p><p class="price"><span class="rob"> <span class="sign">¥</span> <span class="num">' + item.disprice + '</span> </span> <span class="price_r"> <span class="sign">¥</span> <span class="num">' + item.price + '</span></span></p></p></div></div>')

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
			}, 500);
		};
	}

	function handle(e) {
		console.log(1)
		var tar = $(e.target)
		console.log(tar)
		$('.m-auto-list').addClass('show')
		$.post("Search", { inputmsg: tar.val() }, function (data) {
			console.log(data)
			var textdata = data
			if (data.length > 8) {
				textdata.slice(0, 9)
			}
			textdata.forEach(function (item, index) {
				$('.m-auto-list').text(item)
			})
			$('.m-auto-list').addClass('show')
		})
	}

	$('.search-input').on("input", throttle(handle, 1000))

	$("body").click(function (e) {
		$('.m-auto-list').removeClass('show')
	})

	$(".search-input").focus(function (e) {
		$('.m-auto-list').addClass('show')
	})

	window.onload = function () {
		//处理用户登录
		var user = JSON.parse(sessionStorage.getItem("user"))
		if (user) {
			userbox.removeClass('userhide')
			loginbox.addClass('userhide')
			$('.m-username').text(user.userName || user.userId)
		}


		//处理分类
	}
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
		/* $.post('BookDetail', {
			isbn : Isbn
		}, function(data) {
			console.log(data)
		}) */
	})