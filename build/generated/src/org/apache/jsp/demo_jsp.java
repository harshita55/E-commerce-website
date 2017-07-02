package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class demo_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\t\n");
      out.write("        <link rel=\"stylesheet\"  type=\"text/css\" href=\"css/style11.css\" />        \n");
      out.write("\t<script src=\"js/jquery-1.9.1.js\"></script>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("<button id=\"popup_window\" data-popup-target=\"#example-popup\">click it</button>\n");
      out.write("\n");
      out.write("<div id=\"example-popup\" class=\"popup\">\n");
      out.write("    <div class=\"popup-body\">\t<span class=\"popup-exit\"></span>\n");
      out.write("\n");
      out.write("        <div class=\"popup-content\">\n");
      out.write("            \t<h2 class=\"popup-title\">hello</h2>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("</div>\n");
      out.write("<div class=\"popup-overlay\"></div>\n");
      out.write("\n");
      out.write("<script type='text/javascript'>//<![CDATA[ \n");
      out.write("$(window).load(function(){\n");
      out.write("jQuery(document).ready(function ($) {\n");
      out.write("\n");
      out.write("    $('[data-popup-target]').click(function () {\n");
      out.write("        $('html').addClass('overlay');\n");
      out.write("        var activePopup = $(this).attr('data-popup-target');\n");
      out.write("        $(activePopup).addClass('visible');\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $(document).keyup(function (e) {\n");
      out.write("        if (e.keyCode == 27 && $('html').hasClass('overlay')) {\n");
      out.write("            clearPopup();\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $('.popup-exit').click(function () {\n");
      out.write("        clearPopup();\n");
      out.write("\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    $('.popup-overlay').click(function () {\n");
      out.write("        clearPopup();\n");
      out.write("    });\n");
      out.write("\n");
      out.write("    function clearPopup() {\n");
      out.write("        $('.popup.visible').addClass('transitioning').removeClass('visible');\n");
      out.write("        $('html').removeClass('overlay');\n");
      out.write("\n");
      out.write("        setTimeout(function () {\n");
      out.write("            $('.popup').removeClass('transitioning');\n");
      out.write("        }, 200);\n");
      out.write("    }\n");
      out.write("\n");
      out.write("});\n");
      out.write("});//]]>  \n");
      out.write("\n");
      out.write("</script>\n");
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
