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

@WebServlet(urlPatterns = {"/baddi_pass_change"})
public class baddi_pass_change extends HttpServlet 
{
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        try 
        {
            Connection con=DBConnection.getConnection();
            String email = req.getParameter("email");
            String newpass = req.getParameter("newpass");
            String que="update baddi_student set password=(?) where email=(?)";
            PreparedStatement stmt=con.prepareStatement(que);
            stmt.setString(1,newpass);
            stmt.setString(2,email);
            int s=stmt.executeUpdate();
            if(s!=0)
         { 
             req.getRequestDispatcher("baddi_student_main").forward(req, res);
         }
         else
         {
            req.getRequestDispatcher("/baddi_password_change.jsp").forward(req, res);
         }
        } 
        catch (Exception ex) 
        {
            System.out.println(ex);
        }
        
        
    }

}
