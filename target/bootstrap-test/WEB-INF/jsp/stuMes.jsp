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
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/main.css">
   <%-- bootstrap validator CSS--%>
    <link rel="stylesheet" href="/path/to/dist/css/bootstrapValidator.min.css"/>

    <!--bootstrap table CSS-->
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css">

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
        <li class="dropdown"><a class="app-nav__item" href="login" data-toggle="dropdown" aria-label="Open Profile Menu"><i class="fa fa-user fa-lg"></i></a>
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
            <div class="tile-body">

                <!-- 添加按钮 -->
                <div id="toolbar" class="btn-group pull-right" style="margin-right: 20px;">
                <!-- 点击此添加按钮触发模态框 -->
                <button onclick="addStu()" class="btn btn-primary" data-toggle="modal" data-target="#myModal">添加</button>
                </div>

              <table id="mytable"></table>
            </div>
          </div>
        </div>
      </div>
    </main>


    <!-- 添加模态框（Modal） -->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
                    aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel1">添加学生信息</h4>
          </div>
          <div class="modal-body">
            <form id="addForm" action="#" method="get">
              姓名：<input type="text" name="stuName" id="stuName1"/><br>
              年龄：<input type="text" name="stuAge" id="stuAge1"/><br>
              性别：<%--<input type="text" name="stuSex" id="stuSex1"/>--%>
              <label><input name="stuSex" type="radio" value="男" />男 </label>
              <label><input name="stuSex" type="radio" value="女" />女 </label><br>
              班级：<select id="selectClazz1" name="stuCname"></select>
              <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭</button>
                <button id="addBtn" type="button" class="btn btn-primary" onclick="insert()">添加</button>
              </div>
            </form>
          </div>

        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal -->
    </div>

    <!-- 编辑模态框（Modal） -->
    <div class="modal fade" id="myEditModal" tabindex="-1" role="dialog"
         aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal"
                    aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">修改学生信息</h4>
          </div>
          <div class="modal-body">
            <form  action="#" method="get">
              <input style="display: none" type="text" name="stuId" id="stuId" />
              姓名：<input type="text" name="stuName" id="stuName" /><br>
              年龄：<input type="text" name="stuAge" id="stuAge" /><br>
              性别：<%--<input type="text" name="stuSex" id="stuSex1"/>--%>
              <label><input name="stuSex1" type="radio" value="男" />男 </label>
              <label><input name="stuSex1" type="radio" value="女" />女 </label><br>
              班级：<select id="selectClazz" name="stuCname">
                      <option id="cname"></option>
                    </select>
              <div class="modal-footer">
                <button type="button" class="btn btn-default"
                        data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="update()">修改</button>
              </div>
            </form>
          </div>

        </div>
        <!-- /.modal-content -->
      </div>
      <!-- /.modal -->
    </div>




    <!-- Essential javascripts for application to work-->
    <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/main.js"></script>
    <!-- The javascript plugin to display page loading on top-->
    <script src="${pageContext.request.contextPath}/js/plugins/pace.min.js"></script>

    <%--导航栏隐藏属性,要保留--%>
    <!-- Google analytics script-->

    <%--引入bootstrap table--%>
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js"></script>
    <script type="text/javascript">
        $(function() {
            //初始化表格
            $("#mytable").bootstrapTable({
                //获取数据的servlet地址
                url : '${pageContext.request.contextPath}/student.action',
                //请求方式
                method : 'post',
                //隔行变色
                striped : true,
                //选择的按钮
                toolbar : '#toolbar',
                //打开搜索框
                search : true,
                //按回车键后进行搜索
                searchOnEnterKey : true,
                //显示刷新按钮
                showRefresh : true,
                //显示下拉框勾选要选中的列
                showColumns : true,
                //开启分页功能(客户端的分页功能)
                pagination: true,
                //第一次加载第一页
                pageNumber: 1,
                //每页显示条数
                pageSize: 4,
                //分页方式：默认客户端分页，修改为服务端分页
                sidePagination: 'server',

                queryParamsType:'limit',
                queryParams:function(params){
                    return {
                        limit:params.limit,
                        offset:params.offset,
                        search:params.search,
                        sort:params.sort,
                        order:params.order
                    };
                },
                //列参数
                columns : [{
                    field : 'id',
                    title : '编号'
                }, {
                    field : 'sname',
                    title : '姓名'
                }, {
                    field : 'age',
                    title : '年龄'
                }, {
                    field : 'sex',
                    title : '性别'
                },{
                    field:'clazz.cname',
                    title:'班级'
                } ,{
                    title : '操作',
                    field : 'button',
                    align : 'center',
                   events : operationEvents,//给按钮注测事件
                    formatter : AddFunctionAlty//表格中增加按钮
                } ]

            });
        });


        //把需要添加的按钮封装在函数中
        function AddFunctionAlty(value, row, index) {
            return [
                '<button id="TableEditor" class="btn btn-success" data-toggle="modal" data-target="#myEditModal">修改</button>&nbsp;&nbsp;',
                '<button id="TableDelect" type="button" class="btn btn-danger">删除</button>',

            ].join("")
        }

        //在对应的按钮上添加事件   注意：按钮要在添加事件后才会显示
        window.operationEvents = {

            //更改操作，向模态框中传数据
            "click #TableEditor" : function(e, value, row, index) {
                var stuId = row.id;
                var stuName = row.sname;
                var stuAge = row.age;
                var stuSex = row.sex;
                //向模态框中添加数据
                $('#stuId').val(stuId);
                $('#stuName').val(stuName);
                $('#stuAge').val(stuAge);
                /*$('#stuSex').val(stuSex);*/
                $("input[name='stuSex1']").removeAttr("checked");//每次设置选中项前先清理上次被选中的项
                $("input[name='stuSex1'][value='"+stuSex+"']").attr("checked",true);  //根据Value值设置Radio为选中状态
                //获取班级信息
                $.ajax({
                    url: '${pageContext.request.contextPath}/clazz.action',
                    type: 'post',
                    dataType: 'json',
                    async: true,//是否异步提交
                    success: function (rec) {//交互成功
                        $("#selectClazz").find("option").remove();//每次添加前清空，避免重复添加
                        $.each(rec, function (n, value) {//循环添加option属性
                            $("#selectClazz").append("<option value='" + value.id + "'>" + value.cname + "</option>")
                        });
                        //把当前行的班级信息设置为下拉框中默认展示的
                        $("#selectClazz").find("option[value='"+row.cid+"']").attr("selected",true);
                    },
                });
            },

            //删除按钮事件
            "click #TableDelect" : function(e, value, row, index) {
                location.href = "delete/" + row.id;    //restful风格编程，把数据通过路径的方式带到方法参数上
            }
        }


        //点击修改模态框中的修改按钮触发的事件
        function update() {
            //获取模态框中的数据
            var id = $('#stuId').val();
            var sname = $('#stuName').val();
            var age = $('#stuAge').val();
            /*var sex = $('#stuSex').val();*/
            var sex = $('input:radio[name="stuSex1"]:checked').val();
            var cid = $('#selectClazz').val();
            $.ajax({
                url : "update.action",
                data : "id=" + id + "&sname=" + sname
                + "&age=" + age + "&sex=" + sex+"&cid="+cid,
                type : "post",
                dataType : "text",
                contentType : "application/x-www-form-urlencoded;charset=utf-8",
                success : function(rec) {
                    alert(rec);
                    location.href = "${pageContext.request.contextPath}/stuMes";
                },
                error : function() {
                    alert("修改失败，请重试！");
                }

            });
        }





        //点击添加按钮触发的事件,往下拉框中添加数据
      function addStu(){
          $.ajax({
              url: '${pageContext.request.contextPath}/clazz.action',
              type: 'post',
              dataType: 'json',
              async: true,//是否异步提交
              success: function (rec) {//交互成功
                  $("#selectClazz1").find("option").remove();//每次添加前清空，避免重复添加
                  $("#selectClazz1").append("<option value='" + 0 + "'>" +"---请选择班级---" + "</option>")
                  $.each(rec, function (n, value) {//循环添加option属性
                      $("#selectClazz1").append("<option value='" + value.id + "'>" + value.cname + "</option>")
                  });

                  //把当前行的班级信息设置为下拉框中默认展示的
                  $("#selectClazz1").find("option[value='"+0+"']").attr("selected",true);
              },
          });
      }

        //点击添加模态框中的添加按钮触发的事件
       function insert() {
            //获取模态框中的数据
            var sname = $('#stuName1').val();
            var age = $('#stuAge1').val();
            /!*var sex = $('#stuSex1').val();*!/
            var sex = $('input:radio[name="stuSex"]:checked').val();
            var cid = $('#selectClazz1').val();
            $.ajax({
                url : "${pageContext.request.contextPath}/insert.action",
                data : "sname=" + sname
                + "&age=" + age + "&sex=" + sex+"&cid="+cid,
                type : "post",
                dataType : "text",
                contentType : "application/x-www-form-urlencoded;charset=utf-8",
                success : function(rec) {
                    alert(rec);
                    location.href = "${pageContext.request.contextPath}/stuMes";
                },
                error : function() {
                    alert("添加失败，请重试！");
                }

            });
        }

    </script>

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