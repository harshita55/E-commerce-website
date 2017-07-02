package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class AddProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" <section id=\"form\"><!--form-->\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-4 col-sm-offset-1\">\n");
      out.write("\t\t\t\t\t<div class=\"login-form\" ><!--login form-->\n");
      out.write("                                                <form action=\"productBean.jsp\" method=\"post\" enctype=\"multipart/form-data\" >\n");
      out.write("                                                     <h3>ADD PRODUCT </h3>\n");
      out.write("                                                       <input type=\"text\" name=\"name\" placeholder=\"MODEL\" required/>\n");
      out.write("                                                       <input type=\"text\" name=\"size\" placeholder=\"SIZE\" required/>\n");
      out.write("                                                        <input type=\"text\" name=\"price\" placeholder=\"PRICE\" required/>\n");
      out.write("                                                         <input type=\"text\" name=\"discount\" placeholder=\"DISCOUNT\"/>\n");
      out.write("                                                        <span>\n");
      out.write("                                                            <label><input type=\"radio\" name=\"gen\" value=\"men\"> MEN</label>\n");
      out.write("                                                        </span>\n");
      out.write("                                                        <span>\n");
      out.write("                                                            <label><input type=\"radio\" name=\"gen\" value=\"women\"> WOMEN</label>\n");
      out.write("                                                        </span>\n");
      out.write("                                                                         <span>\n");
      out.write("                                                                            <label><input type=\"radio\" name=\"gen\" value=\"kids\"> kids</label>\n");
      out.write("                                                        </span>\n");
      out.write("                                                        <span>\n");
      out.write("                                                            <label><input type=\"radio\" name=\"gen\" value=\"digital\"> DIGITAL</label>\n");
      out.write("                                                        </span>\n");
      out.write("\n");
      out.write("                                                        <input type=\"text\" name=\"brand\" placeholder=\"BRAND\" required/>\n");
      out.write("                                                        <input type=\"text\" name=\"shortdesc\" placeholder=\"SHORT DESCRIPTION\" required/>\n");
      out.write("                                                        <div class=\"form-group col-md-12\">\n");
      out.write("\t\t\t\t                <textarea name=\"description\" required=\"required\"  class=\"form-control\" rows=\"2\" placeholder=\"DESCRIPTION\"  ></textarea>\n");
      out.write("\t\t\t\t            </div>\n");
      out.write("\t\t\t\t\t\t\t \n");
      out.write("                                                         <input type=\"file\" name=\"image\" required/>\n");
      out.write("                                                        <input type=\"submit\" value=\"ADD PRODUCT\" style=\" background: #FE980F;\n");
      out.write("                                                             border: medium none;\n");
      out.write("                                                             \n");
      out.write("                                                             border-radius: 0;\n");
      out.write("                                                             color: #FFFFFF;\n");
      out.write("                                                             text-align: center;\n");
      out.write("                                                              display: block;\n");
      out.write("                                                                 font-family: 'Roboto', sans-serif;\n");
      out.write("                                                                 padding: 6px 25px;\" class=\"btn btn-default\"/>\n");
      out.write("                                                          <input type=\"button\" value=\"CANCEL\" style=\" background: #FE980F;\n");
      out.write("                                                            border: medium none;\n");
      out.write("                                                            border-radius: 0;\n");
      out.write("                                                            color: #FFFFFF;\n");
      out.write("                                                             text-align: center;\n");
      out.write("                                                            display: block;\n");
      out.write("                                                            font-family: 'Roboto', sans-serif;\n");
      out.write("                                                            padding: 6px 25px;\" class=\"btn btn-defaul\"/> \n");
      out.write("                                                     </form>\n");
      out.write("                                        </div>\n");
      out.write("                                </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("    </section>\n");
      out.write("\t");
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
