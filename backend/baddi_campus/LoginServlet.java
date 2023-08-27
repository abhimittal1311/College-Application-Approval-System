package ProjectPackage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {
   @Override
   public void service (HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
   {
       String email =req.getParameter("uname");
       String Password = req.getParameter("password");
       LoginBean LB = new LoginBean();
       LB.setUsername(email);
       LB.setPassword(Password);
       loginDao LDD = new loginDao();
       Boolean check=LDD.getLogIn(LB);
        if(check==true)
        { 
            HttpSession session=req.getSession(true);  
            session.setAttribute("xyz",email);
            req.getRequestDispatcher("baddi_student_main").include(req, res);
        }
        else
        {
            req.setAttribute("errMessage", check);
            req.getRequestDispatcher("/chitkata_baddi_home.jsp").forward(req, res);
        }
   }
}
