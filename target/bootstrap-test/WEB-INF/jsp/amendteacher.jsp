<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta name="description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <!-- Twitter meta-->
    <meta property="twitter:card" content="summary_large_image">
    <meta property="twitter:site" content="@pratikborsadiya">
    <meta property="twitter:creator" content="@pratikborsadiya">
    <!-- Open Graph Meta-->
    <meta property="og:type" content="website">
    <meta property="og:site_name" content="Vali Admin">
    <meta property="og:title" content="Vali - Free Bootstrap 4 admin theme">
    <meta property="og:url" content="http://pratikborsadiya.in/blog/vali-admin">
    <meta property="og:image" content="http://pratikborsadiya.in/blog/vali-admin/hero-social.png">
    <meta property="og:description" content="Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.">
    <title>教务首页</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body class="app sidebar-mini rtl">
<!-- Navbar-->
<header class="app-header"><a class="app-header__logo" href="#">教务系统&nbsp&nbsp</a>
    <!-- Sidebar toggle button--><a class="app-sidebar__toggle" href="#" data-toggle="sidebar" aria-label="Hide Sidebar"></a>
    <!-- Navbar Right Menu-->
    <ul class="app-nav">
        <!-- User Menu-->
        <li class="dropdown"><a class="app-nav__item" href="#" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
            <ul class="dropdown-menu settings-menu dropdown-menu-right">
                <%--退出链接--%>
                <li><a class="dropdown-item" href="#"><i class="fa fa-cog fa-lg"></i>退出</a></li>
            </ul>
        </li>
    </ul>
</header>
<!-- Sidebar menu-->
<div class="app-sidebar__overlay" data-toggle="sidebar"></div>
<aside class="app-sidebar">
    <div class="app-sidebar__user">
        <div>
            <p class="app-sidebar__user-name">${user.username }</p>
            <p class="app-sidebar__user-designation">欢迎登录!</p>
        </div>
    </div>
    <%--表格连接--%>
    <ul class="app-menu">
        <li><a class="app-menu__item " href="#"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">学生信息</span></a></li>
        <li ><a class="app-menu__item" href="#" ><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">班级信息</span></a></li>
        <li><a class="app-menu__item" href="T_table_teacher"><i class="app-menu__icon fa fa-pie-chart"></i><span class="app-menu__label">教师信息</span></a></li>
    </ul>
</aside>
<main class="app-content">
    <div class="app-title">
        <div>
            <h1><i class="fa fa-dashboard"></i>千峰教育</h1>
            <p style="padding-top: 8px"><font color="red " >师者，传道授业解惑也!</font></p>
        </div>
        <ul class="app-breadcrumb breadcrumb">
            <li class="breadcrumb-item"><i class="fa fa-home fa-lg"></i></li>
            <li class="breadcrumb-item"><font color="blue">学IT,去千峰!</font></li>
        </ul>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="tile">
                <div class="tile-body">
                    <form action="${pageContext.request.contextPath }/amendteachers" method="get" id="UserForm">
                        <table class="table table-hover table-bordered" align="center" >
                            <tr>
                                <td>姓名</td>
                                <td><input type="text" name="tname" value="${tmodel.tname}" /></td>
                            </tr>
                            <tr>
                                <td>年龄</td>
                                <td><input type="text" name="tage" value="${tmodel.tage}"/></td>
                            </tr>
                            <tr>
                                <td>入职时间</td>
                                <td><input type="date" name="ttime" value="${tmodel.ttime}"/></td>
                            </tr>
                            <tr>
                                <td>执教科目</td>
                                <td><input type="text" name="tsubjects" value="${tmodel.tsubjects}"/></td>
                            </tr>
                            <tr>
                                <td>备注</td>
                                <td><input type="text" name="tremark" value="${tmodel.tremark}" /></td>
                            </tr>
                            <tr>
                                <td><input type="hidden" name="tid" value="${tmodel.tid}"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input type="submit" class="btn btn-primary"  value="提交"/>
                                    <input class="btn btn-default" type="reset" value="重置" /></td>
                            </tr>
                        </table>
                    </form>



                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<%--导航栏隐藏属性,要保留--%>
<!-- Google analytics script-->
<script type="text/javascript">
    if(document.location.hostname == 'pratikborsadiya.in') {
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
</script>
</body>
</html>