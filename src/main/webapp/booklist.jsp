<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/booklist.css?ver=1">
    <link rel="stylesheet" href="iconfont/iconfont.css?ver=1">
    <link rel="stylesheet" href="css/shouye.css?ver=2">
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
			<div class="headerCenter">
				<div class=" login">
					<a href="login.jsp">登录</a> <a href="register.jsp">注册</a>
				</div>
				<div class="fr site-item m-user-con userhide">
					<div class="m-login-info">
						<a href="personCenter.jsp" class="m-safe-anchor" data-src="/personal-center/orders"
							data-target="_blank">
							<span class="m-icons m-icons-user-active  h-user-icon" data-src="" href=""
								style="background: ./images/user.png center center/100% no-repeat; border-radius: 50%;"></span>
							<span class="m-username">丑丑小怪物</span>
							<span class="m-icons m-icons-dropdown  h-down-icon" data-src="" href=""></span>
						</a>
						<div class="site-item-nav hidden">
							<ul class="site-nav user-nav">
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/orders" href="#"
										class="m-safe-anchor">我的订单</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/collections" href="#"
										class="m-safe-anchor">我的收藏</a></li>
								<li><a rel="nofollow" data-target="_blank" data-src="/personal-center/address" href="#"
										class="m-safe-anchor">地址管理</a></li>
								<li><a rel="nofollow" href="javascript:;">退出登录</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</header>
    <div class="content_center">
		<div class="clear">
			<div class="search_box">
				<div class="search">
					<span class="iconfont icon-icon-test1 search_font"></span>
					<input type="text" class="search-input">
				</div>
				<span class="iconfont icon-icon-test search_font shopcart"></span>
				<div class="shopcart-mark">1</div>
				<div class="m-auto-list">
					<ul>
						<li class="">扫地机器人</li>
						<li class="">扫地机</li>
						<li class="">三星</li>
						<li class="">伞</li>
						<li class="">扫把</li>
						<li class="">扫拖一体机器人</li>
						<li class="">三明治机</li>
						<li class="">扫地机器人配件</li>
						<li class="">散热器</li>
						<li class="">三脚架</li>
					</ul>
				</div>
			</div>
		</div>
        <div class="search-title">
            <span>搜索</span>
            <span class="search-title-name">白夜行</span>
        </div>

        <div class="search-book-list">
            <div class="per-book">
                <div class="per-book-img">
                    <img src="http://img3m2.ddimg.cn/62/32/25119332-1_u_9.jpg" alt="白夜行" class="cover">
                </div>
                <div class="per-book-detail">
                    <div class="per-book-name">白夜行</div>
                    <div class="per-book-other">
                        <span class="per-book-author">东野圭吾/</span>
                        <span class="per-book-publish">南海出版公司/</span>
                        <span class="per-book-data">2008-9/</span>
                        <span class="per-book-price">29.80元</span>
                    </div>
                </div>
            </div>
            <div class="per-book">
                <div class="per-book-img">
                    <img src="http://img3m3.ddimg.cn/83/14/27931943-1_b_6.jpg" alt="半小时漫画中国史4" class="cover">
                </div>
                <div class="per-book-detail">
                    <div class="per-book-name">半小时漫画中国史4</div>
                    <div class="per-book-other">
                        <span class="per-book-author">陈磊/</span>
                        <span class="per-book-publish">海南出版公司/</span>
                        <span class="per-book-data">2019-09-05/</span>
                        <span class="per-book-price">24.90元</span>
                    </div>
                </div>
            </div>
            <div class="per-book">
                <div class="per-book-img">
                    <img src="http://img3m3.ddimg.cn/96/12/1626109053-1_b_1.jpg" alt="中国神话故事" class="cover">
                </div>
                <div class="per-book-detail">
                    <div class="per-book-name">中国神话故事</div>
                    <div class="per-book-other">
                        <span class="per-book-author">马昌仪/</span>
                        <span class="per-book-publish">上海三联书店/</span>
                        <span class="per-book-data">2020-07-01/</span>
                        <span class="per-book-price">37.40元</span>
                    </div>
                </div>
            </div>
            <div class="per-book">
                <div class="per-book-img">
                    <img src="http://img3m2.ddimg.cn/97/30/28544272-1_b_3.jpg" alt="星际旅行终极指南" class="cover">
                </div>
                <div class="per-book-detail">
                    <div class="per-book-name">星际旅行终极指南</div>
                    <div class="per-book-other">
                        <span class="per-book-author">吉姆 贝尔/</span>
                        <span class="per-book-publish">重庆大学出版社/</span>
                        <span class="per-book-data">2020-05-06</span>
                        <span class="per-book-price">69.50元</span>
                    </div>
                </div>
            </div>
        </div>

    </div>
</body>

<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script>
    //4.26add
	console.log("aaaaaa")
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
        $(".search-book-list").append("<div class='per-book' data-isbn="+item.ISBN+" click=clickevent()><div class='per-book-img'><img src="+item.img+" alt="+item.bname+"></div><div class='per-book-detail'><div class='per-book-name'>"+item.bname+"</div><div class='per-book-other'><span class='per-book-author'>"+item.bauthor+"/</span><span class='per-book-publish'>"+item.bpublish+"/</span><span class='per-book-data'>"+item.bdate+"/</span><span class='per-book-price'>"+item.bprice+"元</span></div></div></div>")

    })
    })
    
	$(".search-book-list").on("click",".per-book",function(){
		window.location.href="detail.jsp?isbn="+$(".per-book").data('isbn')
	})
</script>
</html>