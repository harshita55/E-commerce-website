


   <%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="t2" class="com.vbean.checkbean"/>
<jsp:setProperty name="t2" property="*"/>

<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*,javax.mail.internet.*"%>

<%!
 String name="";
 String to="";
%>
<%
     String str=t2.insert();
            if(str.equals("error"))
                response.sendRedirect("error.jsp");
            else
            { 
    to=request.getParameter("email");
   
    try
    {
    Connection c=Loadconnection.getConnection();
    PreparedStatement ps = c.prepareStatement("select * from checkout where email=?");
    ps.setString(1,to);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        name=rs.getString("name"); 
    }
    } catch(Exception e1)
            {out.println(e1);
            }


  Properties props = new Properties();
  props.put("mail.smtp.host", "smtp.gmail.com");
  props.put("mail.smtp.socketFactory.port", "465");
  props.put("mail.smtp.socketFactory.class",
        	"javax.net.ssl.SSLSocketFactory");
  props.put("mail.smtp.auth", "true");
  props.put("mail.smtp.port", "465");
 
  Session session1 = Session.getInstance(props,
   new javax.mail.Authenticator() {
   protected PasswordAuthentication getPasswordAuthentication() {
   return new PasswordAuthentication("letsfire21@gmail.com","hello2hi");
   }
  });
 
//compose message
  try 
  {
   MimeMessage message = new MimeMessage(session1);
   message.setFrom(new InternetAddress("letsfire21@gmail.com"));
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
   message.setSubject("order place ");
   message.setText("Your email id: "+to);
   
   //send message
   Transport.send(message);
   out.println("message sent successfully");
    if(str.equals("success"))
                response.sendRedirect("index.jsp");
           
   } catch (MessagingException e) {throw new RuntimeException(e);}
%>