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
    <form action="resetPwdStep3" method="post" id="resetPwdForm">
      <input name="qs" type="hidden" value="sid=miotstore&amp;_bannerBiz=miotstore&amp;callback=https%3A%2F%2Fshopapi.io.mi.com%2Fapp%2Fshop%2Fauth%3Flogid%3D1588210134.133587577%26sign%3Db5353420a9974156016281cb5793f8f8%26followup%3Dhttps%253A%252F%252Fwww.xiaomiyoupin.com%252F">
      <div class="regbox">
        <div class="step3">                  
          <dl>
            <dt><h4>请重设您的帐号密码</h4></dt>
            <dd>
              <div class="inputbg">
                <!-- 错误添加class为err_label -->
                <label class="labelbox" for="">
                  <input id="pwd" type="password" placeholder="请输入新密码">
                </label>        
              </div>
            </dd>
            <dd>
              <div class="inputbg">
                <!-- 错误添加class为err_label -->
                <label class="labelbox" for="">
                  <input type="password" id="repwd" placeholder="请输入确认密码">
                  <input type="hidden" name="userId" value="2391505070"> 
                  <input type="hidden" name="passportsecurity_ph" id="passportsecurity_ph" value="DwdtZvNmPOJbeFz/xRbGIA==">
                  <input type="hidden" name="pwdEnc" id="pwdEnc" value="">
                </label>        
              </div>
            </dd>
          </dl>        
          <div class="err_tip">
            <div class="dis_box">
              <em class="icon_error"></em>
              <span id="error_con"></span>
            </div>
          </div>
          <div class="err_tip pwd_tip" id="pwd_tips" style="display:block;">
            <div class="dis_box">
              <em class="icon_error"></em>
              <span>
                密码长度8~16位，数字、字母、字符至少包含两种
              </span>
            </div>
          </div>        
          <div class="fixed_bot mar_phone_dis3">
            <input class="btn332 btn_reg_1" type="button" value="提交">
          </div>    
        </div>      
      </div>
    </form>        
  </div>
</div>
</div>
</div>
</body>
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
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

var getparams=getParams().email
	$(".btn332").click(function(){
		$.post("ChangePWD",{email:getparams,pwd:$("#repwd").val()},function(data){
			window.location.href="login.jsp"
		})
	})
</script>
</html>