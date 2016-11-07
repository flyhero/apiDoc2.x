package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<div class=\"navbar navbar-default\" id=\"navbar\" role=\"navigation\" style=\"border:1px solid green;\">\r\n");
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
      out.write("\t\t\t            <li><a href=\"#\"><span class=\"glyphicon glyphicon-user\"></span> ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ sessionScope.user.userName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></li> \r\n");
      out.write("\t\t\t            <li><a href=\"");
      out.print(request.getContextPath());
      out.write("/user/logout.do\"><span class=\"glyphicon glyphicon-log-out\"></span> 退出 &nbsp;&nbsp;&nbsp;&nbsp;</a></li> \r\n");
      out.write("\t\t\t        </ul> \r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>");
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
