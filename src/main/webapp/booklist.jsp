<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>图书列表</title>
    <link rel="stylesheet" href="css/booklist.css?ver=2">
    <link rel="stylesheet" href="iconfont/iconfont.css?ver=1">
    <link rel="stylesheet" href="css/shouye.css?ver=1">
    <style>
         .content_center {
            width: 1080px;
            margin: 20px auto;
        }
        * {
            margin: 0;
            padding: 0;
        }

        a {
            text-decoration: none;
        }
        .search-title{
            padding: 15px 0 30px 0;
            font-size: 24px;
            font-weight: bold;
        }
        .search-book-list{
            /* display: flex;
            align-items: center;
            justify-content: flex-start; */
        }
        .per-book{
            display: flex;
            align-items:flex-start;
            justify-content: flex-start; 
            padding:10px 0 ;
        }
        .per-book-img{
            width: 100px;
            height: 120px;
            border-radius: 5px;
            overflow: hidden;
        }
        .per-book-img>img{
            width: 100px;
            height: 120px;
        }
        .per-book-detail{
            padding-left: 10px;
        }
        .per-book-name{
            padding: 20px 0;
            font-size: 20px;
            font-weight: bold;
        }
    </style>
</head>

<body>
	<header>
	</header>
    <div class="content_center">
		<div class="clear">
			<div class="search_box">
				<!-- <div class="search">
					<span class="iconfont icon-icon-test1 search_font"></span>
					<input type="text" class="search-input">
				</div>
				<span class="iconfont icon-icon-test search_font shopcart"></span>
				<div class="shopcart-mark">1</div>
				<div class="m-auto-list">
					<ul></ul>
				</div> -->
			</div>
		</div>
        <div class="search-title">
            <span>搜索</span>
            <span class="search-title-name"></span>
        </div>

        <div class="search-book-list">
        </div>
    </div>
    <div class="m-fixedBar">
	</div>

	<footer>
	</footer>
</body>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript" src="header.js"></script>
<script type="text/javascript" src="footer.js"></script>
<script type="text/javascript" src="navigation.js"></script>
<script type="text/javascript" src="search.js"></script>
<script>
    //4.26add
	console.log("aaaaaa")
	handleUser();
    //获得地址后面的参数
    function getParams() {
        var params = {};
        if (this.location.search.indexOf("?") == 0 && this.location.search.indexOf("=") > 1) {
            var paramArray = unescape(this.location.search).substring(1, this.location.search.length).split("&");
            console.log(paramArray)
            if (paramArray.length > 0) {
                paramArray.forEach(function (currentValue) {
                    params[currentValue.split("=")[0]] = currentValue.split("=")[1];
                });
            }
        }
        return params;
    }
	
	
	$.getUrlParam = function (name) {
         var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
         var r = window.location.search.substr(1).match(reg);
         if (r != null) return unescape(r[2]); return null;
	}
	var getparams= decodeURI($.getUrlParam('search_name'));
	$(".search-input").val(getparams)
    
    /* var getparams=getParams().search_name */

    $('.search-title-name').text(getparams)

    //模拟后台返回的书籍信息
    
    var booktest=[
    ]
    $.post("Search",{inputmsg:getparams},function(data){
    	
		data=JSON.parse(data)
		$(".search-book-list").empty()
    data.data.forEach(function(item,index){
        $(".search-book-list").append("<div class='per-book' data-isbn="+item.ISBN+" click=clickevent()><div class='per-book-img'><img src="+item.img1+" alt="+item.bname+"></div><div class='per-book-detail'><div class='per-book-name'>"+item.bname+"</div><div class='per-book-other'><span class='per-book-author'>"+item.bauthor+"/</span><span class='per-book-publish'>"+item.bpublish+"/</span><span class='per-book-data'>"+item.bdate+"/</span><span class='per-book-price'>"+item.bprice+"元</span></div></div></div>")

    })
    if($("footer").offset().top<654){
		$("footer").attr("style","position:fixed;bottom:0px")
	}
    })
    
	$(".search-book-list").on("click",".per-book",function(e){
		var tar=$(e.target)
		window.location.href="detail.jsp?isbn="+tar.parents(".per-book").data('isbn')
	})
	
	
	function handleUser(){
		var user = JSON.parse(sessionStorage.getItem("user"))
		if (user) {
			$('.m-user-con').removeClass('userhide')
			$('.login').addClass('userhide')
			$('.m-username').text(user.username || user.userd)
		}
	}
</script>
</html>