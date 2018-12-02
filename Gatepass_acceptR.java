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
@WebServlet(urlPatterns = {"/Gatepass_acceptR"})
public class Gatepass_acceptR extends HttpServlet {
     @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        try
        {
            String sub="Regarding your Gatepass Application.";
        Connection conn=DBConnection.getConnection();
        String email = req.getParameter("abc1");
        String query="update gatepass_rajpura set status='Accepted' where email=(?);";
        PreparedStatement Ps=conn.prepareStatement(query); 
         Ps.setString(1,email);
         int s=Ps.executeUpdate();
         if(s!=0)
         { 
             SendMail.send_accept(email,sub);
             req.getRequestDispatcher("gp_rajpura_main").forward(req, res);
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