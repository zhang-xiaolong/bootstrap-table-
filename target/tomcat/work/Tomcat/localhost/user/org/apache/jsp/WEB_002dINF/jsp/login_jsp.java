/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.47
 * Generated at: 2018-10-20 11:01:04 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<title>登录 </title>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery_2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/front_2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/jquery.superslide_2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/js/common_2.js\" type=\"text/javascript\"></script>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/common_2.css\"/>\r\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/css/login_1.css\"/>\r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("\r\n");
      out.write("   function doAjax2(){\r\n");
      out.write("\r\n");
      out.write("        //获取表单数据(表单要有name属性,根据name获取)\r\n");
      out.write("        var param = $(\"#jvForm2\").serialize();\r\n");
      out.write("\r\n");
      out.write("        $.ajax({\r\n");
      out.write("            url:\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/log\",\r\n");
      out.write("            data:param,//传到服务器的参数\r\n");
      out.write("            type:\"post\",//请求的方式post|get\r\n");
      out.write("            dataType:\"text\",//返回值类型html|xml|text|json|script|jsonp\r\n");
      out.write("            cache:false,//浏览器是否缓存\r\n");
      out.write("            async:true,//是否异步提交\r\n");
      out.write("            success:function(data){//交互成功\r\n");
      out.write("                if(data==\"success\"){\r\n");
      out.write("                    //alert(\"登录成功\");\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                    location.href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/index\";\r\n");
      out.write("                    }else{alert(\"登录失败\");\r\n");
      out.write("                }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("            },\r\n");
      out.write("            error:function(){//交互失败\r\n");
      out.write("                alert(\"error\");\r\n");
      out.write("            }\r\n");
      out.write("        });\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    }\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("$(function() {\r\n");
      out.write("\t$(\"#jvForm\").validate();\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<div class=\"login-bg\">\r\n");
      out.write("\t<div class=\"w1170-center\">\r\n");
      out.write("        <div class=\"register-box login-box\" style=\"width:320px; height:350px; margin:30px 0; float:right;\">   \r\n");
      out.write("            <div class=\"register-nav\">\r\n");
      out.write("                <span>登录</span><div class=\"register-login\">没有账号，<a class=\"tc\" href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null, false));
      out.write("/register\">立即注册 ></a></div>\r\n");
      out.write("            </div> \r\n");
      out.write("            \r\n");
      out.write("            <form id=\"jvForm2\" action=\"#\" method=\"post\">\r\n");
      out.write("                <div class=\"inf-message\">\r\n");
      out.write("                \r\n");
      out.write("                \r\n");
      out.write("                <input type=\"hidden\" name=\"returnUrl\" value=\"/\"/>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"username-con\"><i></i><input id=\"username\" name=\"username\" class=\"required login-input\" type=\"text\" placeholder=\"用户名\"></div>\r\n");
      out.write("                <div class=\"password-con\"><i></i><input id=\"password\" name=\"password\" class=\"required password-input\" type=\"password\" placeholder=\"密码\"></div>\r\n");
      out.write("                <div class=\"login-rem clearfix\">\r\n");
      out.write("                    <div class=\"next-day\"><input type=\"checkbox\" class=\"login-checkbox\" value=\"true\" name=\"rememberMe\">下次自动登录</div>\r\n");
      out.write("                    <a href=\"/member/forgot_password.jspx\">忘记密码</a>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div align=\"center\" ><input type=\"button\" class=\"login\" name=\"login\" onclick=doAjax2()   style=\"width:80px ;height:40px;font-size: 25px;margin-top: 30px;\"  value=\"登  录\"/></div>\r\n");
      out.write("                    <div class=\"quick\">\r\n");
      out.write("                    <p>一键登录</p>\r\n");
      out.write("                    <div class=\"quick-list clearfix\">\r\n");
      out.write("                    \r\n");
      out.write("                        <a class=\"quick-qq\" id=\"qqLoginBtn\" title=\"用QQ账号登录\"></a>\r\n");
      out.write("                        <script type=\"text/javascript\" src=\"js/qc_loader.js\" data-appid=\"101158388\" data-redirecturi=\"http://demo2.jeecms.com/public_auth.jspx\"></script>\r\n");
      out.write("                     ");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                        <a class=\"quick-tx\" id=\"qqwebo_login_btn\" title=\"用腾讯微博账号登录\"></a>\r\n");
      out.write("                        <script type=\"text/javascript\" src=\"js/openjs.js\"></script>\r\n");
      out.write("                       ");
      out.write("\r\n");
      out.write("                    \r\n");
      out.write("                    \r\n");
      out.write("                        <a class=\"quick-sina\" id=\"wb_connect_btn\" title=\"用新浪微博账号登录\"></a>\r\n");
      out.write("                        <script src=\"js/wb.js\" type=\"text/javascript\" charset=\"utf-8\"></script>\r\n");
      out.write("                        <script type=\"text/javascript\">\r\n");
      out.write("                        WB2.anyWhere(function(W){\r\n");
      out.write("                        W.widget.connectButton({\r\n");
      out.write("                        id: \"wb_connect_btn\",\r\n");
      out.write("                        type: '3,2',\r\n");
      out.write("                        callback : {\r\n");
      out.write("                        login:function(o){\r\n");
      out.write("                        //登录成功之后执行\r\n");
      out.write("                        location=\"/public_auth.jspx\";\r\n");
      out.write("                        },\r\n");
      out.write("                        logout:function(){\r\n");
      out.write("                        //退出之后执行退出本地用户\r\n");
      out.write("                        location=\"/logout.jspx?returnUrl=/\";\r\n");
      out.write("                        }\r\n");
      out.write("                        }\r\n");
      out.write("                        });\r\n");
      out.write("                        });\r\n");
      out.write("                        </script>\r\n");
      out.write("                        <a href=\"/weixin_login.jspx\" class=\"quick-weixin\" title=\"微信账号登录\" ></a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </form>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("<div style=\"text-align:center; line-height:50px;\">\r\n");
      out.write("    Powered by JeeCms Copyright © 2007-2018 www.jeecms.com, All Rights Reserved\r\n");
      out.write("</div></body>\r\n");
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