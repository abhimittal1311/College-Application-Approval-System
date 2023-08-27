package ProjectPackage;
import java.sql.*;
public class loginDaoTeacher {
  public boolean getLogIn(LoginBeanTeacher LG)
  {
      String Username10=LG.getUsername();
      String Password10=LG.getPassword();
      String usernameDB = "";
      String passwordDB = "";
      try
      {
          Connection conn =DBConnection.getConnection();
         Statement  statement = conn.createStatement();
         ResultSet resultSet = statement.executeQuery("select username,password from baddi_teacher;");
          while(resultSet.next())
          {
          usernameDB = resultSet.getString("username");
          passwordDB = resultSet.getString("Password");
 
   if(Username10.equals(usernameDB) && Password10.equals(passwordDB))
   {
      return true; 
   }
 }
      }
      catch(ClassNotFoundException | SQLException e)
      {
          System.out.println(e);
      }
      return false;
  }
}
