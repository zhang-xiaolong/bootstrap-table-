<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <title>班级管理</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Main CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.css" rel="stylesheet">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/language/zh_CN.js"></script>
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
                <li><a class="dropdown-item" href="bjmh"><i class="fa fa-cog fa-lg"></i>退出</a></li>
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
                <div class="tile-body">
                    <div id="toolbar">
                        <button class="btn btn-danger " data-toggle="modal" data-target="#addModal"
                                style="padding-left: 30px;padding-right: 30px" onclick="findteacher()">添加</button>
                    </div>
                    <%--这里插入bootstrap table--%>
                    <table id="mytable"></table>
                </div>
            </div>
        </div>
    </div>

    <%--添加的模态框--%>
    <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                    <h4 class="modal-title" id="myModalLabel" style="padding-left: 45%" >添加</h4>
                </div>
                <div class="modal-body">
                    <form action="add" id="addform" method="post">

                        <div class="form-group">
                            <label>序号</label>
                            <input type="text" name="xuhao" class="form-control" id="addxh"/>
                        </div>

                        <div class="form-group">
                            <label>名称</label>
                            <input class="form-control" type="text" name="cname" id="addname"/>
                        </div>

                        <div class="form-group">
                            <label>教室</label>
                            <input class="form-control" type="text" name="jiaoshi" id="addjs"/>
                        </div>

                        <div class="form-group">
                            <label>班主任</label><br>
                            <select style="width: 20%;height: 30px;" id="addselect" name="thid">
                            </select>
                        </div>
                        <div class="form-group" style="text-align: right">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="submit" class="btn btn-primary" <%--onclick="add()"--%>>提交</button>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <!-- 编辑的模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                    <h4 class="modal-title" id="myModalLabel" style="padding-left: 45%">修改</h4>
                </div>
                <div class="modal-body">
                    <form action="modify" id="myform" method="post">
                        <div class="form-group" style="display:none">
                            <label>ID</label>
                            <input type="text" name="id" class="form-control" id="myid"/>
                        </div>

                        <div class="form-group">
                            <label>序号</label>
                            <input type="text" name="xuhao" class="form-control" id="myxh"/>
                        </div>

                        <div class="form-group">
                            <label>名称</label>
                            <input class="form-control" type="text" name="cname" id="myname"/>
                        </div>

                        <div class="form-group">
                            <label>教室</label>
                            <input class="form-control" type="text" name="jiaoshi" id="myjs"/>
                        </div>

                        <div class="form-group">
                            <label>班主任</label><br>
                            <select style="width: 20%;height: 30px;" id="myselect" name="thid">
                                <option id="myopt"></option>
                            </select>
                        </div>

                        <div class="form-group" style="text-align: right">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                            <button type="submit" class="btn btn-primary" <%--onclick="modify()"--%>>提交更改</button>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>

    <!-- 班主任的模态框（Modal） -->
    <div class="modal fade" id="teachModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <%--<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>--%>
                    <h4 class="modal-title" id="myModalLabel" style="padding-left: 38%">班主任信息</h4>
                </div>
                <div class="modal-body">
                    <form action="#" id="teachform">
                        <div class="form-group" >
                            <label>编号</label>
                            <input type="text" name="tid" class="form-control" id="mytid"/>
                        </div>

                        <div class="form-group" >
                            <label>姓名</label>
                            <input type="text" name="tname" class="form-control" id="mytname"/>
                        </div>

                        <div class="form-group">
                            <label>年龄</label>
                            <input type="text" name="tage" class="form-control" id="mytage"/>
                        </div>

                        <div class="form-group">
                            <label>入职时间</label>
                            <input class="form-control" type="text" name="ttime" id="myttime"/>
                        </div>

                        <div class="form-group">
                            <label>科目</label>
                            <input class="form-control" type="text" name="tsubjects" id="mytsubjects"/>
                        </div>

                        <div class="form-group">
                            <label>备注</label>
                            <input class="form-control" type="text" name="tremark" id="mytremark"/>
                        </div>

                        <div class="form-group" style="text-align: right">
                            <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                        </div>
                    </form>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal -->
    </div>
</main>
<!-- Essential javascripts for application to work-->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/main.js"></script>
<!-- The javascript plugin to display page loading on top-->
<script src="js/plugins/pace.min.js"></script>
<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
<script type="text/javascript">
    $(function(){
        /*初始化表格*/
        $("#mytable").bootstrapTable({
            /*请求地址*/
            url:'users.action',
            method:'post',
            contextType:'application/json',
            pagination: true,
            toolbar:"#toolbar",
            sortOrder:"desc",
            //打开搜索框
            search: true,
            //按回车键后进行搜索
            searchOnEnterKey: true,
            //第一次加载第一页
            pageNumber: 1,
            //每页显示条数
            pageSize: 5,
            pageList: [5,10],
            paginationPreText: '<‹',
            paginationNextText: '›>',
            queryParamsType:'limit',
            queryParams:queryParams,
            sidePagination: 'server',
            columns:[
                {
                    title:'编号',
                    field:'xuhao',
                    align:'center'
                },
                {
                    title:'名称',
                    field:'cname',
                    align:'center'
                },
                {
                    title:'教室',
                    field:'jiaoshi',
                    align:'center'
                },
                {
                    title:'班主任',
                    field:'teacher.tname',
                    align:'center'
                },
                {
                    field: 'button',
                    title: '操作',
                    width: "27%",
                    align:"center",
                    formatter : operateFormatter,
                    events: operateEvents
                }
            ],
            responseHandler:function(res){
                return res;
            }
        });
    });
    //绑定按钮组
    function operateFormatter(value, row, index) {
        return ['<button id="btn1" type="button" class="btn btn-warning btn-xs" style="margin-left: -10px">删除</button>',
            '<button id="btn2" type="button" class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal" style="margin-left: 18px">修改</button>',
            '<button id="btn3" type="button" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#teachModal" style="margin-left: 18px">班主任</button>'
            ].join('');

    }
    window.operateEvents = {
        "click #btn1": function (e, value, row, index) {
            var i = JSON.stringify(row.id);
            $.ajax({
                url : "delete",
                type : "post",
                data : {
                    "id" : i
                },
                success : function(status) {
                    $('#mytable').bootstrapTable('refresh',{pageNumber:1});
                },
                error:function () {
                    alert("删除失败,请重试!")
                }
            });
        },
        "click #btn2": function (e, value, row, index) {
            $('#myid').val(row.id);
            $('#myxh').val(row.xuhao);
            $('#myname').val(row.cname);
            $('#myjs').val(row.jiaoshi);
            $.ajax({
                url : "edit",
                type : "post",
                dataType:"json",
                async:true,
                success: function (msg) {//交互成功
                    /*每次添加前清空，避免重复添加*/
                    $("#myselect").find("option").remove();
                    /* 循环添加option属性*/
                    $.each(msg, function (n, teacher) {
                        if(row.thid!=null&&row.thid!=''&&row.thid==teacher.tid){
                            $("#myselect").append("<option value='" + teacher.tid + "' selected='selected'>" + teacher.tname + "</option>")
                        }else{
                            $("#myselect").append("<option value='" + teacher.tid + "'>" + teacher.tname + "</option>")
                        }
                    });
                },
            });
        },
        "click #btn3": function (e, value, row, index) {
            var i = JSON.stringify(row.thid);
            $.ajax({
                url : "teacher",
                type : "post",
                data : {
                    "thid" : i
                },
                success : function(msg) {
                    var date = msg[0].ttime;
                    function timestampToTime(timestamp) {
                        var date = new Date(timestamp );
                        var Y = date.getFullYear() + '-';
                        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';
                        var D = (date.getDate()+1<10? '0' +(date.getDate()):date.getDate());
                        return Y+M+D;
                    }
                    $('#mytid').val(msg[0].tid);
                    $('#mytname').val(msg[0].tname);
                    $('#mytage').val(msg[0].tage);
                    $('#myttime').val(timestampToTime(date));
                    $('#mytsubjects').val(msg[0].tsubjects);
                    $('#mytremark').val(msg[0].tremark);
                },
                error:function () {
                    alert("查询失败,请重试!")
                }
            });
        },
    }
    function queryParams(params) {//上传服务器的参数
        var temp = {//如果是在服务器端实现分页，limit、offset这两个参数是必须的
            rows : params.limit, // 每页显示数量
            offset : params.offset, // SQL语句起始索引
            order: params.order,
            search: params.search
        };
        return temp;
    }
    /*function modify(){
        $.ajax({
            url : "modify",
            data :{"thid":$('#myselect').val(),
                    "xuhao":$('#myxh').val(),
                    "cname":$('#myname').val(),
                    "jiaoshi":$('#myjs').val(),
                    "id":$('#myid').val()
                   },
            success : function(status) {
                location.href="clazz";
            },
            error:function () {
                alert("修改失败,请重试!")
            }
        });
    }*/
    function findteacher() {
        $.ajax({
            url : "edit",
            type : "post",
            dataType:"json",
            async:true,
            success: function (msg) {//交互成功
                /*每次添加前清空，避免重复添加*/
                $("#addselect").find("option").remove();
                $("#addselect").append("<option value='-1'>" + "--请选择--" + "</option>")
                /* 循环添加option属性*/
                $.each(msg, function (n, teacher) {
                    $("#addselect").append("<option value='" + teacher.tid + "'>" + teacher.tname + "</option>")
                });
            },
        });
    }
    /*function add(){
        $.ajax({
            url : "add",
            data :{"thid":$('#addselect').val(),
                "xuhao":$('#addxh').val(),
                "cname":$('#addname').val(),
                "jiaoshi":$('#addjs').val()
            },
            success : function(status) {
                location.href="clazz";
            },
            error:function () {
                alert("添加失败,请重试!")
            }
        });
    }*/
</script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js"></script>
<script type="text/javascript">
    $(function() {
        $("#addform").bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                xuhao: {
                    message: '序号验证失败',
                    validators: {
                        notEmpty: {
                            message: '序号不能为空'
                        },
                        stringLength: {/*长度提示*/
                            min: 6,
                            max: 6,
                            message: '序号长度必须为6'
                        }
                    }
                },
                cname: {
                    validators: {
                        notEmpty: {
                            message: '名称不能为空'
                        }
                    }
                },
                jiaoshi: {
                    validators: {
                        notEmpty: {
                            message: '教室不能为空'
                        }
                    }
                },
                thid:{
                    validators:{
                        notEmpty:{
                            message:'班主任不能为空'
                        },
                        callback: {
                            message: '必须选择一个班主任',
                            callback: function(value, validator) {
                                if(value == -1) {
                                    return false;
                                }else {
                                    return true;
                                }
                            }
                        }
                    }
                }
            }
        });
    })
    $(function() {
        $("#myform").bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {
                xuhao: {
                    message: '序号验证失败',
                    validators: {
                        notEmpty: {
                            message: '序号不能为空'
                        },
                        stringLength: {/*长度提示*/
                            min: 6,
                            max: 6,
                            message: '序号长度必须为6'
                        }
                    }
                },
                cname: {
                    validators: {
                        notEmpty: {
                            message: '名称不能为空'
                        }
                    }
                },
                jiaoshi: {
                    validators: {
                        notEmpty: {
                            message: '教室不能为空'
                        }
                    }
                }
            }
        });
    })
</script>
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