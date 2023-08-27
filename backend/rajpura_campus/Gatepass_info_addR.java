package ProjectPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns= {"/Gatepass_info_addR"})
public class Gatepass_info_addR extends HttpServlet 
{
   @Override
   protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        String email = req.getParameter("email");
        String name = req.getParameter("name");
        String course = req.getParameter("course");
        String reason = req.getParameter("reason");
        String from=req.getParameter("timefrom");
        String to = req.getParameter("timeto");
        System.out.println(name+course+reason+from+to);
        gp_register_bean reg = new gp_register_bean();
        reg.setName(name);
        reg.setCourse(course);
        reg.setReason(reason);
        reg.setFrom(from);
        reg.setTo(to);
        reg.setEmail(email);
        gp_application_daoR rDao = new gp_application_daoR();
        Boolean check=rDao.gpregister(reg);
        if(check==true)
            req.getRequestDispatcher("rajpura_student_main").forward(req, res);
        else
        {
            req.setAttribute("errMessage", check);
            req.getRequestDispatcher("/gatepass_baddi.jsp").forward(req, res);
        }
    }

}
