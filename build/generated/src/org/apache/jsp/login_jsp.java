package org.apache.jsp;

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
      out.write("<head>\n");
      out.write("    <meta charset=\"utf-8\">\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    <meta name=\"description\" content=\"\">\n");
      out.write("    <meta name=\"author\" content=\"\">\n");
      out.write("    <title>Login | FaShi0nista</title>\n");
      out.write("    <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/prettyPhoto.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/price-range.css\" rel=\"stylesheet\">\n");
      out.write("    <link href=\"css/animate.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"css/main.css\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"css/responsive.css\" rel=\"stylesheet\">\n");
      out.write("    <!--[if lt IE 9]>\n");
      out.write("    <script src=\"js/html5shiv.js\"></script>\n");
      out.write("    <script src=\"js/respond.min.js\"></script>\n");
      out.write("    <![endif]-->       \n");
      out.write("    <link rel=\"shortcut icon\" href=\"images/ico/favicon.ico\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\" href=\"images/ico/apple-touch-icon-144-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\" href=\"images/ico/apple-touch-icon-114-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\" href=\"images/ico/apple-touch-icon-72-precomposed.png\">\n");
      out.write("    <link rel=\"apple-touch-icon-precomposed\" href=\"images/ico/apple-touch-icon-57-precomposed.png\">\n");
      out.write("</head><!--/head-->\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\t\n");
      out.write("    <!--/header-->\n");
      out.write("\t\n");
      out.write("    <section id=\"form\" style=\"margin-top: 0px;\"><!--form-->\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-sm-4 col-sm-offset-1\">\n");
      out.write("\t\t\t\t\t<div class=\"login-form\"><!--login form-->\n");
      out.write("                                            ");

                                            String msg=(String)request.getAttribute("msg");
                                            
                                            
      out.write("\n");
      out.write("\t\t\t\t\t\t<h2>Login to your account</h2>");

                                                if(msg==null)
                                                {  }
                                                else
                                                {
      out.write("\n");
      out.write("                                                <span style=\"color:red;\">");
      out.print(msg);
      out.write("</span>   \n");
      out.write("                                                ");
}
                                                
      out.write("\n");
      out.write("                                                <form action=\"lbean.jsp\" method=\"post\">\n");
      out.write("                                                    <input type=\"email\" placeholder=\"Email Address\" name=\"email\" required/>\n");
      out.write("                                                    <input type=\"password\" placeholder=\"Password\" name=\"pass\" required/>\n");
      out.write("\t\t\t\t\t\t\t\n");
      out.write("                                                    <button type=\"submit\" class=\"btn btn-default\">Login</button><br><br>\n");
      out.write("                                                    \n");
      out.write("                                                </form>\n");
      out.write("                                                <a href=\"forgetpassword.jsp\"> <span>\n");
      out.write("                                                        <button type=\"submit\" style=\" background: #FE980F;\n");
      out.write("                                                        border: medium none;\n");
      out.write("                                                        border-radius: 0;\n");
      out.write("                                                        color: #FFFFFF;\n");
      out.write("                                                        display: block;\n");
      out.write("                                                        font-family: 'Roboto', sans-serif;\n");
      out.write("                                                        padding: 6px 25px;\"class=\"btn btn-default\">Forget Password</button>\n");
      out.write("                                                                               </span>\n");
      out.write("                                                </a>\n");
      out.write("                                               \n");
      out.write("\t\t\t\t\t</div><!--/login form-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-1\">\n");
      out.write("\t\t\t\t\t<!--<h2 class=\"or\">OR</h2>-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-sm-4\">\n");
      out.write("\t\t\t\t\t<div class=\"signup-form\"><!--sign up form-->\n");
      out.write("\t\t\t\t\t\t<h2>New User Signup!</h2>\n");
      out.write("                                                <form action=\"rbean.jsp\" method=\"post\">\n");
      out.write("                                                    <input type=\"text\" placeholder=\"Name\" name=\"username\" required/>\n");
      out.write("                                                    <input type=\"email\" placeholder=\"Email Address\" name=\"email\" required/>\n");
      out.write("                                                    <input type=\"password\" placeholder=\"Password\" name=\"pass\" required/>\n");
      out.write("                                                    <input type=\"text\" pattern=\"[0-9]{10}\" maxlength=\"10\" placeholder=\"Enter contact number\" name=\"mobile\" required/>\n");
      out.write("\t\t\t\t\t\t\t<button type=\"submit\" class=\"btn btn-default\">Signup</button>\n");
      out.write("                                                    <!--  <button type=\"button\" class=\"btn btn-default\">cancel</button> -->\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div><!--/sign up form-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</section><!--/form-->\n");
      out.write("\t\n");
      out.write("\t\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("<!--/Footer-->\n");
      out.write("\t\n");
      out.write("\n");
      out.write("  \n");
      out.write("    <script src=\"js/jquery.js\"></script>\n");
      out.write("\t<script src=\"js/price-range.js\"></script>\n");
      out.write("    <script src=\"js/jquery.scrollUp.min.js\"></script>\n");
      out.write("\t<script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("    <script src=\"js/jquery.prettyPhoto.js\"></script>\n");
      out.write("    <script src=\"js/main.js\"></script>\n");
      out.write("</body>\n");
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
