<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.dbconnection.Loadconnection"%>
<%@page import="com.oreilly.servlet.MultipartRequest,java.sql.*"%>
<%
   MultipartRequest m=new MultipartRequest(request,"C:\\Users\\Dell\\Documents\\NetBeansProjects\\fashionista\\web\\img",10*1024*1024);
   String image=m.getOriginalFileName("image");
    try
    {
        Connection con=Loadconnection.getConnection();
        PreparedStatement ps=con.prepareStatement("insert into product1(name,model,category,price,image,description) values(?,?,?,?,?,?)");
        ps.setString(1, m.getParameter("name"));
        ps.setString(2, m.getParameter("model"));
        ps.setString(3, m.getParameter("cat"));
        ps.setInt(4,Integer.parseInt(m.getParameter("price")));
        ps.setString(5, image);
        ps.setString(6, m.getParameter("desc"));
        
        int x=ps.executeUpdate();
        if(x>0)
        {
            out.println("success<br><a href='view.jsp'>view</a>");
        }
        
    }catch(Exception e)
    {
            out.println(e);
    }
%>