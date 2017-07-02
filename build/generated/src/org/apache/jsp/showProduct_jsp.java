package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class showProduct_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\t\n");
      out.write("<link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"stylesheet\"  type=\"text/css\" href=\"css/style11.css\" />        \n");
      out.write("\t<script src=\"js/jquery-1.9.1.js\"></script>\n");
      out.write("    \n");
      out.write("<link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("<link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("   \n");
      out.write(" <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("    \n");
      out.write("<link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("\t\n");
      out.write("<link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("\t\n");
      out.write("<link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("<link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("    \n");
      out.write("<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    \n");
      out.write("<link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("   \n");
      out.write(" <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    \n");
      out.write("<link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("\t\t\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("\t\t<meta name=\"description\" content=\"\">\n");
      out.write("\t\t<!--[if ie]><meta content='IE=8' http-equiv='X-UA-Compatible'/><![endif]-->\n");
      out.write("\t\t<!-- bootstrap -->\n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap.min.css\" rel=\"stylesheet\">      \n");
      out.write("\t\t<link href=\"bootstrap/css/bootstrap-responsive.min.css\" rel=\"stylesheet\">\t\t\n");
      out.write("\t\t<link href=\"themes/css/bootstrappage.css\" rel=\"stylesheet\"/>\n");
      out.write("\t\t\n");
      out.write("\t\t<!-- global styles -->\n");
      out.write("\t\t<link href=\"themes/css/flexslider.css\" rel=\"stylesheet\"/>\n");
      out.write("\t\t<link href=\"themes/css/main.css\" rel=\"stylesheet\"/>\n");
      out.write("\n");
      out.write("\t\t<!-- scripts -->\n");
      out.write("\t\t<script src=\"themes/js/jquery-1.7.2.min.js\"></script>\n");
      out.write("\t\t<script src=\"bootstrap/js/bootstrap.min.js\"></script>\t\t\t\t\n");
      out.write("\t\t<script src=\"themes/js/superfish.js\"></script>\t\n");
      out.write("\t\t<script src=\"themes/js/jquery.scrolltotop.js\"></script>\n");
      out.write("\t\n");
      out.write("<section>\n");
      out.write("    \n");
      out.write("\t\t\n");
      out.write("\t\t\t\n");
      out.write("\n");
      out.write(" ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "leftmenu.jsp", out, false);
      out.write("\t\t\t\t\n");
      out.write("\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("<div class=\"col-sm-9 padding-right\"/>\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\n");
      out.write("<div class=\"features_items\"><!--features_items-->\n");
      out.write("\t\t\t\t\t\t<h2 class=\"title text-center\">Features Items</h2>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("                                                            ");

                                                                try {
                                                                    Connection c=com.dbconnection.Loadconnection.getConnection();
                                                                     PreparedStatement ps = c.prepareStatement("select * from product2 where name=? and gen=?");
                                                                     ps.setString(1,request.getParameter("name"));
                                                                     ps.setString(2,request.getParameter("gen"));
                                                                     ResultSet rs=ps.executeQuery();
                                                                     while(rs.next())
                                                                     {
      out.write("\n");
      out.write("                                                                     \n");
      out.write("                                                                     <div class=\"block\">\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<h4 class=\"title\"><strong>Best</strong> Seller</h4>\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t<ul class=\"small-product\">\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"product-overlay\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<div class=\"overlay-content\">\n");
      out.write("\t\t\t\t\t\t\t\t\t  <a href=\"cart/addcart.jsp?name=");
      out.print(rs.getString("name"));
      out.write("&price=");
      out.print(rs.getInt("price"));
      out.write("&description=");
      out.print(rs.getString("description"));
      out.write("&image=");
      out.print(rs.getString("image"));
      out.write("\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Add to cart</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("                                                                    \t<a>");
      out.print(rs.getString("price") );
      out.write("</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\" title=\"Luctus quam ultrices rutrum\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"themes/images/ladies/4.jpg\" alt=\"Luctus quam ultrices rutrum\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\">");
      out.print(rs.getString("brand") );
      out.write("</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("\t\t\t\t\t\t\t\t<li>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\" title=\"Fusce id molestie massa\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<img src=\"themes/images/ladies/5.jpg\" alt=\"Fusce id molestie massa\">\n");
      out.write("\t\t\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<a href=\"#\">");
      out.print(rs.getString("size") );
      out.write("</a>\n");
      out.write("\t\t\t\t\t\t\t\t</li>   \n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("                                                                  \n");
      out.write("                                                     ");
}
                                                                }
                                                                catch(Exception e)
                                                                {
                                                                    out.println(e);
                                                                }
                                                                
      out.write("\n");
      out.write("                                                                \n");
      out.write("                                               \n");
      out.write("                                       \n");
      out.write("                                  </div>\t\n");
      out.write("</section>");
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
