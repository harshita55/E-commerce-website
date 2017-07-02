<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.cart.Cart"%>
<%@page import="com.cart.CartItem"%>

<jsp:useBean id="update" class="com.cart.Cart"/>
   <jsp:setProperty name="update" property="*"/>
   
    <% 
    try
    {
		String str=request.getParameter("index");  
		int index=Integer.parseInt(str);
		ArrayList al=(ArrayList)application.getAttribute("cartdetail");
		
		al=update.removecart(index-1,al);
		
		application.setAttribute("cartdetail",al);
		
		response.sendRedirect("../cart.jsp");
		}
		catch(Exception e)
		{
		out.println(e);
		}
    %>
