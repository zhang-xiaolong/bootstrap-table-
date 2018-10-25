<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>新用户注册</title>
<script src="js/jquery_1.js" type="text/javascript"></script>
<script src="js/front_1.js" type="text/javascript"></script>
<script src="js/jquery.superslide_1.js" type="text/javascript"></script>
<script src="js/common_1.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common_1.css"/>
<link rel="stylesheet" type="text/css" href="css/login.css"/>
<script type="text/javascript">


    /*function isPoneAvailable(str) {
	    var myreg=/^[1][3,4,5,7,8][0-9]{9}$/;
	    if (!myreg.test(str)) {
	        return false;
	    } else {
	        return true;
	    }
	}  */


	/*function guestbookCaptcha(){
		$('#guestbookCaptcha').attr("src","/captcha.svl?d="+Math.random());
    }*/

    function doAjax(){

        //获取表单数据(表单要有name属性,根据name获取)
        var param = $("#jvForm").serialize();

        $.ajax({
            url:"${pageContext.request.contextPath}/reg",
            data:param,//传到服务器的参数
            type:"post",//请求的方式post|get
            dataType:"text",//返回值类型html|xml|text|json|script|jsonp
            cache:false,//浏览器是否缓存
            async:true,//是否异步提交
            success:function(data){//交互成功
                if(data=="success"){
                    alert("注册成功");
                    //window.location.reload()
                    window.location.href="${pageContext.request.contextPath}/login";
0                }else{
                    alert("注册失败");
                }

                /*if(data.status==="success"){
                    alert("登录成功 ");
                    $(window).attr("location","${pageContext.request.contextPath}/login");
                }else if(data.status === "fail"){
                    alert("用户名密码错误！！！");
                }*/



            },
            error:function(){//交互失败

            }
        });


    }

    /*$(function() {
       $("#jvForm").validate();
       $("#guestbookCaptcha").bind("click", function(){
         $(this).attr("src","/captcha.svl?d="+Math.random());
       });
       $("#getMobileCode").bind("click", function(){
    	   var flag =  $("#jvForm").valid();
    	   if(flag){
	           var mobile = $("#mobile").val();
	       		// 判断手机号码
	           if ($.trim($('#mobile').val()).length == 0) { 
	            alert('手机号没有输入\n');
	            $('#mobile').focus();
	           }else if(!isPoneAvailable(mobile)){
	        	   alert("请输入正确的手机号码！");
	           }else if($.trim($('#vCode').val()).length == 0){
	        	   alert("请输入验证码！");
	           }else if($.trim($('#vCode').val()).length != 4){
	        	   alert("请输入正确的验证码！");
	           }else if($.trim($('#username').val()).length == 0){
	        	   alert("请输入用户名！");
	           }else{
	        	   $.ajax({
	        	        type:"POST",
	        	        url:"",
	        	         data:{
	        	        	mobilePhone:$("#mobile").val(),
	        	        	smsSendType:1,
	        	        	vCode:$("#vCode").val()
	        	        },
	        	        dataType:"json",     
	        	        success:function(data){
	        	        	if(data.code ==200){
	        	        		alert("发送成功！");
	        	        	}else if(data.code == 356){
	        	            	alert("该手机号已达到每日上限！");        	        		
	        	        	}else if(data.code ==357){
	        	        		alert("该手机号已被绑定！");
	        	        	}else if(data.code ==354){
	        	        		alert("发送短信间隔过短！");
	        	        	}else if(data.code ==353){
	        	        		guestbookCaptcha();
	        	        		alert("验证码错误！");
	        	        	}else if(data.code ==101){
	        	        		guestbookCaptcha();
	        	        		alert("验证码已失效！");
	        	        	}else if(data.message =="sms_error"){
	        	        		alert("短信请求错误，请联系本站管理员！");
	        	        	}else{
	        	        		alert(data.message);
	        	        	}
	        	        },
	        	        error:function(jqXHR){
	        	            
	        	        }
	        	    });
	           } 
    	   } });
      
    });*/
</script>

</head>

<body>
<div class="menubox w1170-center clearfix">

    <div class="fl" style="margin-top:34px; margin-left:59px; line-height:50px; font-size:35px; color:#999;">注册</div>
</div>
<div class="register-box">
	<div class="register-nav"><span>注册</span><div class="register-login">已有账号，<a class="tc" href="${pageContext.request.contextPath}/login">马上登录 ></a></div></div>
	<form id="jvForm" action="#" method="post">
        <div class="register-list">
            <ul>
                <li><span>用户名</span><input type="text" id="username"  vld="{required:true,rangelength:[3,20],username:true,remote:'username_unique.jspx',messages:{remote:'用户名已存在'}}" name="username" placeholder="3~14字符，中文字符/英文字母/数字" class="register-input" /></li>
                <%--<li><span>电子邮箱</span><input type="text" id="email" maxlength="30" vld="{remote:'email_unique.jspx',messages:{remote:'email已被使用！'}}" name="email" placeholder="用于找回密码" class="register-input" /></li>--%>
                <li><span>设置密码</span><input id="password" type="password" name="password" vld="{required:true,rangelength:[3,20]}" class="register-input" /></li>
                <%--<li><span>确认密码</span><input type="password" equalto="#password" vld="{required:true,rangelength:[3,20]}" class="register-input" /></li>--%>
                <li class="register-txt"><input type="checkbox" class="register-checkbox" />我已阅读并接受<a>《JEECMS注册协议》</a></li>
                <li class="register-btn">
                <input type="hidden" name="token"  value="" />
               <input type="button" name="register" value="立即注册" onclick=doAjax() />
                   <%-- <div><button type="button" class="btn btn-primary"  onclick =doAjax()>立即注册</button></div>--%>
                </li>
            </ul>
        </div>
	</form>
</div>




</body>
</html>
