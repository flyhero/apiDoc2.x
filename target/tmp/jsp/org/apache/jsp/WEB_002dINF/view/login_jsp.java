package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

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
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "static.jsp", out, false);
      out.write("\r\n");
      out.write("<title>登录</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-image: url(");
      out.print(request.getContextPath());
      out.write("/static/images/admin-login-bg.jpg)\">\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"navbar navbar-default\" id=\"navbar\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<div class=\"navbar-container\" id=\"navbar-container\">\r\n");
      out.write("\t\t\t\t<div class=\"navbar-header pull-left\">\r\n");
      out.write("\t\t\t\t\t<a href=\"#\" class=\"navbar-brand\">\r\n");
      out.write("\t\t\t\t\t\t<small>\r\n");
      out.write("\t\t\t\t\t\t\t<i class=\"icon-leaf\"></i>\r\n");
      out.write("\t\t\t\t\t\t\tflyapi接口管理系统 V1.0\r\n");
      out.write("\t\t\t\t\t\t</small>\r\n");
      out.write("\t\t\t\t\t</a><!-- /.brand -->\r\n");
      out.write("\t\t\t\t</div><!-- /.navbar-header -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<div class=\"navbar-header pull-right\" role=\"navigation\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav navbar-nav navbar-right\"> \r\n");
      out.write("\t\t\t            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/user/gotoRegister.do\"><span class=\"glyphicon glyphicon-log-in\"></span> 还没注册？来注册 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a></li> \r\n");
      out.write("\t\t\t        </ul> \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("  <div class=\"container\">\r\n");
      out.write("        <div class=\"row\">\r\n");
      out.write("            <!-- form: -->\r\n");
      out.write("            <section>\r\n");
      out.write("                <div class=\"col-lg-8 col-lg-offset-2\">\r\n");
      out.write("                    <div class=\"page-header\">\r\n");
      out.write("                        <h2>登录</h2>\r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                    <form id=\"defaultForm\" method=\"get\" class=\"form-horizontal\" action=\"login.do\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label class=\"col-lg-3 control-label\">用户名</label>\r\n");
      out.write("                            <div class=\"col-lg-5\">\r\n");
      out.write("                                <input type=\"text\" class=\"form-control\" name=\"userName\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <label class=\"col-lg-3 control-label\">密码</label>\r\n");
      out.write("                            <div class=\"col-lg-5\">\r\n");
      out.write("                                <input type=\"password\" class=\"form-control\" name=\"userPw\" />\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <div class=\"form-group\">\r\n");
      out.write("                            <div class=\"col-lg-9 col-lg-offset-3\">\r\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-primary\">登录</button>\r\n");
      out.write("                                <button type=\"button\" class=\"btn btn-info\" id=\"resetBtn\">重置</button>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </form>\r\n");
      out.write("                </div>\r\n");
      out.write("            </section>\r\n");
      out.write("            <!-- :form -->\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("    \r\n");
      out.write("    \r\n");
      out.write("<script type=\"text/javascript\">\r\n");
      out.write("$(document).ready(function() {\r\n");
      out.write("    // Generate a simple captcha\r\n");
      out.write("    function randomNumber(min, max) {\r\n");
      out.write("        return Math.floor(Math.random() * (max - min + 1) + min);\r\n");
      out.write("    };\r\n");
      out.write("    $('#captchaOperation').html([randomNumber(1, 100), '+', randomNumber(1, 200), '='].join(' '));\r\n");
      out.write("\r\n");
      out.write("    $('#defaultForm').bootstrapValidator({\r\n");
      out.write("//        live: 'disabled',\r\n");
      out.write("        message: '这个值是无效的',\r\n");
      out.write("        feedbackIcons: {\r\n");
      out.write("            valid: 'glyphicon glyphicon-ok',\r\n");
      out.write("            invalid: 'glyphicon glyphicon-remove',\r\n");
      out.write("            validating: 'glyphicon glyphicon-refresh'\r\n");
      out.write("        },\r\n");
      out.write("        fields: {\r\n");
      out.write("            userName: {\r\n");
      out.write("                message: '用户名是无效的',\r\n");
      out.write("                validators: {\r\n");
      out.write("                    notEmpty: {\r\n");
      out.write("                        message: '用户名是必须的，不能为空'\r\n");
      out.write("                    },\r\n");
      out.write("                    stringLength: {\r\n");
      out.write("                        min: 6,\r\n");
      out.write("                        max: 30,\r\n");
      out.write("                        message: '用户名必须大于6位小于30位'\r\n");
      out.write("                    },\r\n");
      out.write("                    regexp: {\r\n");
      out.write("                        regexp: /^[a-zA-Z0-9_\\.]+$/,\r\n");
      out.write("                        message: '用户名只能由字母、数字、点和下划线'\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            },\r\n");
      out.write("            userPw: {\r\n");
      out.write("                validators: {\r\n");
      out.write("                    notEmpty: {\r\n");
      out.write("                        message: '密码是必须的，不能为空'\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            },\r\n");
      out.write("            captcha: {\r\n");
      out.write("                validators: {\r\n");
      out.write("                    callback: {\r\n");
      out.write("                        message: 'Wrong answer',\r\n");
      out.write("                        callback: function(value, validator) {\r\n");
      out.write("                            var items = $('#captchaOperation').html().split(' '), sum = parseInt(items[0]) + parseInt(items[2]);\r\n");
      out.write("                            return value == sum;\r\n");
      out.write("                        }\r\n");
      out.write("                    }\r\n");
      out.write("                }\r\n");
      out.write("            }\r\n");
      out.write("        }\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    // Validate the form manually\r\n");
      out.write("    $('#validateBtn').click(function() {\r\n");
      out.write("        $('#defaultForm').bootstrapValidator('validate');\r\n");
      out.write("    });\r\n");
      out.write("\r\n");
      out.write("    $('#resetBtn').click(function() {\r\n");
      out.write("        $('#defaultForm').data('bootstrapValidator').resetForm(true);\r\n");
      out.write("    });\r\n");
      out.write("});\r\n");
      out.write("</script>\r\n");
      out.write("    \r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
