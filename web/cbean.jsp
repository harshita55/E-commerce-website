<jsp:useBean id="t3" class="com.vbean.contactbean"/>
<jsp:setProperty name="t3" property="*"/>
 <%@page import="java.sql.*"%>
 <%@page import="com.dbconnection.Loadconnection"%>

<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*,javax.mail.internet.*"%>

<%
    String str=t3.insert();
            if(str.equals("success"))
            {response.sendRedirect("index.jsp");
           


 String to="";

    to=request.getParameter("email");
  

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
   return new PasswordAuthentication("letsfire21@gmail.com","hi2hello");
   }
  });
 
//compose message
  try 
  {
   MimeMessage message = new MimeMessage(session1);
   message.setFrom(new InternetAddress("letsfire21@gmail.com"));
   message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
   message.setText("ty for feedback"+to);
   
   //send message
   Transport.send(message);
   out.println("message sent successfully");
   if
   } catch (MessagingException e) {throw new RuntimeException(e);}
            
            }
            else
                response.sendRedirect("error.jsp");
           
%>