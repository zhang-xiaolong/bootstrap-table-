/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-10-20 11:01:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class clazz_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta name=\"description\" content=\"Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.\">\r\n");
      out.write("    <!-- Twitter meta-->\r\n");
      out.write("    <meta property=\"twitter:card\" content=\"summary_large_image\">\r\n");
      out.write("    <meta property=\"twitter:site\" content=\"@pratikborsadiya\">\r\n");
      out.write("    <meta property=\"twitter:creator\" content=\"@pratikborsadiya\">\r\n");
      out.write("    <!-- Open Graph Meta-->\r\n");
      out.write("    <meta property=\"og:type\" content=\"website\">\r\n");
      out.write("    <meta property=\"og:site_name\" content=\"Vali Admin\">\r\n");
      out.write("    <meta property=\"og:title\" content=\"Vali - Free Bootstrap 4 admin theme\">\r\n");
      out.write("    <meta property=\"og:url\" content=\"http://pratikborsadiya.in/blog/vali-admin\">\r\n");
      out.write("    <meta property=\"og:image\" content=\"http://pratikborsadiya.in/blog/vali-admin/hero-social.png\">\r\n");
      out.write("    <meta property=\"og:description\" content=\"Vali is a responsive and free admin theme built with Bootstrap 4, SASS and PUG.js. It's fully customizable and modular.\">\r\n");
      out.write("    <title>班级管理</title>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <!-- Main CSS-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\"\r\n");
      out.write("          href=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.css\">\r\n");
      out.write("    <!-- Font-icon css-->\r\n");
      out.write("    <link rel=\"stylesheet\" type=\"text/css\" href=\"https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n");
      out.write("    <link href=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/css/bootstrapValidator.css\" rel=\"stylesheet\">\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js\"></script>\r\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/language/zh_CN.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body class=\"app sidebar-mini rtl\">\r\n");
      out.write("<!-- Navbar-->\r\n");
      out.write("<header class=\"app-header\"><a class=\"app-header__logo\" href=\"#\">教务系统&nbsp&nbsp</a>\r\n");
      out.write("    <!-- Sidebar toggle button--><a class=\"app-sidebar__toggle\" href=\"#\" data-toggle=\"sidebar\" aria-label=\"Hide Sidebar\"></a>\r\n");
      out.write("    <!-- Navbar Right Menu-->\r\n");
      out.write("    <ul class=\"app-nav\">\r\n");
      out.write("        <!-- User Menu-->\r\n");
      out.write("        <li class=\"dropdown\"><a class=\"app-nav__item\" href=\"#\" data-toggle=\"dropdown\" aria-label=\"Open Profile Menu\"><i class=\"fa fa-user fa-lg\"></i></a>\r\n");
      out.write("            <ul class=\"dropdown-menu settings-menu dropdown-menu-right\">\r\n");
      out.write("                ");
      out.write("\r\n");
      out.write("                <li><a class=\"dropdown-item\" href=\"bjmh\"><i class=\"fa fa-cog fa-lg\"></i>退出</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</header>\r\n");
      out.write("<!-- Sidebar menu-->\r\n");
      out.write("<div class=\"app-sidebar__overlay\" data-toggle=\"sidebar\"></div>\r\n");
      out.write("<aside class=\"app-sidebar\">\r\n");
      out.write("    <div class=\"app-sidebar__user\">\r\n");
      out.write("        <div>\r\n");
      out.write("            <p class=\"app-sidebar__user-name\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${user.username }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("</p>\r\n");
      out.write("            <p class=\"app-sidebar__user-designation\">欢迎登录!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <ul class=\"app-menu\">\r\n");
      out.write("        <li><a class=\"app-menu__item \" href=\"stuMes\"><i class=\"app-menu__icon fa fa-dashboard\"></i><span class=\"app-menu__label\">学生信息</span></a></li>\r\n");
      out.write("        <li ><a class=\"app-menu__item\" href=\"clazz\" ><i class=\"app-menu__icon fa fa-laptop\"></i><span class=\"app-menu__label\">班级信息</span></a></li>\r\n");
      out.write("        <li><a class=\"app-menu__item\" href=\"T_table_teacher\"><i class=\"app-menu__icon fa fa-pie-chart\"></i><span class=\"app-menu__label\">教师信息</span></a></li>\r\n");
      out.write("    </ul>\r\n");
      out.write("</aside>\r\n");
      out.write("<main class=\"app-content\">\r\n");
      out.write("    <div class=\"app-title\">\r\n");
      out.write("        <div>\r\n");
      out.write("            <h1><i class=\"fa fa-dashboard\"></i>千峰教育</h1>\r\n");
      out.write("            <p style=\"padding-top: 8px\"><font color=\"red \" >师者，传道授业解惑也!</font></p>\r\n");
      out.write("        </div>\r\n");
      out.write("        <ul class=\"app-breadcrumb breadcrumb\">\r\n");
      out.write("            <li class=\"breadcrumb-item\"><i class=\"fa fa-home fa-lg\"></i></li>\r\n");
      out.write("            <li class=\"breadcrumb-item\"><font color=\"blue\">学IT,去千峰!</font></li>\r\n");
      out.write("        </ul>\r\n");
      out.write("    </div>\r\n");
      out.write("    <div class=\"row\">\r\n");
      out.write("        <div class=\"col-md-12\">\r\n");
      out.write("            <div class=\"tile\">\r\n");
      out.write("                <div class=\"tile-body\">\r\n");
      out.write("                    <div id=\"toolbar\">\r\n");
      out.write("                        <button class=\"btn btn-danger \" data-toggle=\"modal\" data-target=\"#addModal\"\r\n");
      out.write("                                style=\"padding-left: 30px;padding-right: 30px\" onclick=\"findteacher()\">添加</button>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <table id=\"mytable\"></table>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    ");
      out.write("\r\n");
      out.write("    <div class=\"modal fade\" id=\"addModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <div class=\"modal-content\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <h4 class=\"modal-title\" id=\"myModalLabel\" style=\"padding-left: 45%\" >添加</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form action=\"add\" id=\"addform\" method=\"post\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>序号</label>\r\n");
      out.write("                            <input type=\"text\" name=\"xuhao\" class=\"form-control\" id=\"addxh\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>名称</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"cname\" id=\"addname\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>教室</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"jiaoshi\" id=\"addjs\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>班主任</label><br>\r\n");
      out.write("                            <select style=\"width: 20%;height: 30px;\" id=\"addselect\" name=\"thid\">\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\" style=\"text-align: right\">\r\n");
      out.write("                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" ");
      out.write(">提交</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- /.modal-content -->\r\n");
      out.write("        </div><!-- /.modal -->\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- 编辑的模态框（Modal） -->\r\n");
      out.write("    <div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <div class=\"modal-content\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <h4 class=\"modal-title\" id=\"myModalLabel\" style=\"padding-left: 45%\">修改</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form action=\"modify\" id=\"myform\" method=\"post\">\r\n");
      out.write("                        <div class=\"form-group\" style=\"display:none\">\r\n");
      out.write("                            <label>ID</label>\r\n");
      out.write("                            <input type=\"text\" name=\"id\" class=\"form-control\" id=\"myid\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>序号</label>\r\n");
      out.write("                            <input type=\"text\" name=\"xuhao\" class=\"form-control\" id=\"myxh\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>名称</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"cname\" id=\"myname\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>教室</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"jiaoshi\" id=\"myjs\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>班主任</label><br>\r\n");
      out.write("                            <select style=\"width: 20%;height: 30px;\" id=\"myselect\" name=\"thid\">\r\n");
      out.write("                                <option id=\"myopt\"></option>\r\n");
      out.write("                            </select>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\" style=\"text-align: right\">\r\n");
      out.write("                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-primary\" ");
      out.write(">提交更改</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- /.modal-content -->\r\n");
      out.write("        </div><!-- /.modal -->\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <!-- 班主任的模态框（Modal） -->\r\n");
      out.write("    <div class=\"modal fade\" id=\"teachModal\" tabindex=\"-1\" role=\"dialog\" aria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("        <div class=\"modal-dialog\">\r\n");
      out.write("            <div class=\"modal-content\">\r\n");
      out.write("                <div class=\"modal-header\">\r\n");
      out.write("                    ");
      out.write("\r\n");
      out.write("                    <h4 class=\"modal-title\" id=\"myModalLabel\" style=\"padding-left: 38%\">班主任信息</h4>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"modal-body\">\r\n");
      out.write("                    <form action=\"#\" id=\"teachform\">\r\n");
      out.write("                        <div class=\"form-group\" >\r\n");
      out.write("                            <label>编号</label>\r\n");
      out.write("                            <input type=\"text\" name=\"tid\" class=\"form-control\" id=\"mytid\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\" >\r\n");
      out.write("                            <label>姓名</label>\r\n");
      out.write("                            <input type=\"text\" name=\"tname\" class=\"form-control\" id=\"mytname\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>年龄</label>\r\n");
      out.write("                            <input type=\"text\" name=\"tage\" class=\"form-control\" id=\"mytage\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>入职时间</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"ttime\" id=\"myttime\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>科目</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"tsubjects\" id=\"mytsubjects\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label>备注</label>\r\n");
      out.write("                            <input class=\"form-control\" type=\"text\" name=\"tremark\" id=\"mytremark\"/>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\" style=\"text-align: right\">\r\n");
      out.write("                            <button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div><!-- /.modal-content -->\r\n");
      out.write("        </div><!-- /.modal -->\r\n");
      out.write("    </div>\r\n");
      out.write("</main>\r\n");
      out.write("<!-- Essential javascripts for application to work-->\r\n");
      out.write("<script src=\"js/jquery-3.2.1.min.js\"></script>\r\n");
      out.write("<script src=\"js/popper.min.js\"></script>\r\n");
      out.write("<script src=\"js/bootstrap.min.js\"></script>\r\n");
      out.write("<script src=\"js/main.js\"></script>\r\n");
      out.write("<!-- The javascript plugin to display page loading on top-->\r\n");
      out.write("<script src=\"js/plugins/pace.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\"\r\n");
      out.write("        src=\"https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.12.1/bootstrap-table.min.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(function(){\r\n");
      out.write("        /*初始化表格*/\r\n");
      out.write("        $(\"#mytable\").bootstrapTable({\r\n");
      out.write("            /*请求地址*/\r\n");
      out.write("            url:'users.action',\r\n");
      out.write("            method:'post',\r\n");
      out.write("            contextType:'application/json',\r\n");
      out.write("            pagination: true,\r\n");
      out.write("            toolbar:\"#toolbar\",\r\n");
      out.write("            sortOrder:\"desc\",\r\n");
      out.write("            //打开搜索框\r\n");
      out.write("            search: true,\r\n");
      out.write("            //按回车键后进行搜索\r\n");
      out.write("            searchOnEnterKey: true,\r\n");
      out.write("            //第一次加载第一页\r\n");
      out.write("            pageNumber: 1,\r\n");
      out.write("            //每页显示条数\r\n");
      out.write("            pageSize: 5,\r\n");
      out.write("            pageList: [5,10],\r\n");
      out.write("            paginationPreText: '<‹',\r\n");
      out.write("            paginationNextText: '›>',\r\n");
      out.write("            queryParamsType:'limit',\r\n");
      out.write("            queryParams:queryParams,\r\n");
      out.write("            sidePagination: 'server',\r\n");
      out.write("            columns:[\r\n");
      out.write("                {\r\n");
      out.write("                    title:'编号',\r\n");
      out.write("                    field:'xuhao',\r\n");
      out.write("                    align:'center'\r\n");
      out.write("                },\r\n");
      out.write("                {\r\n");
      out.write("                    title:'名称',\r\n");
      out.write("                    field:'cname',\r\n");
      out.write("                    align:'center'\r\n");
      out.write("                },\r\n");
      out.write("                {\r\n");
      out.write("                    title:'教室',\r\n");
      out.write("                    field:'jiaoshi',\r\n");
      out.write("                    align:'center'\r\n");
      out.write("                },\r\n");
      out.write("                {\r\n");
      out.write("                    title:'班主任',\r\n");
      out.write("                    field:'teacher.tname',\r\n");
      out.write("                    align:'center'\r\n");
      out.write("                },\r\n");
      out.write("                {\r\n");
      out.write("                    field: 'button',\r\n");
      out.write("                    title: '操作',\r\n");
      out.write("                    width: \"27%\",\r\n");
      out.write("                    align:\"center\",\r\n");
      out.write("                    formatter : operateFormatter,\r\n");
      out.write("                    events: operateEvents\r\n");
      out.write("                }\r\n");
      out.write("            ],\r\n");
      out.write("            responseHandler:function(res){\r\n");
      out.write("                return res;\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    });\r\n");
      out.write("    //绑定按钮组\r\n");
      out.write("    function operateFormatter(value, row, index) {\r\n");
      out.write("        return ['<button id=\"btn1\" type=\"button\" class=\"btn btn-warning btn-xs\" style=\"margin-left: -10px\">删除</button>',\r\n");
      out.write("            '<button id=\"btn2\" type=\"button\" class=\"btn btn-default btn-xs\" data-toggle=\"modal\" data-target=\"#myModal\" style=\"margin-left: 18px\">修改</button>',\r\n");
      out.write("            '<button id=\"btn3\" type=\"button\" class=\"btn btn-primary btn-xs\" data-toggle=\"modal\" data-target=\"#teachModal\" style=\"margin-left: 18px\">班主任</button>'\r\n");
      out.write("            ].join('');\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("    window.operateEvents = {\r\n");
      out.write("        \"click #btn1\": function (e, value, row, index) {\r\n");
      out.write("            var i = JSON.stringify(row.id);\r\n");
      out.write("            $.ajax({\r\n");
      out.write("                url : \"delete\",\r\n");
      out.write("                type : \"post\",\r\n");
      out.write("                data : {\r\n");
      out.write("                    \"id\" : i\r\n");
      out.write("                },\r\n");
      out.write("                success : function(status) {\r\n");
      out.write("                    $('#mytable').bootstrapTable('refresh',{pageNumber:1});\r\n");
      out.write("                },\r\n");
      out.write("                error:function () {\r\n");
      out.write("                    alert(\"删除失败,请重试!\")\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        },\r\n");
      out.write("        \"click #btn2\": function (e, value, row, index) {\r\n");
      out.write("            $('#myid').val(row.id);\r\n");
      out.write("            $('#myxh').val(row.xuhao);\r\n");
      out.write("            $('#myname').val(row.cname);\r\n");
      out.write("            $('#myjs').val(row.jiaoshi);\r\n");
      out.write("            $.ajax({\r\n");
      out.write("                url : \"edit\",\r\n");
      out.write("                type : \"post\",\r\n");
      out.write("                dataType:\"json\",\r\n");
      out.write("                async:true,\r\n");
      out.write("                success: function (msg) {//交互成功\r\n");
      out.write("                    /*每次添加前清空，避免重复添加*/\r\n");
      out.write("                    $(\"#myselect\").find(\"option\").remove();\r\n");
      out.write("                    /* 循环添加option属性*/\r\n");
      out.write("                    $.each(msg, function (n, teacher) {\r\n");
      out.write("                        if(row.thid!=null&&row.thid!=''&&row.thid==teacher.tid){\r\n");
      out.write("                            $(\"#myselect\").append(\"<option value='\" + teacher.tid + \"' selected='selected'>\" + teacher.tname + \"</option>\")\r\n");
      out.write("                        }else{\r\n");
      out.write("                            $(\"#myselect\").append(\"<option value='\" + teacher.tid + \"'>\" + teacher.tname + \"</option>\")\r\n");
      out.write("                        }\r\n");
      out.write("                    });\r\n");
      out.write("                },\r\n");
      out.write("            });\r\n");
      out.write("        },\r\n");
      out.write("        \"click #btn3\": function (e, value, row, index) {\r\n");
      out.write("            var i = JSON.stringify(row.thid);\r\n");
      out.write("            $.ajax({\r\n");
      out.write("                url : \"teacher\",\r\n");
      out.write("                type : \"post\",\r\n");
      out.write("                data : {\r\n");
      out.write("                    \"thid\" : i\r\n");
      out.write("                },\r\n");
      out.write("                success : function(msg) {\r\n");
      out.write("                    var date = msg[0].ttime;\r\n");
      out.write("                    function timestampToTime(timestamp) {\r\n");
      out.write("                        var date = new Date(timestamp );\r\n");
      out.write("                        var Y = date.getFullYear() + '-';\r\n");
      out.write("                        var M = (date.getMonth()+1 < 10 ? '0'+(date.getMonth()+1) : date.getMonth()+1) + '-';\r\n");
      out.write("                        var D = (date.getDate()+1<10? '0' +(date.getDate()):date.getDate());\r\n");
      out.write("                        return Y+M+D;\r\n");
      out.write("                    }\r\n");
      out.write("                    $('#mytid').val(msg[0].tid);\r\n");
      out.write("                    $('#mytname').val(msg[0].tname);\r\n");
      out.write("                    $('#mytage').val(msg[0].tage);\r\n");
      out.write("                    $('#myttime').val(timestampToTime(date));\r\n");
      out.write("                    $('#mytsubjects').val(msg[0].tsubjects);\r\n");
      out.write("                    $('#mytremark').val(msg[0].tremark);\r\n");
      out.write("                },\r\n");
      out.write("                error:function () {\r\n");
      out.write("                    alert(\"查询失败,请重试!\")\r\n");
      out.write("                }\r\n");
      out.write("            });\r\n");
      out.write("        },\r\n");
      out.write("    }\r\n");
      out.write("    function queryParams(params) {//上传服务器的参数\r\n");
      out.write("        var temp = {//如果是在服务器端实现分页，limit、offset这两个参数是必须的\r\n");
      out.write("            rows : params.limit, // 每页显示数量\r\n");
      out.write("            offset : params.offset, // SQL语句起始索引\r\n");
      out.write("            order: params.order,\r\n");
      out.write("            search: params.search\r\n");
      out.write("        };\r\n");
      out.write("        return temp;\r\n");
      out.write("    }\r\n");
      out.write("    /*function modify(){\r\n");
      out.write("        $.ajax({\r\n");
      out.write("            url : \"modify\",\r\n");
      out.write("            data :{\"thid\":$('#myselect').val(),\r\n");
      out.write("                    \"xuhao\":$('#myxh').val(),\r\n");
      out.write("                    \"cname\":$('#myname').val(),\r\n");
      out.write("                    \"jiaoshi\":$('#myjs').val(),\r\n");
      out.write("                    \"id\":$('#myid').val()\r\n");
      out.write("                   },\r\n");
      out.write("            success : function(status) {\r\n");
      out.write("                location.href=\"clazz\";\r\n");
      out.write("            },\r\n");
      out.write("            error:function () {\r\n");
      out.write("                alert(\"修改失败,请重试!\")\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    }*/\r\n");
      out.write("    function findteacher() {\r\n");
      out.write("        $.ajax({\r\n");
      out.write("            url : \"edit\",\r\n");
      out.write("            type : \"post\",\r\n");
      out.write("            dataType:\"json\",\r\n");
      out.write("            async:true,\r\n");
      out.write("            success: function (msg) {//交互成功\r\n");
      out.write("                /*每次添加前清空，避免重复添加*/\r\n");
      out.write("                $(\"#addselect\").find(\"option\").remove();\r\n");
      out.write("                $(\"#addselect\").append(\"<option value='-1'>\" + \"--请选择--\" + \"</option>\")\r\n");
      out.write("                /* 循环添加option属性*/\r\n");
      out.write("                $.each(msg, function (n, teacher) {\r\n");
      out.write("                    $(\"#addselect\").append(\"<option value='\" + teacher.tid + \"'>\" + teacher.tname + \"</option>\")\r\n");
      out.write("                });\r\n");
      out.write("            },\r\n");
      out.write("        });\r\n");
      out.write("    }\r\n");
      out.write("    /*function add(){\r\n");
      out.write("        $.ajax({\r\n");
      out.write("            url : \"add\",\r\n");
      out.write("            data :{\"thid\":$('#addselect').val(),\r\n");
      out.write("                \"xuhao\":$('#addxh').val(),\r\n");
      out.write("                \"cname\":$('#addname').val(),\r\n");
      out.write("                \"jiaoshi\":$('#addjs').val()\r\n");
      out.write("            },\r\n");
      out.write("            success : function(status) {\r\n");
      out.write("                location.href=\"clazz\";\r\n");
      out.write("            },\r\n");
      out.write("            error:function () {\r\n");
      out.write("                alert(\"添加失败,请重试!\")\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    }*/\r\n");
      out.write("</script>\r\n");
      out.write("<script src=\"https://cdnjs.cloudflare.com/ajax/libs/jquery.bootstrapvalidator/0.5.3/js/bootstrapValidator.js\"></script>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    $(function() {\r\n");
      out.write("        $(\"#addform\").bootstrapValidator({\r\n");
      out.write("            message: 'This value is not valid',\r\n");
      out.write("            feedbackIcons: {\r\n");
      out.write("                valid: 'glyphicon glyphicon-ok',\r\n");
      out.write("                invalid: 'glyphicon glyphicon-remove',\r\n");
      out.write("                validating: 'glyphicon glyphicon-refresh'\r\n");
      out.write("            },\r\n");
      out.write("            fields: {\r\n");
      out.write("                xuhao: {\r\n");
      out.write("                    message: '序号验证失败',\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '序号不能为空'\r\n");
      out.write("                        },\r\n");
      out.write("                        stringLength: {/*长度提示*/\r\n");
      out.write("                            min: 6,\r\n");
      out.write("                            max: 6,\r\n");
      out.write("                            message: '序号长度必须为6'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                cname: {\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '名称不能为空'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                jiaoshi: {\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '教室不能为空'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                thid:{\r\n");
      out.write("                    validators:{\r\n");
      out.write("                        notEmpty:{\r\n");
      out.write("                            message:'班主任不能为空'\r\n");
      out.write("                        },\r\n");
      out.write("                        callback: {\r\n");
      out.write("                            message: '必须选择一个班主任',\r\n");
      out.write("                            callback: function(value, validator) {\r\n");
      out.write("                                if(value == -1) {\r\n");
      out.write("                                    return false;\r\n");
      out.write("                                }else {\r\n");
      out.write("                                    return true;\r\n");
      out.write("                                }\r\n");
      out.write("                            }\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    })\r\n");
      out.write("    $(function() {\r\n");
      out.write("        $(\"#myform\").bootstrapValidator({\r\n");
      out.write("            message: 'This value is not valid',\r\n");
      out.write("            feedbackIcons: {\r\n");
      out.write("                valid: 'glyphicon glyphicon-ok',\r\n");
      out.write("                invalid: 'glyphicon glyphicon-remove',\r\n");
      out.write("                validating: 'glyphicon glyphicon-refresh'\r\n");
      out.write("            },\r\n");
      out.write("            fields: {\r\n");
      out.write("                xuhao: {\r\n");
      out.write("                    message: '序号验证失败',\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '序号不能为空'\r\n");
      out.write("                        },\r\n");
      out.write("                        stringLength: {/*长度提示*/\r\n");
      out.write("                            min: 6,\r\n");
      out.write("                            max: 6,\r\n");
      out.write("                            message: '序号长度必须为6'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                cname: {\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '名称不能为空'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                },\r\n");
      out.write("                jiaoshi: {\r\n");
      out.write("                    validators: {\r\n");
      out.write("                        notEmpty: {\r\n");
      out.write("                            message: '教室不能为空'\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("    })\r\n");
      out.write("</script>\r\n");
      out.write("\r\n");
      out.write("<!-- Google analytics script-->\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("    if(document.location.hostname == 'pratikborsadiya.in') {\r\n");
      out.write("        (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){\r\n");
      out.write("            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),\r\n");
      out.write("            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)\r\n");
      out.write("        })(window,document,'script','//www.google-analytics.com/analytics.js','ga');\r\n");
      out.write("        ga('create', 'UA-72504830-1', 'auto');\r\n");
      out.write("        ga('send', 'pageview');\r\n");
      out.write("    }\r\n");
      out.write("</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}