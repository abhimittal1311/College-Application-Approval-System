package ProjectPackage;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class leave_appplication_dao
{
    public boolean leaveregister(leave_register_bean RR)
    {
        String Name10 = RR.getName();
     String Course10 = RR.getCourse();
     String Reason10 = RR.getReason();
     String From10 = RR.getFrom();
     String To10 = RR.getTo();
     String Email10=RR.getEmail();
     try
     {
         Connection conn=DBConnection.getConnection();
         String query1="insert into leave_baddi values(?,?,?,?,?,?,?);";
         PreparedStatement Ps1=conn.prepareStatement(query1);
         Ps1.setString(1,Name10);
         Ps1.setString(2,Course10);
         Ps1.setString(3,Reason10);
         Ps1.setString(4,From10);
         Ps1.setString(5,To10);
         Ps1.setString(6,Email10);
         Ps1.setString(7,"Pending");
         int i=(int)Ps1.executeLargeUpdate();
         conn.close();
         if(i!=0)
         {
             return true;
         }
         else
         {
             return false;
         }
     }
     catch(ClassNotFoundException | SQLException e)
     {
         System.out.println(e);
         return false;
     }
    }

}
