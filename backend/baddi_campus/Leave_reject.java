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
@WebServlet(urlPatterns = {"/Leave_reject"})
public class Leave_reject extends HttpServlet {
     @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        try
        {
            String sub="Regarding your Leave Application.";
        Connection conn=DBConnection.getConnection();
        String email = req.getParameter("pqr1");
        String query="update leave_baddi set status='Rejected' where email=(?);";
        PreparedStatement Ps=conn.prepareStatement(query); 
         Ps.setString(1,email);
         int s=Ps.executeUpdate();
         
         if(s!=0)
         { 
             SendMail.send_reject(email,sub);
             req.getRequestDispatcher("leave_baddi_main").forward(req, res);
         }
         else
         {
            req.getRequestDispatcher("/chitkara_baddi_home.jsp").forward(req, res);
         }
    }
        catch(IOException | ClassNotFoundException | SQLException | ServletException e)
        {
            System.out.println(e);
        }
    }

}
