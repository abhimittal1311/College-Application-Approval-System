package ProjectPackage;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
public class SendMail 
{ 
    public static void admission_accept(String emailto,String sub)
    {
        String user="projectchitkarauniversity@gmail.com";
        String pass="chitkaraproject";
        String msg="Dear Student,\n" +
"\n" +
"We’d like to inform you that your admission application has been accepted." +
"\n" +
"You can LogIn to your Student DashBoard using your email as username and \"chitkara\" as your default password." +
"\n" +
"For any other queries, please contact your Mentor or Head Of the Department.\n" +
"\n" +
"Best regards,\n" +
"\n" +
"Chitkara University";
     Properties props = new Properties();
     props.put("mail.smtp.host", "smtp.gmail.com");

     props.put("mail.smtp.port", "587");		
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");

    Session session = Session.getInstance(props,new javax.mail.Authenticator()
    {
  	  protected PasswordAuthentication getPasswordAuthentication() 
  	  {
  	 	 return new PasswordAuthentication(user,pass);
  	  }
   });
    
   try
   {
    MimeMessage message = new MimeMessage(session);
       message.setFrom(new InternetAddress(user));
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));
       message.setSubject(sub);
       message.setText(msg);
       Transport.send(message);
 
 
    }
    catch(Exception e)
    {
    	 e.printStackTrace();
    }
  }
      public static void admission_reject(String emailto,String sub)
    {
        String user="projectchitkarauniversity@gmail.com";
        String pass="chitkaraproject";
        String msg="Dear Student,\n" +
"\n" +
"Thank You for applying at Chitkara University. We’d like to inform you that your admission application has been rejected." +
"\n" +
"For any other queries, please contact our Admission Department or visit our Head Office SCO 160–161, Sector 9-C, Chandigarh, 160009.\n" +
"\n" +
"Best regards,\n" +
"\n" +
"Chitkara University";
     Properties props = new Properties();
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "587");		
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");
    Session session = Session.getInstance(props,new javax.mail.Authenticator()
    {
  	  protected PasswordAuthentication getPasswordAuthentication() 
  	  {
  	 	 return new PasswordAuthentication(user,pass);
  	  }
   });
    
   try
   {
    MimeMessage message = new MimeMessage(session);
       message.setFrom(new InternetAddress(user));
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));
       message.setSubject(sub);
       message.setText(msg);
       Transport.send(message);
    }
    catch(Exception e)
    {
    	 e.printStackTrace();
    }
  }
    public static void send_accept(String emailto,String sub)
    {
        String user="projectchitkarauniversity@gmail.com";
        String pass="chitkaraproject";
        String msg="Dear Student,\n" +
"\n" +
"We’d like to inform you that your application has been accepted." +
"\n" +
"For any other queries, please contact your Mentor or Head Of the Department.\n" +
"\n" +
"Best regards,\n" +
"\n" +
"Chitkara University";
     Properties props = new Properties();
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "587");		
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");
    Session session = Session.getInstance(props,new javax.mail.Authenticator()
    {
  	  protected PasswordAuthentication getPasswordAuthentication() 
  	  {
  	 	 return new PasswordAuthentication(user,pass);
  	  }
   });
    
   try
   {
    MimeMessage message = new MimeMessage(session);
       message.setFrom(new InternetAddress(user));
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));
       message.setSubject(sub);
       message.setText(msg);
       Transport.send(message);
    }
    catch(Exception e)
    {
    	 e.printStackTrace();
    }
  } 
    public static void send_reject(String emailto,String sub)
    {
        String user="projectchitkarauniversity@gmail.com";
        String pass="chitkaraproject";
        String msg="Dear Student,\n" +
"\n" +
"We’d like to inform you that your application has been rejected." +
"\n" +
"For any other queries, please contact your Mentor or Head Of the Department.\n" +
"\n" +
"Best regards,\n" +
"\n" +
"Chitkara University";
     Properties props = new Properties();
     props.put("mail.smtp.host", "smtp.gmail.com");
     props.put("mail.smtp.port", "587");		
     props.put("mail.smtp.auth", "true");
     props.put("mail.smtp.starttls.enable", "true");
    Session session = Session.getInstance(props,new javax.mail.Authenticator()
    {
  	  protected PasswordAuthentication getPasswordAuthentication() 
  	  {
  	 	 return new PasswordAuthentication(user,pass);
  	  }
   });
    
   try
   {
    MimeMessage message = new MimeMessage(session);
       message.setFrom(new InternetAddress(user));
       message.addRecipient(Message.RecipientType.TO,new InternetAddress(emailto));
       message.setSubject(sub);
       message.setText(msg);
       Transport.send(message);
    }
    catch(Exception e)
    {
    	 e.printStackTrace();
    }
  } 
}
