package ProjectPackage;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
public class RegisterDao {

 public boolean getRegistered(RegisterBean RR)
 {
     String Fname10 = RR.getFname();
     String Lname10 = RR.getLname();
     String Email10 = RR.getEmail();
     String Contact10 = RR.getContact();
     String Address10 = RR.getAddress();
     String Uname10 = RR.getUname();
     String Country10 = RR.getCountry();
     String Date10 = RR.getDate();
     String Number10 = RR.getNumber();
     String Marks_1210 = RR.getMarks_12();
     String Marks_1010 = RR.getMarks_10();
     String Course10 = RR.getCourse();
     String Gender10 = RR.getGender();
     InputStream img=RR.getFin();
     String Father10 = RR.getFathername();
     String Mother10 = RR.getMothername();
     String School10 = RR.getSchool();
     String UGmarks10 = RR.getUg_marks();
        
     try
     {
         Connection conn=DBConnection.getConnection();
         String query1="insert into baddi_signup values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);";
         PreparedStatement Ps1=conn.prepareStatement(query1);
         String query2="insert into photograph values(?);";
         PreparedStatement Ps2=conn.prepareStatement(query2);
         Ps2.setBlob(1,img);
         int j=(int)Ps2.executeLargeUpdate();
         PreparedStatement Ps3=conn.prepareStatement("select img from photograph;");
         ResultSet rs=Ps3.executeQuery();
         rs.next();
         Blob b=rs.getBlob(1);
         byte[] by=b.getBytes(1,(int)b.length());
         String js="C:\\Users\\Abhishek Mittal\\Documents\\NetBeansProjects\\CollegeApplicationApprovalProject\\web\\"+Uname10+".jpg";
         String tryy=Uname10+".jpg";
         FileOutputStream fout=new FileOutputStream(js);
         fout.write(by);
         fout.close();
         String query4="truncate table photograph;";
         PreparedStatement Ps4=conn.prepareStatement(query4);
         int s=Ps4.executeUpdate();
         
         Ps1.setString(1,Fname10);
         Ps1.setString(2,Lname10);
         Ps1.setString(3,Address10);
         Ps1.setString(4,Contact10);
         Ps1.setString(5,Email10);
         Ps1.setString(6,Country10);
         Ps1.setString(7,Date10);
         Ps1.setString(8,Number10);
         Ps1.setString(9,Course10);
         Ps1.setString(10,Marks_1210);
         Ps1.setString(11,Marks_1010);
         Ps1.setString(12,Gender10);
         Ps1.setString(13,tryy);
         Ps1.setString(14,Father10);
         Ps1.setString(15,Mother10);
         Ps1.setString(16,School10);
         Ps1.setString(17,UGmarks10);
         Ps1.setString(18,"No");
         
         int i=(int)Ps1.executeLargeUpdate();
         conn.close();
         
         if(i!=0 && j!=0 && s==0)
         {
             return true;
         }
         else
         {
             return false;
         }
     }
     catch(IOException | ClassNotFoundException | SQLException e)
     {
         
         System.out.println(e);
         return false;
     }
     
 }
}
