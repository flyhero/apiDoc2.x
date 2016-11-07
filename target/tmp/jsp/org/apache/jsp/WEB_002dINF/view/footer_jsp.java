package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write(".footer {\r\n");
      out.write("    border-top: 1px solid #e5e5e5;\r\n");
      out.write("    color: #777;\r\n");
      out.write("    padding: 5px 0;\r\n");
      out.write("    background-color: #f5f5f5;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("    </style>\r\n");
      out.write("<div class=\"footer .navbar-fixed-bottom\">\r\n");
      out.write("    <div class=\"container\">\r\n");
      out.write("        <div class=\"row footer-top\">\r\n");
      out.write("            <div class=\"col-sm-6 col-lg-6\">\r\n");
      out.write("                <h4></h4>\r\n");
      out.write("                <p>欢迎你加入，和我一起完善它.</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"col-sm-6  col-lg-5 col-lg-offset-1\">\r\n");
      out.write("                <div class=\"row about\">\r\n");
      out.write("                    <div class=\"col-xs-3\">\r\n");
      out.write("                        <h4>关于</h4>\r\n");
      out.write("                        <ul class=\"list-unstyled\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a href=\"#\">关于我们</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <div class=\"col-xs-3\">\r\n");
      out.write("                        <h4>联系方式</h4>\r\n");
      out.write("                        <ul class=\"list-unstyled\">\r\n");
      out.write("                            <li>\r\n");
      out.write("                                <a title=\"QQ\" href=\"\">358681286</a>\r\n");
      out.write("                            </li>\r\n");
      out.write("                        </ul>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <hr>\r\n");
      out.write("        <div class=\"row footer-bottom\">\r\n");
      out.write("            <ul class=\"list-inline text-center\">\r\n");
      out.write("                <li>flyapi接口管理系统V1.0 &nbsp;Copyright &copy;2016. 作者：王清飞 博客：<a target=\"_blank\" href=\"http://flyhero.top\">flyhero.top</a></li>\r\n");
      out.write("            </ul>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write("\r\n");
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
