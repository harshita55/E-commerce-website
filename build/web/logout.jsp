<jsp:useBean id="t1" class="com.vbean.LoginBean" scope="session"/>
<%
session.invalidate();
response.sendRedirect("index.jsp");

%>