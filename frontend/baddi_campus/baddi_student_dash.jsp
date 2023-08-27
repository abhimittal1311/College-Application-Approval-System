<%@page import="java.util.Iterator"%>
<%@page import="ProjectPackage.ListingBeanStudent"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<ListingBeanStudent> ar = (ArrayList<ListingBeanStudent>)request.getAttribute("ABC"); %>
<html>
    <head>
        <title>Chitkara University, Himachal Pradesh</title>
        <link rel="icon" href="chitkarasvglogo.png">
        <style>
             .active {
    background-color: #cc0000;
}
            ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover {
    background-color: #111;
}
            p{
                font-family: "Open Sans", sans-serif;
            }
            #particles-js canvas {
                position : fixed;
                width: 100%;
                height: 100%;
                z-index: -999;
            }
            .button {
    border-radius: 5px;
    background-color: #cc0000;
    border: none;
    color: white;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
}
.button:hover
{
    opacity: 0.6;
}
h1,li
            {
                font-family: "Open Sans", sans-serif;
            }
        </style>
    </head>
    <body>
        <div id="particles-js"></div>
        <button type="button" onclick="goBack()" class="button">Back</button>
       <% if(session.getAttribute("xyz")==null)
       {
           response.sendRedirect("chitkara_baddi_home.jsp");
       }
       %>
    <center>
        <a href="https://www.chitkarauniversity.edu.in/" title="Chitkara University, Himachal Pradesh"><img src="ChitkaraUniversityBaddiLogo.png"></a>
        <h1>Student DashBoard</h1>
              <%  if(!ar.isEmpty()){
          for(int i=0;i<ar.size();i++)
      { %>
    
       <ul>
  <li><a class="active" href="baddi_student_main">My Info</a></li>
  <li><a href="leave_application_baddi.jsp">Apply for Leave Application</a></li>
  <li><a href="gatepass_baddi.jsp">Apply for Gate Pass</a></li>
  <li><a href="baddi_password_change.jsp">Change Password</a></li>
  <li style="float:right;"><a href="baddi_logout.jsp">Logout</a></li>
</ul>
      
       
        <table width="800" height="500" class="dash" cellspacing="15">
            <tr>
                <td rowspan="3"><a href=<%= ar.get(i).getImg()%> target="_blank">
           <img src=<%= ar.get(i).getImg()%> width="190" height="190" style="margin:0 10px 10px 0;"> </a>
      </td>
                <td>
                    <p> First Name: <%= ar.get(i).getFname()%></p>
                </td>
                <td>
                    <p>Last Name: <%= ar.get(i).getLname()%></p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Gender: <%= ar.get(i).getGender()%></p>
                </td>
                <td>
                    <p>Date of Birth: <%= ar.get(i).getDate()%></p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Contact: <%= ar.get(i).getContact()%></p>
                </td>
                <td>
                    <p>Email: <%= ar.get(i).getEmail()%></p>
                </td>
            </tr>
            <tr>
                <td>
                    <p>Father's Name: <%= ar.get(i).getFathername()%></p>
                </td>
                <td>
                    <p>Mother's Name: <%= ar.get(i).getMothername()%></p>
                </td>
                <td colspan="2" rowspan='2'>
                    <p>Address: <%= ar.get(i).getAddress()%></p><p><%= ar.get(i).getNumber()%></p><p><%= ar.get(i).getCountry()%></p>
                </td>
            </tr>
            
            <tr>
                <td>
                    <p>Course: <%= ar.get(i).getCourse()%></p>
                </td>
                <td>
                    <p>Marks in 10th: <%= ar.get(i).getMarks_10()%></p>
                </td>
                
            </tr>
            <tr>
                <td>
                    <p>Last Institute: <%= ar.get(i).getSchool()%></p>
                </td>
                <td>
                    <p>Marks in 12th: <%= ar.get(i).getMarks_12()%></p>
                </td>
                <td>
                    <p>UG Marks: <%= ar.get(i).getUg_marks()%></p>
                </td>
            </tr>
             </table>
                <%}}%> 
    </center> 
        <script>
function goBack()
{
  window.history.back();
}
</script>
        <script src="particles.js"></script>
    <script src="config.js"></script>
    </body>
</html>
