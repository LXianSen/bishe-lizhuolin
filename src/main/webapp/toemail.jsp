<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/toemail.css?ver=1">
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
				<div class="safe-verify-info-ok hide">确定</div>
			</div>
		</div>
	</div>
	
</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(".safe-verify-info-btn").click(function(){
		$(".safe-verify-info-tips").addClass("hide")
		$(".safe-verify-info-btn").addClass("hide")
		$(".safe-verify-info-watch").removeClass("hide")
		$(".safe-verify-info-input").removeClass("hide")
		$(".safe-verify-info-ok").removeClass("hide")
		$.post("",{},function(data){
			
		})
	})
</script>
</html>