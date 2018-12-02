package ProjectPackage;
import ProjectPackage.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns = {"/baddi_teacher_main"})
public class baddi_teacher_main extends HttpServlet {
     @Override
    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         try
         {
             Connection conn = DBConnection.getConnection();
             String que="select * from baddi_signup where admission_stat='no';";
             PreparedStatement stmt = conn.prepareStatement(que);
              ResultSet resultSet = stmt.executeQuery();
              response.setContentType("text/html");
              PrintWriter out = response.getWriter();
              ArrayList<ListingBean> Arr = new ArrayList<ListingBean>(); 
             while(resultSet.next())
             {
                Arr.add(new ListingBean(resultSet.getString("zipcode"),resultSet.getString("photo"),resultSet.getString("fname"),resultSet.getString("lname"),resultSet.getString("email"),resultSet.getString("dob"),resultSet.getString("address"),resultSet.getString("country"),resultSet.getString("contact_no"),resultSet.getString("course"),resultSet.getString("father_name"),resultSet.getString("mother_name"),resultSet.getString("marks_12"),resultSet.getString("marks_10"),resultSet.getString("gender"),resultSet.getString("school"),resultSet.getString("ug_marks")));
             }
              request.setAttribute("LOL", Arr);
              request.getRequestDispatcher("/baddi_admission_applications.jsp").include(request, response);
          
         }
         catch (IOException | ClassNotFoundException | SQLException | ServletException ex) {
             System.out.print(ex);
         }
    }

}

