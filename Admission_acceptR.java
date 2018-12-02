package ProjectPackage;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/Admission_acceptR"})
public class Admission_acceptR extends HttpServlet {
     @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        try
        {
            String sub="Regarding Your Admission Application.";
 
            
        Connection conn=DBConnection.getConnection();
        String email = req.getParameter("abc");
        String query="update rajpura_signup set admission_stat='Yes' where email=(?);";
        PreparedStatement Ps=conn.prepareStatement(query); 
         Ps.setString(1,email);
         String query2="insert into rajpura_student values(?,'chitkara');";
         PreparedStatement Ps2=conn.prepareStatement(query2);
         Ps2.setString(1,email);
         int s=Ps.executeUpdate();
         int i=Ps2.executeUpdate();
         if(s!=0 && i!=0)
         {
             SendMail.admission_accept(email,sub);
             req.getRequestDispatcher("rajpura_teacher_student_list").forward(req, res);
         }
         else
         {
            req.getRequestDispatcher("/chitkara_rajpura_home.jsp").forward(req, res);
         }
    }
        catch(IOException | ClassNotFoundException | SQLException | ServletException e)
        {
            System.out.println(e);
        }
    }

}