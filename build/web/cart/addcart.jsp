<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
  </head>
  <body marginheight="0" marginwidth="0" class="bg"> 
  <div align="center">
<table width="1000"  border="0" cellspacing="0" cellpadding="0" class="farn_bg" >

<tr>
<td>
<table>
<tr>
<td valign="top" align="center">
<table>
<tr>
<td>
<table border="0" cellpadding="0" cellspacing="3" class="cont" align="left" height="40" width="736">
<tr>
<td width="5%" align="center"><br></td>
<td width="90%" class="cat_1" align="center">Shopping-Cart  </td> 
<td width="5%" align="center"><br></td>
</tr>
</table>
</td>
</tr>
<tr>
<td>
    <jsp:useBean id="crt" class="com.cart.Cart" scope="session"/>
    <jsp:setProperty name="crt" property="*" />
        <%
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
         %>
         
<table border="1" cellpadding="0" cellspacing="3" class="cont" align="left" height="40" width="736" bgcolor="#FFFFFFF">
<tr style="fontfont-size:17" bgcolor="#EEDDFFBB">
<td align=center colspan='2'><font size='+1'>Value successfully added into Cart</font></td>
</tr>
        <%
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
         %>
    <tr >
        <td align="center" width="30%">
            <a href="index.jsp"  class="cont">Continue Shopping</a>
        </td>

        <td align="center" width="30%">
        <a href="cart.jsp" class="cont">
        Show Cart
        </a>
        </td>
    </tr>




</table>

</td>
</tr>


</table>
</td>
</tr>




<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>
<tr><td>&nbsp;</td></tr>









</table>

</td>
</tr>
</table>


</div>

 
  </body>
</html>
