<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/toemail.css?ver=2">
</head>
<body>
	<div class="container">
		<div class="safe-verify">
			<div class="safe-verify-info">
				<p class="safe-verify-info-name">账号安全验证</p>
				<p class="safe-verify-info-tips">点击发送邮件按钮，将会发送一条有验证码的短信至您的邮箱<span>945641810@qq.com</span></p>
				<div class="safe-verify-info-btn">发送邮件</div>
				<p class="safe-verify-info-watch hide">请查看邮件<span>945641710@qq.com</span>获取验证码</p>
				<div class="safe-verify-info-input hide">
					<input placeholder="请输入验证码">
					<span>重新发送</span>
				</div>
				<div class="hide safe-verify-info-error">
					<p>验证码输入错误！</p>
				</div>
				<div class="safe-verify-info-ok hide">确定</div>
			</div>
		</div>
	</div>
	
</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script>
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
	
	var getparams=getParams().user
	$(".safe-verify-info-tips span").text(getparams)
	$(".safe-verify-info-watch span").text(getparams)
	
	$(".safe-verify-info-btn").click(function(){
		$(".safe-verify-info-tips").addClass("hide")
		$(".safe-verify-info-btn").addClass("hide")
		$(".safe-verify-info-watch").removeClass("hide")
		$(".safe-verify-info-input").removeClass("hide")
		$(".safe-verify-info-ok").removeClass("hide")
		$.post("FindPwd",{email:getparams},function(data){
			console.log(data)
		})
	})
	
	$(".safe-verify-info-input span").click(function(){
		$.post("FindPwd",{email:getparams},function(data){
			console.log(data)
		})
	})
	
	$(".safe-verify-info-ok").click(function(){
		$.post("FindPwd",{code:$(".safe-verify-info-input input").val()},function(data){
			data=JSON.parse(data);
			if(data.code=="200"){
				window.location.href="resetpwd.jsp?email="+getparams;
			}else{
				$(".safe-verify-info-error").removeClass("hide")
			}
			console.log(data)
		})
	})
</script>
</html>