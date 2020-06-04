/**
 * 
 */
console.log(22222222222)
$(".search_box").append(`
		<div class="search">
					<span class="iconfont icon-icon-test1 search_font"></span>
					<input type="text" class="search-input">
				</div>
				<span class="iconfont icon-icon-test search_font shopcart"></span>
				<div class="m-auto-list">
					<ul></ul>
				</div>
`)

function searchList(searchData){
	let ary=[]
	console.log($(".m-auto-list>ul"))
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
$(".search_box").on("click",".m-auto-list>ul li",function(e){
	let value = $(e.target).text()
	console.log(value)
	 window.location.href="booklist.jsp?search_name="+encodeURI(encodeURI(value))
})

$(".search_box").click(function (e) {
	var e = e || window.event;
	e.stopPropagation()
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
	$('.search_box').on("input",".search-input", throttle(handle, 1000))

	$("body").click(function (e) {
		$('.m-auto-list').removeClass('show')
		
	})
	//聚焦输入框
	$('.search_box').on("focus",".search-input",function(e){
		let tar=$(e.target)
		if(tar.val()){
			$.post("Search",{inputmsg:tar.val()},function(data){
				data=JSON.parse(data)
				if(data){
					console.log(data)
					$('.m-auto-list').addClass('show')
					searchList(data)
				}
				
			})
		}
	})
	
	$('.search_box').on("keydown",".search-input",function(e){
		console.log("weeeeeeeeeee")
		var val=encodeURI(encodeURI($(".search-input").val()));
		if(e.keyCode==13){
			window.location.href="booklist.jsp?search_name="+val
		}
	})