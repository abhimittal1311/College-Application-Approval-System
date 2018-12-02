package ProjectPackage;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/LoginServletTeacher"})
public class LoginServletTeacher extends HttpServlet {
   @Override
   public void service (HttpServletRequest req,HttpServletResponse res) throws ServletException, IOException
   {
       String username =req.getParameter("username");
       String Password = req.getParameter("password");
       LoginBeanTeacher LB = new LoginBeanTeacher();
       LB.setUsername(username);
       LB.setPassword(Password);
       loginDaoTeacher LDD = new loginDaoTeacher();
       Boolean check=LDD.getLogIn(LB);
        if(check==true)
            req.getRequestDispatcher("baddi_teacher_main").forward(req, res);
        else
        {
            req.setAttribute("errMessage", check);
            req.getRequestDispatcher("/chitkata_baddi_home.jsp").forward(req, res);
        }
   }
}
