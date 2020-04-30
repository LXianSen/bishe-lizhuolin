<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/forgetpwd.css?ver=1">
</head>
<body>
<div class="wrapper">
<div class="wrap">
  <div class="layout">  
  <div class="n-frame device-frame reg_frame">
    <div class="external_logo_area" style="opacity:0"><a class="milogo" href="javascript:void(0)"></a></div>
    <div class="title-item t_c">
      <h4 class="title_big30">重置密码</h4>
    </div>
    <!-- 记得在此添加标记语言uLocale -->
    <div class="regbox">
      <h5 class="n_tit_msg">请输入注册的邮箱地址:</h5>      
      <div class="inputbg">
        <!-- 错误添加class为err_label -->
        <label class="labelbox labelbox-user" for="user">
          <input type="text" name="id" id="user" autocomplete="off" placeholder="邮箱" rule="(^[\w.\-]+@(?:[A-Za-z0-9]+(?:-[A-Za-z0-9]+)*\.)+[A-Za-z]{2,6}$)|(^1\d{10}$)|(^\d{3,}$)|(^\++\d{2,}$)">
         </label>
      </div>	
      <div class="err_tip error-con">
        <div class="dis_box">
          <em class="icon_error"></em>
          <span></span>
        </div>
      </div> 
			<!-- <div style="display:none;" id="captcha-box" class="inputbg inputcode">
				<label class="labelbox labelbox-captcha" for="">
					<input id="code-captcha" class="code" type="text" name="icode" autocomplete="off" placeholder="图片验证码">
				</label>
				<img alt="图片验证码" src="/pass/getCode?icodeType=resetPwd" title="看不清换一张" class="chkcode_img icode_image code-image">
			</div>
			<div class="err_tip error-con">
				<div class="dis_box"><em class="icon_error"></em><span></span></div>
			</div> -->
      
      <div class="fixed_bot">
        <input class="btn332 btn_reg_1" type="button" id="submit_button" value="下一步">   
      </div>
    </div>
      
  </div>
  </div>
</div>
</div>
<div class="n-footer">
  <div class="nf-link-area clearfix">
  <ul class="lang-select-list">
    <li><a class="lang-select-li current" href="javascript:void(0)" data-lang="zh_CN">简体</a>|</li>
    <li><a class="lang-select-li" href="javascript:void(0)" data-lang="zh_TW">繁体</a>|</li>
    <li><a class="lang-select-li" href="javascript:void(0)" data-lang="en">English</a></li>
  </ul>
  </div>
  
</div>
</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<!-- <script type="text/javascript" src="js/forgetpwd.js?ver=1"></script> -->
<script>
	$("#user").blur(function(){
		var email = $("#user").val();
		var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
		if(reg.test(email)){
			
		}else{
			$(".err_tip").attr("style","display:block")
			$(".err_tip span").text("请输入正确的邮箱格式！")
			$(".labelbox").addClass("error_bg")
		}
	})
	$("#user").focus(function(){
		$(".err_tip").attr("style","display:none")
		$(".labelbox").removeClass("error_bg")
	})
	$("#submit_button").click(function(){
		var email = $("#user").val();
		var reg = /^([a-zA-Z]|[0-9])(\w|\-)+@[a-zA-Z0-9]+\.([a-zA-Z]{2,4})$/;
		if(reg.test(email)){
			window.location.href="toemail.jsp?user="+$("#user").val()
		}else{
			$(".err_tip").attr("style","display:block")
			$(".err_tip span").text("请输入正确的邮箱格式！")
			$(".labelbox").addClass("error_bg")
		}
	})
</script>
</html>