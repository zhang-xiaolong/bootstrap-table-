<%--
  Created by IntelliJ IDEA.
  User: 初秋
  Date: 2018/10/16
  Time: 15:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

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
                <li><a class="dropdown-item" href="login"><i class="fa fa-cog fa-lg"></i>退出</a></li>
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
        <li><a class="app-menu__item " href="stuMes"><i class="app-menu__icon fa fa-dashboard"></i><span class="app-menu__label">学生信息</span></a></li>
        <li ><a class="app-menu__item" href="clazz" ><i class="app-menu__icon fa fa-laptop"></i><span class="app-menu__label">班级信息</span></a></li>
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
                <!-- 添加模态框 -->
                <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#addModal">
                    添加
                </button>
                <!-- 模态框（Modal） -->
                <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" align="left" id="myModalLabel">
                                    新增用户
                                </h4>
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                    &times;
                                </button>
                            </div>
                            <div class="modal-body">
                                <form action="${pageContext.request.contextPath }/addteacher" method="get" id="addteacher">
                                    <table class="table table-hover table-bordered" align="center" >
                                        <tr>
                                            <td>姓名</td>
                                            <td><input type="text" name="tname" /></td>
                                        </tr>
                                        <tr>
                                            <td>年龄</td>
                                            <td><input type="text" name="tage" /></td>
                                        </tr>
                                        <tr>
                                            <td>入职时间</td>
                                            <td><input type="date" name="ttime" /></td>
                                        </tr>
                                        <tr>
                                            <td>执教科目</td>
                                            <td><input type="text" name="tsubjects" /></td>
                                        </tr>
                                        <tr>
                                            <td>备注</td>
                                            <td><input type="text" name="tremark" /></td>
                                        </tr>

                                        <tr>
                                            <td colspan="2" align="center"><input type="submit" class="btn btn-primary"  value="提交"/><input class="btn btn-default" type="reset" value="重置" /></td>
                                        </tr>
                                    </table>
                                </form>
                            </div>
                        </div><!-- /.modal-content -->
                    </div><!-- /.modal -->
                </div>
                <div class="tile-body">
                    <%--这里插入bootstrap table--%>
                    <table id="t_table">

                    </table>
                </div>
            </div>
        </div>
    </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>
<%--<script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>--%>
<%--<script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>--%>
<%--<script type="text/javascript">$('#sampleTable').DataTable();</script>--%>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script type="text/javascript">
    $(function(){
        //初始化表格
        $("#t_table").bootstrapTable({
            //列参数
            columns: [
                {field:'tid',title:'工号'},
                { field: 'tname', title: '姓名' },
                { field: 'tage', title: '年龄' },
                { field: 'ttime', title: '入职时间' },
                { field: 'tsubjects', title: '执教科目' },
                {field:'tremark',title:'备注'},
                {
                    field: 'tid', title: '操作',
                    width: 120,
                    align: 'center',
                    valign: 'middle',
                    formatter: actionFormatter
                }
            ],
            //要绑定的数据
            //这里绑定的是死数据，如果使用的客户端分页的json格式：[{},{},{}]
            //如果使用的服务端分页,json格式如下：{total:98,rows:[{},{}]}
            //请求地址
            url: 'users',
            //请求方式
            method: 'post',
             // data: [{ id: 1, name: 'Item 1', post:'wuzhi',age:13,time:19990101 }, {id: 2, name: 'Item 1', post:'wuzhi',age:13,time:19990101 }, { id: 3, name: 'Item 1', post:'wuzhi',age:13,time:19990101 }],
            //打开搜索框
            search: true,
            //按回车键后进行搜索
            searchOnEnterKey: true,
            //开启分页功能
            pagination: true,
            //第一次加载第一页
            pageNumber: 1,
            //每页显示条数
            pageSize: 5,
            //分页方式：默认客户端分页，修改为服务端分页
            sidePagination: 'server'
        });
    });
</script>
<%--导航栏隐藏属性,要保留--%>
<!-- Google analytics script-->
<script>
    if(document.location.hostname == 'pratikborsadiya.in') {
        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
        ga('create', 'UA-72504830-1', 'auto');
        ga('send', 'pageview');
    }
    function actionFormatter(value, row, index) {
        var id = value;
        var result = "";
        result += "<a href='javascript:;' class='btn btn-success btn-sm'  onclick=\"EditViewByIds('" + id + "')\" ><span class='glyphicon glyphicon-pencil'>编辑</span></a>";
        result += "<a href='javascript:;' class='btn btn-info btn-sm' onclick=\"DeleteByIds('" + id + "')\" ><span class='glyphicon glyphicon-remove'>删除</span></a>";

        return result;
    }

    function DeleteByIds(id) {
        location.href="${pageContext.request.contextPath}/removeteacher?id="+id;
    }
    function EditViewByIds(id) {
        location.href="${pageContext.request.contextPath}/amendteacher?id="+id;
    }
</script>

</body>
</html>
