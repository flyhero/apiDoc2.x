package org.apache.jsp.WEB_002dINF.view;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class interfaceDetial_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/WEB-INF/view/header.jsp");
  }

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
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">\r\n");
      out.write("<meta name=\"keywords\" content=\"\" />\r\n");
      out.write("<meta name=\"description\" content=\"\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\r\n");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "static.jsp", out, false);
      out.write("\r\n");
      out.write("<title>接口</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"navbar navbar-default\" id=\"navbar\" role=\"navigation\">\r\n");
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
      out.write("\r\n");
      out.write("\t\t<div class=\"container-fluid\">\r\n");
      out.write("\t<div class=\"row\">\r\n");
      out.write("\t\t<div class=\"col-md-2\">\r\n");
      out.write("\t\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"col-md-10\">\r\n");
      out.write("\t\t\t<ol class=\"breadcrumb\">\r\n");
      out.write("\t\t\t\t<li><i class=\"icon-home home-icon\"></i> <a href=\"#\">首页</a></li>\r\n");
      out.write("\t\t\t\t<li><a href=\"#\">我的项目</a></li>\r\n");
      out.write("\t\t\t\t<li class=\"#\">模块</li>\r\n");
      out.write("\t\t\t\t<li class=\"active\">接口</li>\r\n");
      out.write("\t\t\t</ol>\r\n");
      out.write("\t\t\t<a href=\"#\" data-toggle=\"modal\" data-target=\"#myModal\"><span class=\"label label-warning pull-right\">调试接口</span></a>\r\n");
      out.write("\t\t\t<div id=\"desc\">\r\n");
      out.write("\t\t\t\t<h3>1.功能说明</h3>\r\n");
      out.write("\t\t\t\t<h4>1.1接口名称</h4>\r\n");
      out.write("\t\t\t\t<blockquote>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.interName}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</blockquote>\r\n");
      out.write("\t\t\t\t<h4>1.2接口描述</h4>\r\n");
      out.write("\t\t\t\t<blockquote>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.interDes}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</blockquote>\r\n");
      out.write("\t\t\t\t<h4>1.3接口状态</h4>\r\n");
      out.write("\t\t\t\t<blockquote>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.status == 0 ? \"可用\" : \"不可用\"}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</blockquote>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t<h3>2.调用说明</h3>\r\n");
      out.write("\t\t\t\t<h4>2.1调用地址</h4>\r\n");
      out.write("\t\t\t\t<blockquote>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.interUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</blockquote>\r\n");
      out.write("\t\t\t\t<h4>2.2请求方式</h4>\r\n");
      out.write("\t\t\t\t<blockquote>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.method}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</blockquote>\r\n");
      out.write("\t\t\t\t<h4>2.3参数</h4>\r\n");
      out.write("\t\t\t\t<table class=\"table table-bordered\">\r\n");
      out.write("\t\t\t\t\t<thead>\r\n");
      out.write("\t\t\t\t\t\t<tr>\r\n");
      out.write("\t\t\t\t\t\t\t<th>名称</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th>是否必须</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th>类型</th>\r\n");
      out.write("\t\t\t\t\t\t\t<th>备注</th>\r\n");
      out.write("\t\t\t\t\t\t</tr>\r\n");
      out.write("\t\t\t\t\t</thead>\r\n");
      out.write("\t\t\t\t\t<tbody id=\"tbody\">\r\n");
      out.write("\t\t\t\t\t</tbody>\r\n");
      out.write("\t\t\t\t</table>\r\n");
      out.write("\t\t\t\t<h4>2.4请求参数示例</h4>\r\n");
      out.write("\t\t\t\t<div id=\"requestexam\" ></div>\r\n");
      out.write("\t\t\t\t<h4>2.5返回参数说明</h4>\r\n");
      out.write("\t\t\t\t<div id=\"responseparam\"></div>\r\n");
      out.write("\t\t\t\t<h4>2.6成功返回示例</h4>\r\n");
      out.write("\t\t\t\t<div id=\"trueexam\"></div>\r\n");
      out.write("\t\t\t\t<h4>2.6失败返回示例</h4>\r\n");
      out.write("\t\t\t\t<div id=\"falseexam\"></div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\t\t<!-- 模态框（Modal） -->\r\n");
      out.write("\t\t<div class=\"modal fade\" id=\"myModal\" tabindex=\"-1\" role=\"dialog\"\r\n");
      out.write("\t\t\taria-labelledby=\"myModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("\t\t\t<div class=\"modal-dialog\">\r\n");
      out.write("\t\t\t\t<div class=\"modal-content\">\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-header\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"close\" data-dismiss=\"modal\"\r\n");
      out.write("\t\t\t\t\t\t\taria-hidden=\"true\">×</button>\r\n");
      out.write("\t\t\t\t\t\t<h4 class=\"modal-title\" id=\"myModalLabel\">接口调试</h4>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-body\">\r\n");
      out.write("\t\t\t\t\t\t         <div class=\"input-group\">\r\n");
      out.write("\t\t\t\t                    <span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t                        <button class=\"btn btn-default\" type=\"button\">请求方式</button>\r\n");
      out.write("\t\t\t\t                    </span>\r\n");
      out.write("\t\t\t\t                     \t<select id=\"httpmethod\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"POST\">POST</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"GET\">GET</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t                </div></br>\r\n");
      out.write("\t\t\t\t                <div class=\"input-group\">\r\n");
      out.write("\t\t\t\t                    <span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t                        <button class=\"btn btn-default\" type=\"button\">请求地址</button>\r\n");
      out.write("\t\t\t\t                    </span>\r\n");
      out.write("\t\t\t\t                      <input id=\"httpUrl\" type=\"text\" class=\"form-control\" value=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.interUrl}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("\t\t\t\t                </div></br>\r\n");
      out.write("\t\t\t\t                <div class=\"input-group\">\r\n");
      out.write("\t\t\t\t                    <span class=\"input-group-btn\">\r\n");
      out.write("\t\t\t\t                        <button class=\"btn btn-default\" type=\"button\">参数传输方式</button>\r\n");
      out.write("\t\t\t\t                    </span>\r\n");
      out.write("\t\t\t\t                     \t<select id=\"jsonWay\" class=\"form-control\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"1\">JSON字符串(用于APP)</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t<option value=\"0\">JSON对象(多用于WEB)</option>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</select>\r\n");
      out.write("\t\t\t\t                </div></br>\r\n");
      out.write("\t\t\t\t                <div id=\"reqparam\" class=\"form-group\">\r\n");
      out.write("\t\t\t\t                <label for=\"name\">传输参数</label>\r\n");
      out.write("\t\t\t\t                </div>\r\n");
      out.write("\t\t\t\t\t\t\t  <div class=\"form-group\">\r\n");
      out.write("\t\t\t\t\t\t\t    <label for=\"name\">返回数据</label>\r\n");
      out.write("\t\t\t\t\t\t\t    <textarea id=\"responseE\" class=\"form-control\" rows=\"3\"></textarea>\r\n");
      out.write("\t\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div class=\"modal-footer\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" id=\"sendHttp\" class=\"btn btn-primary\">send</button>\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"btn btn-default\" data-dismiss=\"modal\">关闭</button>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t<!-- /.modal-content -->\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<!-- /.modal-dialog -->\r\n");
      out.write("\t\t</div></br></br>\r\n");
      out.write("\t\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<script lanuage=\"javascript\">\r\n");
      out.write("\t\t$(function() {\r\n");
      out.write("\t\t\tvar param = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.param}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\t\tvar myobj=eval(param);\r\n");
      out.write("\t\t\tfor(var i=0;i<myobj.length;i++){\r\n");
      out.write("\t\t\t\t$(\"#tbody\").append('<tr><td>'+myobj[i].name+'</td><td>'+myobj[i].isTrue+'</td><td>'+myobj[i].interType+'</td><td>'+myobj[i].des+'</td></tr>');\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\tvar requestexam = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.requestexam}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\t\tvar y1 = JSON.stringify(requestexam, null, 4);\r\n");
      out.write("\t\t\t$(\"#requestexam\").append(\r\n");
      out.write("\t\t\t\t\t\"<textarea class='form-control exam'>\" + y1 + \"</textarea>\");\r\n");
      out.write("\t\t\t$(\"#reqparam\").append(\r\n");
      out.write("\t\t\t\t\t\"<textarea id='httpparam' class='form-control' rows='3'>\" + y1 + \"</textarea>\");\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar responseparam = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.responseparam}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\t\tvar y2 = JSON.stringify(responseparam, null, 4);\r\n");
      out.write("\t\t\t$(\"#responseparam\").append(\"<textarea class='form-control exam'>\" + y2 + \"</textarea>\");\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar trueexam = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.trueexam}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\t\tvar y3 = JSON.stringify(trueexam, null, 4);\r\n");
      out.write("\t\t\t$(\"#trueexam\").append(\"<textarea class='form-control exam'>\" + y3 + \"</textarea>\");\r\n");
      out.write("\r\n");
      out.write("\t\t\tvar falseexam = ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${interface1.falseexam}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write(";\r\n");
      out.write("\t\t\tvar y4 = JSON.stringify(falseexam, null, 4);\r\n");
      out.write("\t\t\t$(\"#falseexam\").append(\"<textarea class='form-control exam'>\" + y4 + \"</textarea>\");\r\n");
      out.write(" \t\t\t$('.exam').each(\r\n");
      out.write("\t\t\t\t\tfunction() {\r\n");
      out.write("\t\t\t\t\t\tthis.setAttribute('style', 'height:'\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+ (this.scrollHeight)\r\n");
      out.write("\t\t\t\t\t\t\t\t\t\t+ 'px;overflow-y:hidden;');\r\n");
      out.write("\t\t\t\t\t}); \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(\"#sendHttp\").click(function() {\r\n");
      out.write("\t\t\t\tvar httpmethod=$(\"#httpmethod\").val();\r\n");
      out.write("\t\t\t\tvar httpUrl=$(\"#httpUrl\").val();\r\n");
      out.write("\t\t\t\tvar httpparam=$(\"#httpparam\").val();\r\n");
      out.write("\t\t\t\tvar jsonWay=$(\"#jsonWay\").val();\r\n");
      out.write("\t \t\t\tif(httpmethod != '' && httpUrl !=''&& httpparam !=''){\r\n");
      out.write("\t\t \t\t\t$.ajax({\r\n");
      out.write("\t\t \t\t\t\t type: 'POST',\r\n");
      out.write("\t\t \t\t\t\t url: \"../interface/testHttp.do\",\r\n");
      out.write("\t\t \t\t\t\t dataType: \"json\",\r\n");
      out.write("\t\t \t\t\t\t data: {\r\n");
      out.write("\t\t \t\t\t\t\t\"method\":httpmethod,\r\n");
      out.write("\t\t \t\t\t\t\t\"url\":httpUrl,\r\n");
      out.write("\t\t \t\t\t\t\t\"param\":httpparam,\r\n");
      out.write("\t\t \t\t\t\t\t\"jsonWay\":jsonWay\r\n");
      out.write("\t\t \t\t\t\t  },\r\n");
      out.write("\t\t \t\t\t\t success: function(data){\r\n");
      out.write("\t\t \t\t\t\t\t if(data.msg=='success'){\r\n");
      out.write("\t\t \t\t\t\t\t\t $(\"#responseE\").val(data.result);\r\n");
      out.write("\t\t \t\t\t\t\t }else{\r\n");
      out.write("\t\t \t\t\t\t\t\talert(\"返回失败！\"); \r\n");
      out.write("\t\t \t\t\t\t\t }\r\n");
      out.write("\t\t \t\t\t\t\t \r\n");
      out.write("\t\t                  }\r\n");
      out.write("\t\t \t\t\t\t  \r\n");
      out.write("\t\t \t\t\t\t});\r\n");
      out.write("\t \t\t\t}else{\r\n");
      out.write("\t \t\t\t\talert(\"信息不能为空！\");\r\n");
      out.write("\t \t\t\t}\r\n");
      out.write("\r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t});\r\n");
      out.write("\t</script>\r\n");
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