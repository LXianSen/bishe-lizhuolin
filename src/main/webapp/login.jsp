<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>物资管理系统-登录</title>
<link rel="stylesheet" href="./css/iconfont.css">
<style type="text/css">
*{
            margin: 0;
            padding: 0;
        }
        ul,li{
            text-decoration: none;
            list-style: none;
        }
        a{
            text-decoration: none;
        }
        .main{
            position: fixed;
            background: #f9f9f9;
            height: 100%;
            width: 100%;

        }
        section{
            position: absolute;
            width: 854px;
            height: 548px;
            background: white;
            top:50%;
            left: 50%;
            margin-left: -427px;
            margin-top: -274px;
        }
        .formStyle{
            color: #646464;
            /* position: absolute;
            left:50%;
            transform: translateX(-50%); */
        }
        .title{
            padding: 40px 0;
            text-align: center;
            font-size: 28px;
        }
        .boxStyle{
            padding-bottom: 14px;
        }
        .inputStyle{
            width: 326px;
            height: 22px;
            border: 1px solid #e6e6e6;
            padding: 13px 16px 13px 14px;
            
        }
        .inputStyle.short{
            width: 160px;
        }
        .tel{
            /* margin-bottom: 10px; */
        }
        .btn{
            /* display: inline-block; */
            font-size: 20px;
            border: 0;
            width: 358px;
            height: 44px;
            line-height: 44px;
            cursor: pointer;
            text-align: center;
            background-color: #ff2832;
            color: #fff;
            margin-top: 10px;
            /* border-radius: 22px; */
            /* position: absolute;
            left: 50%;
            margin-left: -89px; */
            /* margin-left: 50px; */
        }
        .register{
            text-align: right;
            font-size: 14px;
            color: #757575;
            margin-top: 14px;
            margin-bottom: 30px;
        }
        .register a{
            font-size: 14px;
            color: #757575;
            text-decoration: none;
        }
        .register span{
            color: #e0e0e0;
        }
        footer{
            position: fixed;
            bottom: 60px;
            left: 50%;
            transform: translateX(-50%);
        }
        .languge{
            display: flex;
            justify-content: center;
        }
        .languge li span{
            padding: 0 10px;
            color: #757575;
        }
        .languge li a{
            color: #757575;
            cursor: pointer;
        }
        .languge li .choose{
            color: #333333;
        }
        .centerbox{
            position: absolute;
            left: 50%;
            transform: translateX(-50%);
        }
        .oth_type_tit{
            border-top: 1px solid #e0e0e0;
            padding-top: 10px;
            
        }
        .oth_type_txt{
            font-size: 14px;
            color: #b0b0b0;
            margin: 0 auto;
            text-align: center;
        }
        fieldset{
            border: 0;
        }
        #sns-login-links{
            
        }
        .oth_type_links{
            padding-top: 10px;
            text-align: center;
        }
        .icon_type{
            width: 30px;
            height: 30px;
            margin: 0 12px;
            display: inline-block;
            border-radius: 50%;
        }
        .btn_qq{
            background-color: #0288d1;
        }
        .sns-login-link{

        }
        .btn_sns_icontype{
            background: url(https://account.xiaomi.com/static/res/166d6dc/account-static/respassport/acc-2014/img/icons_type.png);
            width: 18px;
            height: 18px;
            vertical-align: middle;
        } 
        .icon_default_qq{
            background-position: -19px 0;
        }
        .icon_type .btn_sns_icontype{
            display: block;
            margin: 4px auto 0;
        }
        .icon_default_weibo {
            background-position: -38px 0;
        }
        .btn_weibo {
            background-color: #d32f2f;
        }
        .btn_alipay {
            background-color: #0ae;
        }
        .btn_weixin {
            background-color: #00d20d;
        }
        .icon_default_weixin {
            background-position: -83px 0;
            width: 24px;
        }
        .icon_default_alipay {
            background-position: -57px 0;
            width: 25px;
        }
        .tips{
            margin-bottom: 5px;
            line-height: 20px;
            color: #ff2832;
            font-size:14px;
            
        }
        .hide{
        	display: none;
        }
</style>



</head>
<body>
	<div class="main">
        <section>
            <div class="centerbox">
                <h1 class="title">登录</h1>
                <form  class="formStyle">
                    <div class="boxStyle">
                        <input type="text" class="inputStyle tel" placeholder="邮箱/昵称/手机号码">
                        <p id="text1" class="alertText"></p>
                    </div>
                    <div class="boxStyle">
                        <input type="password" class="inputStyle password" placeholder="密码">
                        <span id="text2" class="infoText">
                        </span>
                    </div>
                    <div class="tips hide"> 
                        <span class="iconfont icon-icon-test"></span>
                        <span class="text"></span>
                    </div>
                    <input type="button" value="登录" class="btn" onclick=Check()>
                    <div class="register">
                        <a href="${pageContext.request.contextPath}/register.jsp" class="registerNow">立即注册</a>
                        <span>|</span>
                        <a href="" class="forgotPswd">忘记密码？</a>
                    </div> 
                    <fieldset class="oth_type_tit">                                        
                        <legend align="center" class="oth_type_txt">其他方式登录</legend>                                      
                    </fieldset>
                    <div id="sns-login-links" class="oth_type_links">
                        <a class="icon_type btn_qq sns-login-link" data-type="qq" href="/pass/sns/login/auth?appid=100284651&amp;&amp;callback=https%3A%2F%2Fshopapi.io.mi.com%2Fapp%2Fshop%2Fauth%3Flogid%3D1584256117.236496375%26sign%3Db5353420a9974156016281cb5793f8f8%26followup%3Dhttps%253A%252F%252Fwww.xiaomiyoupin.com%252F&amp;sid=miotstore" title="QQ登录" target="_blank">
                            <i class="btn_sns_icontype icon_default_qq"></i>
                        </a>
                        <a class="icon_type btn_weibo sns-login-link" data-type="weibo" href="/pass/sns/login/auth?appid=2996826273&amp;&amp;callback=https%3A%2F%2Fshopapi.io.mi.com%2Fapp%2Fshop%2Fauth%3Flogid%3D1584256117.236496375%26sign%3Db5353420a9974156016281cb5793f8f8%26followup%3Dhttps%253A%252F%252Fwww.xiaomiyoupin.com%252F&amp;sid=miotstore" title="微博登录" target="_blank">
                            <i class="btn_sns_icontype icon_default_weibo"></i>
                        </a>
                        <a class="icon_type btn_alipay sns-login-link" data-type="alipay" href="/pass/sns/login/auth?appid=2088011127562160&amp;&amp;callback=https%3A%2F%2Fshopapi.io.mi.com%2Fapp%2Fshop%2Fauth%3Flogid%3D1584256117.236496375%26sign%3Db5353420a9974156016281cb5793f8f8%26followup%3Dhttps%253A%252F%252Fwww.xiaomiyoupin.com%252F&amp;sid=miotstore" title="支付宝登录" target="_blank">
                            <i class="btn_sns_icontype icon_default_alipay"></i>
                        </a>
                        <a class="icon_type btn_weixin sns-login-link" data-type="weixin" href="/pass/sns/login/auth?appid=wxxmzh&amp;scope=snsapi_login&amp;callback=https%3A%2F%2Fshopapi.io.mi.com%2Fapp%2Fshop%2Fauth%3Flogid%3D1584256117.236496375%26sign%3Db5353420a9974156016281cb5793f8f8%26followup%3Dhttps%253A%252F%252Fwww.xiaomiyoupin.com%252F&amp;sid=miotstore" title="微信登录" target="_blank">
                            <i class="btn_sns_icontype icon_default_weixin"></i>
                        </a>
                    </div>
                </form>
                 
            </div>
        </section>
        <footer>
            <ul class="languge">
                <li>
                    <a class="choose" data-name="simplified">简体</a>
                    <span>|</span>
                </li>
                <li>
                    <a data-name="complex">繁体</a>
                    <span>|</span>
                </li>
                <li>
                    <a data-name="english">English</a>
                </li>
            </ul>
        </footer>
    </div>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script>
<script type="text/javascript">
    var language=$('footer>ul>li>a')
    var tips=$('.tips')
    function Check(){
    	var loginName=$('.tel').val(),name='nickname'
    	if(/^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/.test(loginName)){
    		name='mail'
    	}else if(/^1[3456789]\d{9}$/.test(loginName)){
    		name='phone'
    	}
    	$.post('login',{
    		name:$('.tel').val(),
    		userpwd:$('.password').val()
    	},function(data){
    		if(data=='0'){
    			tips.removeClass('hide')
    			$('.tips>.text').text('用户或密码输入错误，请重新输入！')
    		}else if(data=='1'){
    			window.location.href='${pageContext.request.contextPath}/shouye.jsp'
    		}
    	})
    }
  
    var languageAry={
        'complex':{
            name:'登入',
            id:'E-mail/暱稱/手機號碼',
            pswd:'密碼',
            register:'立即註冊',
            forget:'忘記密碼?',
            btn:'登入',
            other:'其他登入方式'
        },
        'simplified':{
            name:'登录',
            id:'邮箱/昵称/手机号码',
            pswd:'密码',
            register:'立即注册',
            forget:'忘记密码?',
            btn:'登录',
            other:'其他登录方式'
        },
        'english':{
            name:'Login',
            id:'E-mail/Nickname/Phone',
            pswd:'Password',
            register:'create account',
            forget:'Forgot password?',
            btn:'sign in',
            other:'More options'
        }
    }

    function chooseLanguage(name){
        switch(name){
            case 'simplified':
                changeText(languageAry.simplified);
                break;
            case 'complex':
                changeText(languageAry.complex);
                break;
            case 'english':
                changeText(languageAry.english);
                break;
        }
    }

    language.click(function(e){
        var tar=e.target
        console.log($(tar))
        e.preventDefault
        language.removeClass('choose')
        $(tar).addClass('choose')
        chooseLanguage($(tar).data('name'))
    })

    function changeText(item){
        $('.title').text(item.name)
        $('.tel').attr('placeholder',item.id)
        $('.password').attr('placeholder',item.pswd)
        $('.btn').attr('value',item.btn)
        $('.oth_type_tit legend').text(item.other)
    }
</script>
</html>