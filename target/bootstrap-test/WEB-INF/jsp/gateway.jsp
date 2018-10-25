<%@ page language="java" contentType="text/html; charset=utf-8"
pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<script src="js/jquery.js" type="text/javascript"></script>
<script src="js/front.js" type="text/javascript"></script>
<script src="js/jquery.superslide.js" type="text/javascript"></script>
<script src="js/common.js" type="text/javascript"></script>
<script src="js/ckplayer.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="css/common.css"/>
<style type="text/css">
.slideBox{width:530px; height:350px; overflow:hidden; position:relative;}
.slideBox .hd{ height:15px; overflow:hidden; position:absolute; right:5px; bottom:5px; z-index:1; }
.slideBox .hd ul{ overflow:hidden; zoom:1; float:left;  }
.slideBox .hd ul li{ float:left; margin-right:2px;  width:15px; height:15px; line-height:14px; text-align:center; background:#fff; cursor:pointer; }
.slideBox .hd ul li.on{ background:#f00; color:#fff; }
.slideBox .bd{ position:relative; height:100%; z-index:0; width: 100%;  }
.slideBox .bd li{ width: 100%;}
.slideBox .bd li a{ display: block;}
.slideBox .bd img{ display:block;}
img{display: block;}
</style>
<script type="text/javascript">
$(function() {
	Cms.siteFlow("", location.href, document.referrer, "true");
	$.cookie("_site_id_cookie","3",{path: '' });
});
</script>
</head>
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
      <%--  <a href="/" class="logo"></a>--%>
        <ul class="menu">
        	<li  class="menu-item on" >
                <div class="nav-t">
                    <a href="/">首页</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="/gsjj.jhtml">关于我们</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="http://demo2.jeecms.com/gsdt/index.jhtml">公司动态</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="http://demo2.jeecms.com/rczp/index.jhtml">招生计划</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="http://demo2.jeecms.com/pxzl/index.jhtml">培训资料</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="${pageContext.request.contextPath}/bjmh">班级信息</a>
                </div>
            </li>
            <li class="menu-item">
                <div class="nav-t">
                    <a href="http://demo2.jeecms.com/lxwm.jhtml">联系我们</a>
                </div>
            </li>

            <li class="menu-item">
                <div class="nav-t">
                    <span class="searchIcon"></span>
                    <span class="menu-hover"></span>
                </div>
                <div class="nav-c">
                    <div class="w1170-center clearfix">
                        <div class="searchBox">
                            <form action="/search.jspx" target="_blank" id="searchForm">
                            	<input type="text" name="q" value="" autocomplete="off" class="searchInput" placeholder="请输入关键字">
                            	<input type="submit" value="" class="searchSub">
                            </form>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>
</div>
<script type="text/javascript">
$(function(){
	Cms.loginSSO('');
	Cms.loginCsi("","loginCsiDiv",{"returnUrl":"http://demo2.jeecms.com/"});
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
</script>
<!--轮播图-->
<div class="bannerBox" id="banner">
    <div class="circle">
        <ul></ul>
    </div>
    <div class="bd">
        <div class="positionBox">
            <ul>
                <li><a href="http://www.jeecms.com/goumai.htm" target="_blank"><img src="picture/b1.jpg" /></a></li>
                <li><a href="http://bbs.jeecms.com/fabu/63691.jhtml" target="_blank"><img src="picture/b2.jpg" /></a></li>
                <li><a href="http://www.jeecms.com/dzd/index.htm" target="_blank"><img src="picture/b3.jpg" /></a></li>
            </ul>
        </div>
    </div>
</div>

<div class="w1170-center">
	<div class="clearfix">
        <h1 class="columnTitle">关于我们</h1>
        
        <div class="center">
        
            <p class="heaven-content">教务系统管理平台充分利用互联网络B/S管理系统模式，以网络为平台，为各个学校教务系统的管理提供一个平台，帮助学校管理教务系统，用一个帐号解决学校教务教学管理，并且学校可以自由选择学校需要的教务管理系统，灵活地定制符合学校自己实际情况的教务系统。</p>
            <ul class="heaven-lists clearfix">
                <li class="heaven-list fl">
                    <a href="/gsjj.jhtml"><dl class="heaven-dl">
                        <dt class="heaven-dt">
                            <span>
                                <img src="picture/heaven-1.png" alt="" class="normal-img">
                                <img src="picture/heavenc-1.png" alt="" class="check-img">
                            </span>
                        </dt>
                        <dd class="heaven-dd">
                            <h4>教务系统简介</h4>
                            <p>System profile</p>
                        </dd>
                    </dl>
                    </a>
                </li>
                <li class="heaven-list fl">
                    <a href="/fzlc.jhtml"><dl class="heaven-dl">
                        <dt class="heaven-dt">
                            <span>
                                <img src="picture/heaven-2.png" alt="" class="normal-img">
                                <img src="picture/heavenc-2.png" alt="" class="check-img">
                            </span>
                        </dt>
                        <dd class="heaven-dd">
                            <h4>发展历程</h4>
                            <p>Development history</p>
                        </dd>
                    </dl>
                    </a>
                </li>
                <li class="heaven-list fl">
                    <a href="/ygfc/index.jhtml"><dl class="heaven-dl">
                        <dt class="heaven-dt">
                            <span>
                                <img src="picture/heaven-3.png" alt="" class="normal-img">
                                <img src="picture/heavenc-3.png" alt="" class="check-img">
                            </span>
                        </dt>
                        <dd class="heaven-dd">
                            <h4>前景规划</h4>
                            <p>Prospect planning</p>
                        </dd>
                    </dl>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</div>   
<div class="w1170-center">    
    <div class="engagebox">
        <div class="columnTitle" style=" height:84px;  line-height:84px;">
            <a href="/rczp/index.jhtml" >广告时刻</a>
        </div>
        <ul class="clearfix">
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/318.jhtml" title="精装/装饰/装修工程师" class="job ellipsis">精装/装饰/装修工程师</a>
                        <p><span class="colorRed"></span> &nbsp;<span class="city">,北京</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">专科</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招1-3人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-31发布</span>
                    </div>
                </div>
            </li>
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/317.jhtml" title="汽车销售顾问（包住+工作餐）" class="job ellipsis">汽车销售顾问（包住+工作餐）</a>
                        <p><span class="colorRed">1-3年</span> &nbsp;<span class="city">,西安</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">本科</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招1-3人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-31发布</span>
                    </div>
                </div>
            </li>
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/316.jhtml" title="客户经理（运营商）" class="job ellipsis">客户经理（运营商）</a>
                        <p><span class="colorRed">5年以上</span> &nbsp;<span class="city">,深圳,重庆</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">本科</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招3-5人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-31发布</span>
                    </div>
                </div>
            </li>
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/291.jhtml" title="聘网页前端设计3K双休" class="job ellipsis">聘网页前端设计3K双休</a>
                        <p><span class="colorRed">5年以上</span> &nbsp;<span class="city">,南昌,上海</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">不限</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招3-5人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-29发布</span>
                    </div>
                </div>
            </li>
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/290.jhtml" title="诚聘微信推广专员" class="job ellipsis">诚聘微信推广专员</a>
                        <p><span class="colorRed">1-3年</span> &nbsp;<span class="city">,上海,深圳</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">专科</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招3-5人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-29发布</span>
                    </div>
                </div>
            </li>
            <li class="engageItem">
                <div class="clearfix">
                    <div class="fl">
                        <img src="picture/engage.png"/>
                    </div>
                    <div class="fl" style="margin-left: 10px;">
                        <a href="http://demo2.jeecms.com/rczp/289.jhtml" title="安卓游戏开发5险1金" class="job ellipsis">安卓游戏开发5险1金</a>
                        <p><span class="colorRed">1-3年</span> &nbsp;<span class="city">,北京</span></p>
                        <p class="company ellipsis">jeecms子站</p>
                    </div>
                </div>
                <div class="info clearfix" style="margin-top:5px;">
                    <div class="fl">
                        <span class="icon"></span>
                        <span class="text">本科</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconPeople"></span>
                        <span class="text">招1-3人</span>
                    </div>
                    <div class="fl">
                        <span class="icon iconTime"></span>
                        <span class="text">03-29发布</span>
                    </div>
                </div>
            </li>
        </ul>
    </div>
    
    <div class="trainBox">
        <div class="columnTitle clearfix">
            <a href="/pxzl/index.jhtml">新闻看点</a>
            <!--
            <ul class="fl trainNav">
                <li>
                    <a href="javascript:">科技</a>
                </li>
                <li>
                    <a href="javascript:">人文社科</a>
                </li>
                <li>
                    <a href="javascript:">人文社科</a>
                </li>
            </ul>
            -->
        </div>
        <ul class="clearfix listbox">
            <li>
                <a href="http://demo2.jeecms.com/pxzl/315.jhtml" title="小学语文-人教版 45门考试" class="clearfix picInfo" style="display: block; margin-bottom: 12px;">
                    <div class="fl">
                        <img src="picture/311703010c5n.jpg" width="130" height="83"/>
                    </div>
                    <div class="fr des">
                        <h2 class="ellipsis title">
小学语文-人教版 45门考试                        </h2>
                        <p>2018-03-31</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/314.jhtml" title="小学语文-北师大版 3门考试" class="clearfix picInfo" style="display: block; margin-bottom: 12px;">
                    <div class="fl">
                        <img src="picture/02104211rik5.jpg" width="130" height="83"/>
                    </div>
                    <div class="fr des">
                        <h2 class="ellipsis title">
小学语文-北师大版 3门考试                        </h2>
                        <p>2018-03-31</p>
                    </div>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/313.jhtml" title="高考轻松备考" class="clearfix picInfo" style="display: block; margin-bottom: 12px;">
                    <div class="fl">
                        <img src="picture/021044358x6b.jpg" width="130" height="83"/>
                    </div>
                    <div class="fr des">
                        <h2 class="ellipsis title">
高考轻松备考                        </h2>
                        <p>2018-03-31</p>
                    </div>
                </a>
            </li>
        </ul>
        <ul class="clearfix listbox">
            <li>
                <a href="http://demo2.jeecms.com/pxzl/312.jhtml" title="热门行业报告大揭秘" class="list clearfix">
                    <span class="title ellipsis fl">
                    热门行业报告大揭秘</span>
                    <span class="time fr">2018-03-31</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/311.jhtml" title="学语文-北京版" class="list clearfix">
                    <span class="title ellipsis fl">
                    学语文-北京版</span>
                    <span class="time fr">2018-03-31</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/310.jhtml" title="2018年国家公务员备考攻略" class="list clearfix">
                    <span class="title ellipsis fl">
                    2018年国家公务员备考攻略</span>
                    <span class="time fr">2018-03-31</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/297.jhtml" title="2015年1季度国民经济开局平稳" class="list clearfix">
                    <span class="title ellipsis fl">
                    2015年1季度国民经济开局平稳</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/296.jhtml" title="互联网营销精品课件集锦" class="list clearfix">
                    <span class="title ellipsis fl">
                    互联网营销精品课件集锦</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/295.jhtml" title=" 全国中考真题解析" class="list clearfix">
                    <span class="title ellipsis fl">
                     全国中考真题解析</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/294.jhtml" title="2015各地区毕业生薪酬报告" class="list clearfix">
                    <span class="title ellipsis fl">
                    2015各地区毕业生薪酬报告</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/293.jhtml" title="QRcode国际标准" class="list clearfix">
                    <span class="title ellipsis fl">
                    QRcode国际标准</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
            <li>
                <a href="http://demo2.jeecms.com/pxzl/292.jhtml" title="《习近平的国家治理现代化思想》出版" class="list clearfix">
                    <span class="title ellipsis fl">
                    《习近平的国家治理现代化思想》出版</span>
                    <span class="time fr">2018-03-29</span>
                </a>
            </li>
        </ul>
        
        
    </div>		
</div>
<div class="footerBox">
    <div class="w1170-center clearfix">
        <div class="fl" style="width: 430px;">
            <h1 class="title"></h1>
            <p>电话：0791-86538070　13576281815</p>
            <p>传真：0791-86538070</p>
            <p>地址：杭州市九堡镇</p>
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
            <img src="picture/vx.png"/>
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
  </script>
</div></body>
<script type="text/javascript">
jQuery(".slideBox").slide({mainCell:".bd ul",autoPlay:true,effect:"leftLoop"});
</script>
</html>