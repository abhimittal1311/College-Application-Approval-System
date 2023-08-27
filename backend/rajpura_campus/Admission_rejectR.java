package ProjectPackage;
import ProjectPackage.DBConnection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/Admission_rejectR"})
public class Admission_rejectR extends HttpServlet {
     @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        try
        {
            String sub="Regarding Your Admission Application.";
        Connection conn=DBConnection.getConnection();
        String email = req.getParameter("pqr");
        String query="delete from rajpura_signup where email=(?);";
        PreparedStatement Ps=conn.prepareStatement(query); 
         Ps.setString(1,email);
         int s=Ps.executeUpdate(); 
         if(s!=0)
         {
             SendMail.admission_reject(email,sub);
             req.getRequestDispatcher("rajpura_teacher_student_list").forward(req, res);
         }
         else
         {
            req.getRequestDispatcher("/chitkara_rajpura_home.jsp").forward(req, res);
         }
    }
        catch(Exception e)
        {
            System.out.println(e);
        }
    }

}
