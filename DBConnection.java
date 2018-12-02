package ProjectPackage;
import java.sql.*;
public class DBConnection {
 static String url = "jdbc:mysql://localhost:3306/project_db?user=root&password=1234&useSSL=false&verifyServerCertificate=false&allowMultiQueries=true"; 
   public static Connection getConnection() throws ClassNotFoundException
   {
       Connection con =null;
        Class.forName("com.mysql.cj.jdbc.Driver");
       try
       {
           con = DriverManager.getConnection(url);
       }
       catch(SQLException e)
       {
           System.out.println(e);
       }
       return con;
   }
}
