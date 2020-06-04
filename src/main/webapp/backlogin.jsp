<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./layui/css/layui.css">  
    <script src="./layui/layui.js"></script>
    <style>
        *{
            margin:0;
            padding: 0;
        }
        .container{
            background: #f9f9f9;
            border: 1px solid transparent;
            background-image: url(https://demo.easyweb.vip/pro/assets/images/bg-login.jpg);
            background-repeat: no-repeat;
            background-size: cover;
            height: 753px;
            position: relative;
        }
        .center-box{
            position: absolute;
            background: white;
            width: 380px;
            height: 458px;
            top:50%;
            left:50%;
            transform: translate(-50%,-50%);
            padding: 50px 30px;
            box-sizing: border-box;
        }
        .input-box{
            width: 330px;
            margin:0 auto
        }
        .title{
            font-size: 18px;
            text-align: center;
            margin-bottom: 25px;
        }
        .layui-form-item{
            border: 1px solid #e6e6e6;
            position: relative;
            margin-bottom: 25px;
        }
        .layui-input{
            display: inline-block;
            border: 0;
            padding-left: 45px;
            height: 46px;
        }
        .layui-icon{
            width: 46px;
            height: 46px;
            line-height: 46px;
            font-size: 20px;
            color: #909399;
            position: absolute;
            left: 0;
            top: 0;
            text-align: center;
        }
        .login-captcha-group{
            width: 185px;
            display: inline-block;
        }
        .checkbox-group{
            border:0
        }
        .layui-btn{
            background-color: #5FB878;
            border-color: #5FB878;
        }
        .layui-btn-fluid{
            height: 48px;
            line-height: 48px;
            font-size: 16px;
            border-radius: 2px !important;
        }
        .btn-group{
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="center-box">
            <div class="input-box">
                <div class="title">用户登录</div>
                <form class="layui-form" action="">
                    <div class="layui-form-item">
                        <i class="layui-icon layui-icon-username" ></i>  
                        <input type="text" name="username" required lay-verify="required" placeholder="请输入登录账号" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-item">
                        <i class="layui-icon layui-icon-password" ></i>  
                        <input type="password" name="password" required lay-verify="required" placeholder="请输入登录密码" autocomplete="off" class="layui-input">
                    </div>
                    <div class="layui-form-item layui-input-icon-group login-captcha-group">
                        <i class="layui-icon layui-icon-auz"></i>
                        <input class="layui-input" name="code" placeholder="请输入验证码" autocomplete="off" lay-vertype="tips" lay-verify="required" required="">
                    	
                    </div>
                    <canvas id="canvas" width="100" height="36" style="border: 1px solid #000000;vertical-align: middle;margin-left: 37px;"></canvas>
                    <div class="layui-form-item btn-group">
                        <button class="layui-btn layui-btn-fluid" lay-filter="loginSubmit" lay-submit="">登录</button>
                    </div>
                </form>
                    
            </div>
            
        </div>
    </div>
    <div class="fixed-tips">
		<span>该用户没有权限</span>
	</div>
</body>
<script type="text/javascript" src="js/jquery-3.4.1.js"></script> 
<script src="js/jsencrypt.min.js"></script>
<script>

	var publicKey = null
	var encrypt = new JSEncrypt()
	$.post("login",{},function(data){
		publicKey=data
		encrypt.setPublicKey(publicKey);
	})
    layui.use('form', function(){
        var form = layui.form;
        
        //监听提交
        form.on('submit(loginSubmit)', function(data){
            console.log(data.field.username)
            $.post("login",{email:encrypt.encrypt(data.field.username),
        		pwd:encrypt.encrypt(data.field.password),
        		msg:"admin"},function(data){
				data=JSON.parse(data)
				if(data.code=="200"){
					sessionStorage.setItem("user",JSON.stringify(data))
					window.location.href="backbook.jsp"
				}else if(data.code=="400"){
					
				}
            })
            return false;
        });
    });
    var show_num=[]
    show_num=draw([])
    $("#canvas").click(function(){
    	show_num=draw([])
    })
    function draw(show_num) {
        var canvas_width=$('#canvas').width();
        var canvas_height=$('#canvas').height();
        var canvas = document.getElementById("canvas");//获取到canvas的对象，演员
        var context = canvas.getContext("2d");//获取到canvas画图的环境，演员表演的舞台
        canvas.width = canvas_width;
        canvas.height = canvas_height;
        var sCode = "a,b,c,d,e,f,g,h,i,j,k,m,n,p,q,r,s,t,u,v,w,x,y,z,A,B,C,E,F,G,H,J,K,L,M,N,P,Q,R,S,T,W,X,Y,Z,1,2,3,4,5,6,7,8,9,0";
        var aCode = sCode.split(",");
        var aLength = aCode.length;//获取到数组的长度
        for (var i = 0; i < 4; i++) { //这里的for循环可以控制验证码位数（如果想显示6位数，4改成6即可）
            var j = Math.floor(Math.random() * aLength);//获取到随机的索引值
            // var deg = Math.random() * 30 * Math.PI / 180;//产生0~30之间的随机弧度
            var deg = Math.random() - 0.5; //产生一个随机弧度
            var txt = aCode[j];//得到随机的一个内容
            show_num[i] = txt.toLowerCase();
            var x = 10 + i * 20;//文字在canvas上的x坐标
            var y = 20 + Math.random() * 8;//文字在canvas上的y坐标
            context.font = "bold 23px 微软雅黑";
            context.translate(x, y);
            context.rotate(deg);
            context.fillStyle = randomColor();
            context.fillText(txt, 0, 0);
            context.rotate(-deg);
            context.translate(-x, -y);
        }
        for (var i = 0; i <= 5; i++) { //验证码上显示线条
            context.strokeStyle = randomColor();
            context.beginPath();
            context.moveTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.lineTo(Math.random() * canvas_width, Math.random() * canvas_height);
            context.stroke();
        }
        for (var i = 0; i <= 30; i++) { //验证码上显示小点
            context.strokeStyle = randomColor();
            context.beginPath();
            var x = Math.random() * canvas_width;
            var y = Math.random() * canvas_height;
            context.moveTo(x, y);
            context.lineTo(x + 1, y + 1);
            context.stroke();
        }
        return show_num;
    }
        //得到随机的颜色值
        function randomColor() {
            var r = Math.floor(Math.random() * 256);
            var g = Math.floor(Math.random() * 256);
            var b = Math.floor(Math.random() * 256);
            return "rgb(" + r + "," + g + "," + b + ")";
    	}
</script>
</html>