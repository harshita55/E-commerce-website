package org.apache.jsp.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.cart.Cart;
import com.cart.CartItem;

public final class addcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=ISO-8859-1");
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
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\"/>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body marginheight=\"0\" marginwidth=\"0\" class=\"bg\"> \r\n");
      out.write("  <div align=\"center\">\r\n");
      out.write("<table width=\"1000\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"farn_bg\" >\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td valign=\"top\" align=\"center\">\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" class=\"cont\" align=\"left\" height=\"40\" width=\"736\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"5%\" align=\"center\"><br></td>\r\n");
      out.write("<td width=\"90%\" class=\"cat_1\" align=\"center\">Shopping-Cart  </td> \r\n");
      out.write("<td width=\"5%\" align=\"center\"><br></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("    ");
      com.cart.Cart crt = null;
      synchronized (session) {
        crt = (com.cart.Cart) _jspx_page_context.getAttribute("crt", PageContext.SESSION_SCOPE);
        if (crt == null){
          crt = new com.cart.Cart();
          _jspx_page_context.setAttribute("crt", crt, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("crt"), request);
      out.write("\r\n");
      out.write("        ");

        if(crt.getName()=="")
        {
        out.println("<div align='center'>Welcome</div>");
        }
        else
        {
        crt.setName(request.getParameter("name"));
        crt.setModel(request.getParameter("model"));
        session.setAttribute("price",request.getParameter("price"));
        crt.setDescription(request.getParameter("desc"));        
        crt.setImage(request.getParameter("image"));
        }
         
      out.write("\r\n");
      out.write("         \r\n");
      out.write("<table border=\"1\" cellpadding=\"0\" cellspacing=\"3\" class=\"cont\" align=\"left\" height=\"40\" width=\"736\" bgcolor=\"#FFFFFFF\">\r\n");
      out.write("<tr style=\"fontfont-size:17\" bgcolor=\"#EEDDFFBB\">\r\n");
      out.write("<td align=center colspan='2'><font size='+1'>Value successfully added into Cart</font></td>\r\n");
      out.write("</tr>\r\n");
      out.write("        ");

        ArrayList al=(ArrayList)application.getAttribute("cartdetail");
        CartItem ci=new CartItem();
        ci.setName(crt.getName());
        ci.setModel(crt.getModel());
        ci.setPrice(crt.getPrice());
        System.out.println(crt.getPrice()+"nnnnnnnnnnnnnnnnnnnnnnnnnnnn"+ci.getPrice());
        ci.setDescription(crt.getDescription());        
        ci.setImage(crt.getImage());
        ci.setQuantity(1);
        if(al==null)
        {
        al=new ArrayList();
        }
        al=crt.addtocart(ci,al);
        application.setAttribute("cartdetail",al);
         
      out.write("\r\n");
      out.write("    <tr >\r\n");
      out.write("        <td align=\"center\" width=\"30%\">\r\n");
      out.write("            <a href=\"index.jsp\"  class=\"cont\">Continue Shopping</a>\r\n");
      out.write("        </td>\r\n");
      out.write("\r\n");
      out.write("        <td align=\"center\" width=\"30%\">\r\n");
      out.write("        <a href=\"cart.jsp\" class=\"cont\">\r\n");
      out.write("        Show Cart\r\n");
      out.write("        </a>\r\n");
      out.write("        </td>\r\n");
      out.write("    </tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("<tr><td>&nbsp;</td></tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
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
