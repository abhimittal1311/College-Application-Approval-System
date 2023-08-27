<%@page import="java.util.Iterator"%>
<%@page import="ProjectPackage.ListingBean"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<ListingBean> ar = (ArrayList<ListingBean>)request.getAttribute("LOL1"); %>
<html>
    <head>
       <title>Chitkara University, Punjab</title>
        <link rel="icon" href="chitkarasvglogo.png">
        <style>
            .active
            {
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
       
    <center>
        <a href="https://www.chitkara.edu.in/" title="Chitkara University, Punjab"><img src="ChitkaraUniversityPunjabLogo.png" height="180px" width="180px"></a>
        <h1>Teacher DashBoard</h1>
        </center>
    <ul>
  <li><a  href="rajpura_teacher_student_list">List of Enrolled Students</a></li>
  <li><a class="active" href="rajpura_teacher_main">Admission Applications</a></li>
  <li><a href="leave_rajpura_main">Leave Applications</a></li>
  <li><a href="gp_rajpura_main">Gate Pass Applications</a></li>
  <li style="float:right;"><a href="rajpura_logout.jsp">Logout</a></li>
</ul>
        <%  if(!ar.isEmpty()){
          for(int i=0;i<ar.size();i++)
      { %>
    
       
        <table width="800" align="left" class="dash" cellspacing="15">
            <tr>
                <td rowspan="3"><a href=<%= ar.get(i).getImg()%> target="_blank">
           <img src=<%= ar.get(i).getImg()%> width="190" height="190" style="float:left;margin:0 20px 20px 0;"> </a>
      </td>
                <td>
                    <p>First Name: <%= ar.get(i).getFname()%></p>
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
                    <p>Date Of Birth: <%= ar.get(i).getDate()%></p>
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
            <tr>
                <td >
                    <form method="post" action="Admission_acceptR">
                <input type="hidden" name="abc" value="<%= ar.get(i).getEmail()%>">
                <input type="submit" name="Accept" value="Accept Application" class="button" style="background-color:#009900;">
                </form>
                </td><td>
                <form method="post" action="Admission_rejectR">
                <input type="hidden" name="pqr" value="<%= ar.get(i).getEmail()%>">
                <input type="submit" name="Reject" value="Reject Application " class="button">
            </form>
                </td>
            </tr>
             </table>
                <br>
                <%}}%>   
                   
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
