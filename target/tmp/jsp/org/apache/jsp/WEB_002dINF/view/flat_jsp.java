package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class flat_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"utf-8\">\r\n");
      out.write("<title>Flat UI - Free Bootstrap Framework and Theme</title>\r\n");
      out.write("<meta name=\"description\"\r\n");
      out.write("\tcontent=\"Flat UI Kit Free is a Twitter Bootstrap Framework design and Theme, this responsive framework includes a PSD and HTML version.\" />\r\n");
      out.write("<meta name=\"viewport\"\r\n");
      out.write("\tcontent=\"width=1000, initial-scale=1.0, maximum-scale=1.0\">\r\n");
      out.write("<link rel=\"shortcut icon\" href=\"img/favicon.ico\">\r\n");
      out.write("    <!-- Loading Flat UI -->\r\n");
      out.write("    <link href=\"");
      out.print(request.getContextPath());
      out.write("/static/flatui/css/flat-ui.css\" rel=\"stylesheet\">\r\n");
      out.write("    <link href=\"");
      out.print(request.getContextPath());
      out.write("/static/flatui/css/demo.css\" rel=\"stylesheet\">\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath());
      out.write("/static/flatui/js/flat-ui.min.js\"></script>\r\n");
      out.write("    <script src=\"");
      out.print(request.getContextPath());
      out.write("/static/table/jquery.min.js\"></script>\r\n");
      out.write("    <script type=\"text/javascript\" src=\"");
      out.print(request.getContextPath());
      out.write("/static/bootstrapvalidator/js/bootstrapValidator.js\"></script>\r\n");
      out.write("    <link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"");
      out.print(request.getContextPath());
      out.write("/static/table/bootstrap/css/bootstrap.min.css\">\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"");
      out.print(request.getContextPath());
      out.write("/static/bootstrapvalidator/css/bootstrapValidator.css\"/>\r\n");
      out.write("\t<script\r\n");
      out.write("\tsrc=\"");
      out.print(request.getContextPath());
      out.write("/static/table/bootstrap/js/bootstrap.min.js\"></script>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t\t<div>\r\n");
      out.write("\t\t\t<h5 class=\"demo-logo\">&nbsp;FlyApi&nbsp;接口管理系统</h5>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<!-- /demo-headline -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"login\">\r\n");
      out.write("\t\t\t<div class=\"login-screen\">\r\n");
      out.write("\t\t\t\t<div class=\"login-icon\">\r\n");
      out.write("\t\t\t\t\t<img\r\n");
      out.write("\t\t\t\t\t\tsrc=\"");
      out.print(request.getContextPath());
      out.write("/static/flatui/img/login/icon.png\"\r\n");
      out.write("\t\t\t\t\t\talt=\"Welcome to Mail App\" />\r\n");
      out.write("\t\t\t\t\t<h4>\r\n");
      out.write("\t\t\t\t\t\tWelcome to <small>FlyApi</small>\r\n");
      out.write("\t\t\t\t\t</h4>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t\t<div class=\"login-form\">\r\n");
      out.write("\t\t\t\t\t <form id=\"defaultForm\" method=\"get\"  action=\"login.do\">\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("<!-- \t\t\t\t\t\t<div class=\"input-group\">\r\n");
      out.write("\t\t\t\t\t\t  <span class=\"input-group-addon\">@</span>\r\n");
      out.write("\t\t\t\t\t\t  <input type=\"text\" class=\"form-control\" placeholder=\"Prepend\" />\r\n");
      out.write("\t\t\t\t\t\t</div> --> \r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" class=\"form-control login-field\" \r\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"Enter your name\" name=\"userName\" /> \r\n");
      out.write("\t\t\t\t\t\t\t\t<label class=\"login-field-icon fui-user \" for=\"userName\"></label>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t<input type=\"password\" class=\"form-control login-field\"\r\n");
      out.write("\t\t\t\t\t\t\t\tplaceholder=\"Password\" name=\"userPw\" /> <label\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"login-field-icon fui-lock\" for=\"userPw\"></label>\r\n");
      out.write("\t\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t\t<button class=\"btn btn-primary btn-lg btn-block\" type=\"submit\">登&nbsp;&nbsp;录</button>\r\n");
      out.write("\t\t\t\t\t\t<a class=\"login-link\" href=\"#\">还没注册？前去注册</a>\r\n");
      out.write("\t\t\t\t\t\t</form>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- /container -->\r\n");
      out.write("\r\n");
      out.write("\t<footer>\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-2\">\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /col-xs-7 -->\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-8\"></br>\r\n");
      out.write("\t\t\t\t\t<ul class=\"list-inline text-center\">\r\n");
      out.write("\t\t                <li>flyapi接口管理系统V1.0 &nbsp;Copyright &copy;2016. 作者：王清飞 博客：<a target=\"_blank\" href=\"http://flyhero.top\">flyhero.top</a></li>\r\n");
      out.write("\t\t            </ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<div class=\"col-xs-2\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</footer>\r\n");
      out.write("\r\n");
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
      out.write("});\r\n");
      out.write("</script>\r\n");
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
