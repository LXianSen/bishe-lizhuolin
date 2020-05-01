<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>用户注册</title>
<style>
* {
	margin: 0;
	padding: 0;
}

.main {
	position: fixed;
	background: #f9f9f9;
	height: 100%;
	width: 100%;
}

section {
	position: absolute;
	width: 854px;
	height: 548px;
	background: white;
	top: 50%;
	left: 50%;
	margin-left: -427px;
	margin-top: -274px;
}

.formStyle {
	color: #646464;
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
}

.title {
	padding: 30px 0;
	text-align: center;
	font-size: 24px;
}

.name {
	display: inline-block;
	width: 80px;
	font-size:14px;
}

.inputStyle {
	width: 290px;
	height: 15px;
	border: 1px solid #e6e6e6;
	padding: 9px 10px;
	margin-bottom: 5px;
}

.inputStyle.short {
	width: 160px;
}

.red {
	border: 1px solid red;
	background: #fef0ef;
	color: red;
}

.boxStyle {
	padding-bottom: 5px;
}

.btn {
	/* display: inline-block; */
	font-size: 20px;
	border: 0;
	width: 178px;
	height: 44px;
	line-height: 44px;
	cursor: pointer;
	text-align: center;
	background-color: #ff2832;
	color: #fff;
	border-radius: 22px;
	position: absolute;
	left: 50%;
	margin-left: -89px;
	/* margin-left: 50px; */
}

.alertText {
	color: red;
	font-size: 12px;
	padding-left: 90px;
	height: 18px;
}

.infoText {
	color: #787878;
	font-size: 12px;
	padding-left: 90px;
	height: 18px;
}

#text2 span {
	display: inline-block;
	height: 10px;
	margin-left: 1px;
	width: 22px;
	background-color: #d6d6d6;
}

#text2 span.c1 {
	background-color: #ff3600;
}

#text2 span.c2 {
	background-color: #ffc000;
}

#text2 span.c3 {
	background-color: #71b300;
}

#canvas {
	vertical-align: middle;
	margin-left: 25px;
}
.to-login{
	cursor: pointer;
    color: black;
    text-decoration: none;
}
.redrequire{
	color:red;
}
</style>
</head>
<body>
	<div class="main">
		<section>
			<h1 class="title">注册账号</h1>
			<!-- action="${pageContext.request.contextPath}/zhuce" method="post"-->
			<form 
				class="formStyle" >
				
				<div class="boxStyle">
					<span class="name">用户名</span> <input type="text"
						class="inputStyle username" onblur="telBlur('username')"
						onfocus="telFoucus('username')" name="username">
					<p id="text0" class="alertText"></p>
				</div>
				<div class="boxStyle">
					<span class="name">手机号码</span> <input type="text"
						class="inputStyle tel" onblur="telBlur('tel')"
						onfocus="telFoucus('tel')" name="phone">
					<p id="text1" class="alertText"></p>
				</div>
				<div class="boxStyle">
					<span class="name"><span class="redrequire">*</span>邮箱</span> <input type="text"
						class="inputStyle email" onblur="telBlur('email')"
						onfocus="telFoucus('email')" name="email">
					<p id="text" class="alertText"></p>
				</div>
				<div class="boxStyle">
					<span class="name"><span class="redrequire">*</span>登录密码</span> <input type="password"
						class="inputStyle password" onblur="pswdBlur(this)"
						onfocus="pswdFoucus()" onkeyup="pswdChange(this)" name="pwd">
					<span id="text2" class="infoText"> </span>
				</div>
				<div class="boxStyle">
					<span class="name"><span class="redrequire">*</span>确认密码</span> <input type="password"
						class="inputStyle qrpswd" onblur="qrBlur(this)"
						onfocus="qrFoucus()">
					<p id="text3" class="alertText"></p>
				</div>
				<div class="boxStyle">
					<span class="name"><span class="redrequire">*</span>验证码</span> <input type="text"
						class="inputStyle short"> <span><canvas id="canvas"
							width="100" height="36" style="border: 1px solid #000000;"></canvas></span>
					<p id="text4" class="alertText"></p>
				</div>
				<input type="button" value="立即注册" class="btn">
			</form>
		</section>
    </div>
    
    <div class="over">
        
    </div>

</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script>
        var text1=$('#text1')
        var text2=$('#text2')
        var text3=$('#text3')
        var telInput=$('.tel')
        var pswdInput=$('.password')
        var qrInput=$('.qrpswd')
        var btn=$('.btn')
        var toLogin=$(".to-login")
        var isBlur,password,isreg,ispwd,isusername=true,isphone=true,isemail
        //生成随机数，唯一id
        function genID(length){
        	return Number(Math.random().toString().substr(3,length) + Date.now()).toString(36)
        }
        
        toLogin.click(function(){
        	console.log(1111)
        	window.location.href="login.jsp"
        })
        //
        function telBlur(e){
        	var uPattern = /^[a-zA-Z0-9_-]{4,16}$/;
        	var ePattern = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
        	if(e=="username"){
        		if(uPattern.test($(".username").val())){
        			isusername=true
        		}else{
        			if($(".username").val()){
        				$("#text0").text('用户名格式输入错误！')
            			$("#text0").addClass("alertText").removeClass("infoText")
            			isusername=false
        			}else{
        				$("#text0").text("")
        				isusername=true
        			}
        		}
        	}else if(e=="phone"){
        		if(!(/^1[3456789]\d{9}$/.test(telInput.val()))){
                    text1.text('手机格式不正确，请重新输入')
                    telInput.addClass('red')
                    isphone=false
                }else{
                	$("#text1").text('')
					isphone=true
                }
        	}else if(e=="email"){
				if(ePattern.test($(".email").val())){
					$.post('register',{
                		email:$("#text").text(),
                		type:"select"
                	},function(data){
                		data=JSON.parse(data)
                		if(data.code=="error"){
                			text1.html('该邮箱已注册，请尝试<a href="login.jsp" class="to-login">登录</a>')
                            $(".email").addClass('red')
                            isemail=false
                		}else{
                			isemail=true
                		}
                	}) 
        		}else{
        			$("#text").text('请输入正确的邮箱格式')
            		$("#text").addClass("alertText").removeClass("infoText")
            		isemail=false
        		}
        	}
            
        }  
        btn.click(function(){
        	console.log(isreg,ispwd,isusername,isphone,isemail)
        	if(isreg==true&& ispwd==true && isusername==true && isphone==true && isemail==true){
        		console.log(111)
        		$.post('register',{
            		phone:$(".phone").val(),
            		email:$(".email").val(),
            		username:$(".username").val(),
            		pwd:qrInput.val(),
            		userid:String(genID(9)),
            		type:"add"
            	},function(data){
            		console.log(data)
            	})
        	}else if(isreg==false){
        		alert("正则表达式错误")
        	}else if(ispwd==false){
        		alert("密码输入错误")
        	}else if(isusername==false){
        		alert("用户名输入错误")
        	}else if(isphone==false){
        		alert("手机号输入错误")
        	}else if(isemail==false){
        		alert("邮箱输入错误或者邮箱已存在")
        	}
        	
        })
        
        function telFoucus(e){
        	if(e=="username"){
        		$("#text0").text('请输入4-16位，且只包含字母、数字、下划线、减号的用户名')
        		$("#text0").removeClass("alertText").addClass("infoText")
        	}
            text1.text('')
            telInput.removeClass('red')
        }
        function pswdFoucus(){
            isBlur=false
            text2.text('密码为6-20个字符，可由英文、数字及符号组成')
            text2.removeClass('alertText')
            text2.addClass('infoText')
            pswdInput.removeClass('red')
        }
        function pswdBlur(text){
            isBlur=true
            let level=0;
            if (/[1-9]/.test(text.value)) {
                level++;
            }
            if (/[a-z]/.test(text.value)) {
                level++;
            }
            if (/[^a-z1-9]/.test(text.value)) {
                level++
            }
            if (text.value.length < 6 || text.value.length > 12) {
                level = 0;
            }
            Evaluate(level)
            password=text.value
        }
        function Evaluate(level)
        {
            if(level==0){
                text2.text('密码长度6-20个字符，请重新输入')
                text2.addClass('alertText')
                text2.removeClass('infoText')
                pswdInput.addClass('red')
            }else if(level==3){
                text2.html(`
                        <span class='c1'></span>
                        <span class='c2'></span>
                        <span class='c3'></span> 密码设置安全，放心使用
                `)
            }else if(level==1){
                text2.html(`
                        <span class='c1'></span>
                        <span></span>
                        <span></span> 密码过于简单
                `)
            }else{
                text2.html(`
                        <span class='c1'></span>
                        <span class='c2'></span>
                        <span></span> 试试字母、符号、数字的组合更安全
                `)
            }
        }
        function pswdChange(text){
            let level=0;
            if (/[1-9]/.test(text.value)) {
                level++;
            }
            if (/[a-z]/.test(text.value)) {
                level++;
            }
            if (/[^a-z1-9]/.test(text.value)) {
                level++
            }
            if ( isBlur && (text.value.length < 6 || text.value.length > 12)) {
                level = 0;
            }
            if(text.value){
                setTimeout(function(){
                    Evaluate(level)
                },500)
            }
            
        }
        function qrBlur(text){
            if(text.value!=password){
                text3.text('两次输入的密码不一致，请重新输入')
                qrInput.addClass('red')
            }else{
                text3.text('')
                ispwd=true
            }
        }
        function qrFoucus(){
            text3.text('请再次输入密码')
            text3.addClass('infoText')
        }
        
        var show_num=[]
        show_num=draw([])
        $("#canvas").click(function(){
        	show_num=draw([])
        })
        
        $(".short").blur(function(){
        	console.log(show_num.join(""))
        	if($(".short").val()==show_num.join("")){
        		$("#text4").text("")
        		isreg=true
        	}else{
        		$("#text4").text("验证码输入错误！")
        		$("#text4").addClass("alertText").removeClass("infoText")
        		isreg=false
        	}
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