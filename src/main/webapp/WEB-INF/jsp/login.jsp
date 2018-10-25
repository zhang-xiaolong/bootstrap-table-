<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登录 </title>
<script src="${pageContext.request.contextPath}/js/jquery_2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/front_2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/jquery.superslide_2.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/common_2.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/common_2.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/login_1.css"/>
<script type="text/javascript">

   function doAjax2(){

        //获取表单数据(表单要有name属性,根据name获取)
        var param = $("#jvForm2").serialize();

        $.ajax({
            url:"${pageContext.request.contextPath}/log",
            data:param,//传到服务器的参数
            type:"post",//请求的方式post|get
            dataType:"text",//返回值类型html|xml|text|json|script|jsonp
            cache:false,//浏览器是否缓存
            async:true,//是否异步提交
            success:function(data){//交互成功
                if(data=="success"){
                    //alert("登录成功");


                    location.href="${pageContext.request.contextPath}/index";
                    }else{alert("登录失败");
                }



            },
            error:function(){//交互失败
                alert("error");
            }
        });


    }





$(function() {
	$("#jvForm").validate();
});
</script>
</head>

<body>

<div class="login-bg">
	<div class="w1170-center">
        <div class="register-box login-box" style="width:320px; height:350px; margin:30px 0; float:right;">   
            <div class="register-nav">
                <span>登录</span><div class="register-login">没有账号，<a class="tc" href="${pageContext.request.contextPath}/register">立即注册 ></a></div>
            </div> 
            
            <form id="jvForm2" action="#" method="post">
                <div class="inf-message">
                
                
                <input type="hidden" name="returnUrl" value="/"/>
                </div>
                <div class="username-con"><i></i><input id="username" name="username" class="required login-input" type="text" placeholder="用户名"></div>
                <div class="password-con"><i></i><input id="password" name="password" class="required password-input" type="password" placeholder="密码"></div>
                <div class="login-rem clearfix">
                    <div class="next-day"><input type="checkbox" class="login-checkbox" value="true" name="rememberMe">下次自动登录</div>
                    <a href="/member/forgot_password.jspx">忘记密码</a>
                </div>
                <div align="center" ><input type="button" class="login" name="login" onclick=doAjax2()   style="width:80px ;height:40px;font-size: 25px;margin-top: 30px;"  value="登  录"/></div>
                    <div class="quick">
                    <p>一键登录</p>
                    <div class="quick-list clearfix">
                    
                        <a class="quick-qq" id="qqLoginBtn" title="用QQ账号登录"></a>
                        <script type="text/javascript" src="js/qc_loader.js" data-appid="101158388" data-redirecturi="http://demo2.jeecms.com/public_auth.jspx"></script>
                     <%--   <script type="text/javascript">
                        //插入按钮的节点qqLoginBtn id
                        QC.Login({btnId:"qqLoginBtn",size: "A_M"}, function(reqData, opts){//登录成功
                        //根据返回数据，更换按钮显示状态方法
                        var dom = document.getElementById(opts['btnId']),
                        _logoutTemplate=[
                        //头像

                        ].join("");
                        dom && (dom.innerHTML = QC.String.format(_logoutTemplate, {
                        nickname : QC.String.escHTML(reqData.nickname), //做xss过滤
                        figureurl : reqData.figureurl
                        }));
                        var userId=null;
                        if(QC.Login.check()&&userId==null){
                        QC.Login.signOut();          
                        }
                        });
                        </script>--%>
                    
                        <a class="quick-tx" id="qqwebo_login_btn" title="用腾讯微博账号登录"></a>
                        <script type="text/javascript" src="js/openjs.js"></script>
                       <%-- <script type="text/javascript">
                        T.init({
                        appkey: 801526383, 
                        autoclose:false,
                        callbackurl:"http://demo2.jeecms.com/public_auth.jspx"
                        });
                        function logout(){
                        T.logout(function (loginStatus) { // 登出用户
                        // 登录成功
                        });
                        }
                        $(function() {
                        $("#qqwebo_login_btn").click(function(){
                        T.login(function (loginStatus) { // 弹出登录窗口
                        // 本次登录成功
                        $.cookie("qqWeboId",loginStatus.openid);
                        },function (error) {
                        });
                        });
                        });
                        </script>--%>
                    
                    
                        <a class="quick-sina" id="wb_connect_btn" title="用新浪微博账号登录"></a>
                        <script src="js/wb.js" type="text/javascript" charset="utf-8"></script>
                        <script type="text/javascript">
                        WB2.anyWhere(function(W){
                        W.widget.connectButton({
                        id: "wb_connect_btn",
                        type: '3,2',
                        callback : {
                        login:function(o){
                        //登录成功之后执行
                        location="/public_auth.jspx";
                        },
                        logout:function(){
                        //退出之后执行退出本地用户
                        location="/logout.jspx?returnUrl=/";
                        }
                        }
                        });
                        });
                        </script>
                        <a href="/weixin_login.jspx" class="quick-weixin" title="微信账号登录" ></a>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<div style="text-align:center; line-height:50px;">
    Powered by JeeCms Copyright © 2007-2018 www.jeecms.com, All Rights Reserved
</div></body>
</html>