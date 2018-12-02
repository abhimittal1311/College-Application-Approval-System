package ProjectPackage;
import java.sql.*;
public class loginDaoR {
  public boolean getLogIn(LoginBean LG)
  {
      String Username10=LG.getUsername();
      String Password10=LG.getPassword();
      String usernameDB = "";
      String passwordDB = "";
      try
      {
          Connection conn =DBConnection.getConnection();
         Statement  statement = conn.createStatement();
         ResultSet resultSet = statement.executeQuery("select email,password from rajpura_student;");
          while(resultSet.next())
          {
          usernameDB = resultSet.getString("email");
          passwordDB = resultSet.getString("Password");
 
   if(Username10.equals(usernameDB) && Password10.equals(passwordDB))
   {
      return true; 
   }
 }
          
      }
      catch(Exception e)
      {
          System.out.println(e);
      }
      return false;
  }
}
