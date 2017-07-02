package org.apache.jsp.cart;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.*;
import com.cart.Cart;
import com.cart.CartItem;

public final class showcart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\"/>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write(".styled-button-9 {\r\n");
      out.write("\tbackground:#00A0D1;\r\n");
      out.write("\tbackground:-moz-linear-gradient(top,#00A0D1 0%,#008DB8 100%);\r\n");
      out.write("\tbackground:-webkit-gradient(linear,left top,left bottom,color-stop(0%,#00A0D1),color-stop(100%,#008DB8));\r\n");
      out.write("\tbackground:-webkit-linear-gradient(top,#00A0D1 0%,#008DB8 100%);\r\n");
      out.write("\tbackground:-o-linear-gradient(top,#00A0D1 0%,#008DB8 100%);\r\n");
      out.write("\tbackground:-ms-linear-gradient(top,#00A0D1 0%,#008DB8 100%);\r\n");
      out.write("\tbackground:linear-gradient(top,#00A0D1 0%,#008DB8 100%);\r\n");
      out.write("\tfilter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#1A358E',endColorstr='#486CE0',GradientType=0);\r\n");
      out.write("\tpadding:8px 20px;\r\n");
      out.write("\tcolor:#cfebf3;\r\n");
      out.write("\tfont-family:'Helvetica Neue',sans-serif;\r\n");
      out.write("\tfont-size:13px;\r\n");
      out.write("\tborder-radius:40px;\r\n");
      out.write("\t-moz-border-radius:40px;\r\n");
      out.write("\t-webkit-border-radius:40px;\r\n");
      out.write("\tborder:1px solid #095B7E\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\t\r\n");
      out.write("\t\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body marginheight=\"0\" marginwidth=\"0\" class=\"bg\"> \r\n");
      out.write("    \r\n");
      out.write("<div align=\"center\">\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("<table width=\"1000\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"farn_bg\" >\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td valign=\"top\" align=\"center\">\r\n");
      out.write("<table>\r\n");
      out.write("<tr>\r\n");
      out.write("<td>\r\n");
      out.write("\r\n");
      out.write("<table border=\"0\" cellpadding=\"0\" cellspacing=\"3\" class=\"cont\" align=\"left\" height=\"40\" width=\"736\">\r\n");
      out.write("<tr>\r\n");
      out.write("<td width=\"5%\" align=\"center\"><br></td>\r\n");
      out.write("<td width=\"90%\" class=\"cat_1\" align=\"center\">Shopping-Cart  </td> \r\n");
      out.write("<td width=\"5%\" align=\"center\"></td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("\r\n");
      out.write("<tr>\r\n");
      out.write("<td align='center'>\r\n");
      out.write("\r\n");
      out.write("    ");
      com.cart.Cart crt = null;
      synchronized (session) {
        crt = (com.cart.Cart) _jspx_page_context.getAttribute("crt", PageContext.SESSION_SCOPE);
        if (crt == null){
          crt = new com.cart.Cart();
          _jspx_page_context.setAttribute("crt", crt, PageContext.SESSION_SCOPE);
        }
      }
      out.write('\r');
      out.write('\n');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("crt"), request);
      out.write("\r\n");
      out.write("\r\n");

if(crt.getName()=="")
{
out.println("<div align='center'>Welcome</div>");
}


ArrayList al=(ArrayList)application.getAttribute("cartdetail");

if(al==null)
{
//out.println("Please add the material in the cart");
out.println("<font size='+1' color='#FGHTRE'>Cart is Empty</font>");

}
 
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<table border=\"1\" cellpadding=\"0\" cellspacing=\"3\" class=\"cont\" align=\"left\" height=\"40\" width=\"736\" bgcolor=\"#DDFFEEBB\">\r\n");
      out.write("<tr style=\"fontfont-size:17\" bgcolor=\"#EEDDFFBB\">\r\n");
      out.write("                    \r\n");
      out.write("                    <td align=\"center\"><font size='+1'>Image</font></td>\r\n");
      out.write("                    <td align=\"center\"><font size='+1'>Product Name</font></td align=\"center\">\r\n");
      out.write("                    <td align=\"center\"><font size='+1'>Model</font></td>\r\n");
      out.write("                    <td align=\"center\"> <font size='+1'>Quantity</font></td>\t\r\n");
      out.write("                    <td align=\"center\"><font size='+1'>Price</font></td>\r\n");
      out.write("                    <td align=\"center\"><font size='+1'>Total</font></td>\r\n");
      out.write("\t \t <td align=\"center\"><font size='+1'>Action</font></td></tr>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");


Iterator it=al.iterator();
int i=0;
double grant_total=0.0;
out.println("<form action='updatecart.jsp'>");
while(it.hasNext())
{
	

	CartItem c=(CartItem)it.next();
	
	i++;
	out.println("<tr>");
	out.println("<input type='hidden' name='action' value="+i+">");
        
        out.println("<td align='center'><img src='../images/"+c.getImage()+"' style='height:50px;width:50px;'/></td>");
	out.println("<td align='center'>"+c.getName()+"</td>");
	out.println("<td align='center'>"+c.getModel()+"</td>");
        out.println("<td align='center'><input type='text' name='quantity' value='"+c.getQuantity()+"' align='middle'/></td>");	
	out.println("<td align='center'>"+c.getPrice()+"</td>");
	
	
	double total=c.getPrice()*c.getQuantity();
	
	grant_total+=total;
	
	out.println("<td align='center'>"+total+"</td>");
	
	out.println("<td align='center'><a href='removecart.jsp?index="+i+"' class='best'><img src='images/remove.jpeg' height='15' width='15' class='best' border='0'/><Font color='RED' size='+1' >Remove</font></td>");
	
	out.println("</tr>");
}

out.println("<tr><td colspan='5' align='center'><font size=+2 color='#BFRZEE'> Grant Total </font></td><td colspan='3' align='center'><font size=+2 color='#BFRZEE'>"+grant_total+"</font></td></tr>");

out.println("<tr bgcolor='#BBDEDE'>");
out.println("<td colspan='4' align='center'><input type='submit' value='Update-Cart' class='styled-button-9'/> </td>");
out.println("<td colspan='4' align='center'> <a href='conformaddress.jsp' border='1' ><input type='button' value='Order-Now' class='styled-button-9'/> </a></td>");
out.println("</tr>");
out.println("</form>");





 
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
      out.write("\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</td>\r\n");
      out.write("</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</div>\r\n");
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
