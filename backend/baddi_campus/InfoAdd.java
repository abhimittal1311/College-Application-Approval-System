package ProjectPackage;
import java.util.*;
import java.io.IOException;
import java.io.InputStream;
import javax.servlet.*;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
@WebServlet(urlPatterns = {"/InfoAdd"})
@MultipartConfig(maxFileSize=4177215)
public class InfoAdd extends HttpServlet {

    @Override
    public void service(HttpServletRequest req,HttpServletResponse res) throws IOException ,ServletException
    {
        String fname = req.getParameter("fname");
        String lname = req.getParameter("lname");
        String email = req.getParameter("email");
        String contact = req.getParameter("contact");
        String address = req.getParameter("address");
        String country = req.getParameter("country");
        String date = req.getParameter("date");
        String zipcode = req.getParameter("number");
        String course = req.getParameter("course");
        String gender = req.getParameter("gender");
        String marks12 = req.getParameter("Marks12");
        String marks10 = req.getParameter("Marks10");
        String fathername = req.getParameter("fathername");
        String mothername = req.getParameter("mothername");
        String school = req.getParameter("school");
        String ugmarks = req.getParameter("ug_marks");
        Part filepart=req.getPart("photo");
        InputStream inputstream=null;
        if(filepart!=null)
        {
            inputstream=filepart.getInputStream();
        }
        RegisterBean Reg = new RegisterBean();
        Reg.setFname(fname);
        Reg.setLname(lname);
        Reg.setEmail(email);
        Reg.setContact(contact);
        Reg.setAddress(address);
        String username=UUID.randomUUID().toString();
        Reg.setUname(username);
        Reg.setCountry(country);
        Reg.setDate(date);
        Reg.setNumber(zipcode);
        Reg.setMarks_12(marks12);
        Reg.setMarks_10(marks10);
        Reg.setCourse(course);
        Reg.setGender(gender);
        Reg.setFin(inputstream);
        Reg.setFathername(fathername);
        Reg.setMothername(mothername);
        Reg.setSchool(school);
        Reg.setUg_marks(ugmarks);
        RegisterDao rDao = new RegisterDao();
        Boolean check=rDao.getRegistered(Reg);
        if(check==true)
            req.getRequestDispatcher("/chitkara_baddi_home.jsp").forward(req, res);
        else
        {
            req.setAttribute("errMessage", check);
            req.getRequestDispatcher("/application_form_baddi.jsp").forward(req, res);
        }
    }
    
}
