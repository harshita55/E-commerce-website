   <%@page import="com.dbconnection.Loadconnection"%>
<%@page import="java.sql.*"%>


<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*,javax.mail.internet.*"%>

<%!
 String pass="";
 String to="";
%>
<%
    to=request.getParameter("email");
   
    try
    {
    Connection c=Loadconnection.getConnection();
    PreparedStatement ps = c.prepareStatement("select * from register where email=?");
    ps.setString(1,to);
    ResultSet rs=ps.executeQuery();
    if(rs.next())
    {
        pass=rs.getString("password"); 
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
   return new PasswordAuthentication("harshita.purswani55@gmail.com","55harshi55");
   }
  });
 
//compose message
  try 
  {
   MimeMessage message = new MimeMessage(session1);
   message.setFrom(new InternetAddress("harshita.purswani55@gmail.com"));
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
   message.setSubject("Forget password"+pass);
   message.setText("Your email id: "+to+"\n and password is:  "+pass);
   
   //send message
   Transport.send(message);
   out.println("message sent successfully");
   } catch (MessagingException e) {throw new RuntimeException(e);}
%>