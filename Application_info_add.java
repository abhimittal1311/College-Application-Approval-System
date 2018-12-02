
package ProjectPackage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/Application_info_add"})
@MultipartConfig(maxFileSize=4177215)
public class Application_info_add extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException 
    {
        String email = req.getParameter("email");
        String name = req.getParameter("name");
        String course = req.getParameter("course");
        String reason = req.getParameter("reason");
        String from=req.getParameter("datefrom");
        String to = req.getParameter("dateto");
        leave_register_bean reg = new leave_register_bean();
        reg.setEmail(email);
        reg.setName(name);
        reg.setCourse(course);
        reg.setReason(reason);
        reg.setFrom(from);
        reg.setTo(to);
        leave_appplication_dao rDao = new leave_appplication_dao();
        Boolean check=rDao.leaveregister(reg);
        if(check==true)
            req.getRequestDispatcher("baddi_student_main").forward(req, res);
        else
        {
            req.setAttribute("errMessage", check);
            req.getRequestDispatcher("/leave_application_baddi.jsp").forward(req, res);
        }
    }
}
