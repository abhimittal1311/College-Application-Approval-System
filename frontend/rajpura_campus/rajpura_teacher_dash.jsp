<%@page import="java.util.Iterator"%>
<%@page import="ProjectPackage.ListingBean"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<ListingBean> ar = (ArrayList<ListingBean>)request.getAttribute("TRY4"); %>
<!DOCTYPE html>
<html>
    <head>
        <title>Chitkara University, Punjab</title>
        <link rel="icon" href="chitkarasvglogo.png">
        <style>
            .active {
    background-color: #cc0000;
}
           .dash {
    border-collapse: collapse;
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
  <li><a class="active" href="rajpura_teacher_student_list">List of Enrolled Students</a></li>
  <li><a href="rajpura_teacher_main">Admission Applications</a></li>
  <li><a href="leave_rajpura_main">Leave Applications</a></li>
  <li><a href="gp_rajpura_main">Gate Pass Applications</a></li>
  <li style="float:right;"><a href="rajpura_logout.jsp">Logout</a></li>
</ul>
        </center>
    <br>
    <h2>List of Enrolled Student</h2>
       
        <table width="800" align="left" class="dash" border="1">
            <tr>
                <th>
                    <p>First Name</p>
                </th>
                <th>
                    <p>Last Name</p>
                </th>
                <th>
                    <p>Course</p>
                </th>
            </tr>
            <%  if(!ar.isEmpty()){
          for(int i=0;i<ar.size();i++)
      { %>
            <tr>
                <td>
                    <p><%= ar.get(i).getFname()%></p>
                </td>
                <td>
                    <p><%= ar.get(i).getLname()%></p>
                </td>
                <td>
                    <p><%= ar.get(i).getCourse()%></p>
                </td>
            </tr>
        
                <br>
                <%}}%>   
        </table>           
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
