<jsp:useBean id="t2" class="com.vbean.RegBean"/>
<jsp:setProperty name="t2" property="*"/>
<%
    String str=t2.insert();
            if(str.equals("success"))
                response.sendRedirect("index.jsp");
            else
                response.sendRedirect("error.jsp");
%>