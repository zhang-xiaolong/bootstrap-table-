<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>班级信息页面</title>
<meta http-equiv="keywords" content=""/>
<meta http-equiv="description" content=""/>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/front.js" type="text/javascript"></script>
<script src="js/jquery.SuperSlide.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="css/common.css" />
<script type="text/javascript">
    function g(o){
        return document.getElementById(o);
    }
    function HoverLi(x,y,m,n,counter){
        for(var i=1;i<=counter;i++){
            g(x+m+i).className='normaltab';
            g(y+m+i).className='undis';
        }
        g(y+m+n).className='dis';
        g(x+m+n).className='curr';
    }
    $(function() {
        Cms.channelViewCount("","97");
        Cms.siteFlow("", location.href, document.referrer,"true");
    });
</script>
<head>

<body>
<div class="border-bottom">
    <div class="header clearfix">
        <span class="fl">客服热线：0791-86538070（周一至周六 8:30 - 17:30）</span>
        <div class="fr">
            <a href="${pageContext.request.contextPath}/login">登录</a>
            <a href="${pageContext.request.contextPath}/register">注册</a>
        </div>
    </div>
</div>
<div class="relative">
    <div class="menubox w1170-center clearfix">
        <img src="${pageContext.request.contextPath}/photo/03.jpg" style="width: 100%;">
    </div>
</div>
<script type="text/javascript">
    $(function(){
        Cms.loginSSO('');
        Cms.loginCsi("","loginCsiDiv",{"returnUrl":"http://demo2.jeecms.com/rczp/index_1.jhtml"});
    });
</script>
<script>
    function qkeypress(){
        var q=$("input[name=q]");
        if(q.val().trim()!=""){
            $("input[name=q]").autocomplete("enable");
        }else{
            $("input[name=q]").autocomplete("disable");
        }
    }
</script><div class="banner-bg3"></div>
<div class="page_main clearfix">
    <div class="page_head clearfix" style="margin-top: 0px;">
        <div class="nr_title">
            <div class="ResTitle_a1"><span>班级信息</span><br><em>Talent Recruitment</em></div>
        </div>
        <div class="nr_position">
            <div id="posT" class="clearfix">
                <div id="PosList_c1">当前位置：<a href="gateway">首页</a> - 班级信息</div>
            </div>
        </div>
    </div>
    <div class="job_main" style="margin-top: 20px;">
        <input class="job_searchCon" name="str" type="text" id="txtKey" placeholder="search" autocomplete="off" style="margin-left: 44%"/>
        <input  type="button" value="搜索" onclick="findth()" style="width: 11%;height: 34px;background-color: crimson"/>
            <section class="job_list" style="margin-top: 20px">
                <table cellpadding="0" cellspacing="0" width="100%" id="mytable">
                    <tbody>
                    <tr class="job_list_menu">
                        <td width="25%" >编号</td>
                        <td width="25%" >名称</td>
                        <td  width="25%">教室</td>
                        <td width="25%">班主任</td>
                    </tr>
                    <c:forEach items="${list }" var="clazz">
                        <tr id="tr3" class="tr">
                            <td align="center">${clazz.xuhao }</td>
                            <td align="center">${clazz.cname }</td>
                            <td align="center">${clazz.jiaoshi }</td>
                            <td align="center">${clazz.teacher.tname }</td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </section>
    </div>
</div>
<div class="footerBox" style="margin-top: 1%">
    <div class="w1170-center clearfix">
        <div class="fl" style="width: 430px;">
            <h1 class="title">JEECMS演示站</h1>
            <p>电话：0791-86538070　13576281815</p>
            <p>传真：0791-86538070</p>
            <p>地址：南昌市西湖区沿江大道1299号力高滨江国际天郡A座503</p>
            <p>ICP备案号：赣ICP备13005266号</p>
        </div>
        <div class="fl" style="margin-left: 118px; width: 300px;">
            <h1 class="title">相关链接</h1>
            <div class="linkList clearfix">
                <a href="/gsjj.htm">关于我们</a>
                <a href="/lxwm.htm">联系我们</a>
                <a href="http://www.jeecms.com/" target="_blank">友情链接</a>
                <a href="http://bbs.jeecms.com/fabu/index.jhtml" target="_blank">程序下载</a>
                <a href="/hzfw.htm" target="_blank">合作服务</a>
                <a href="/xkxy.htm" target="_blank">许可协议</a>
                <a href="/jeeadmin/jeecms/index.do" target="_blank">管理登录</a>
            </div>
        </div>
        <div class="fr">
            <img src="${pageContext.request.contextPath}/picture/vx.png"/>
            <div class="weixin">
                微信公众号
            </div>
        </div>
    </div>
</div>
<div class="copyright">
    Powered by JeeCms Copyright © 2007-2018 www.jeecms.com, All Rights Reserved
</div><div class="right-fixed">
    <ul>
        <li class="back-top"></li>
    </ul>
    <script type="text/javascript">
        $(function(){
            var $body = $(document.body);;
            var $bottomTools = $('.right-fixed');
            $(window).scroll(function () {
                var scrollHeight = $(document).height();
                var scrollTop = $(window).scrollTop();
                scrollTop > 50 ? $(".back-top").slideDown(300).css("display","block") : $(".back-top").slideUp(300);
            });
            $('.back-top').click(function (e) {
                e.preventDefault();
                $('html,body').animate({ scrollTop:0});
            });
        });
        function findth(){
            $.ajax({
                url:"search",
                type:"POST",
                data:{
                    "str":$("#txtKey").val(),
                },
                success: function (msg) {
                    $("#mytable tr:not(:first)").html("");
                    if (msg == null||msg=='') {
                        $("#page").html("");
                        strl = "<tr >" +
                            "<td colspan='4'>" + ">>未查询到您想要的数据!<<" + "</td>" +
                            "</tr>";
                        $("#mytable").append(strl);
                    } else {
                        for (var i = 0; i < msg.length; i++) {
                            strl = "<tr>" +
                                "<td>" + msg[i].xuhao + "</td>" +
                                "<td>" + msg[i].cname + "</td>" +
                                "<td>" + msg[i].jiaoshi + "</td>" +
                                "<td>" + msg[i].teacher.tname + "</td>" +
                                "</tr>";
                            $("#mytable").append(strl);
                        }
                    }
                }
            });
        }
    </script>
</div>
</body>
</html>

