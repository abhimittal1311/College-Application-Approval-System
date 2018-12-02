<%@page import="java.util.Iterator"%>
<%@page import="ProjectPackage.leave_register_bean"%>
<%@page import="java.util.ArrayList"%>
<% ArrayList<leave_register_bean> ar = (ArrayList<leave_register_bean>)request.getAttribute("TRY6"); %>
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
h1,h2,li
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
         <ul>
  <li><a  href="rajpura_teacher_student_list">List of Enrolled Students</a></li>
  <li><a  href="rajpura_teacher_main">Admission Applications</a></li>
  <li><a class="active" href="leave_rajpura_main">Leave Applications</a></li>
  <li><a href="gp_rajpura_main">Gate Pass Applications</a></li>
  <li style="float:right;"><a href="rajpura_logout.jsp">Logout</a></li>
</ul>
        <h2>Leave Applications</h2>
           <%  if(!ar.isEmpty()){
          for(int i=0;i<ar.size();i++)
      { %>
      <table width="800" align="left" class="dash" cellspacing="15">
            <tr>
                <td>
                    <p>Name: <%= ar.get(i).getName()%></p>
                </td>
                <td>
                    <p>
                        Email: <%= ar.get(i).getEmail()%>
                    </p>
                </td>
                <td>
                    <p>From: <%= ar.get(i).getFrom()%></p>
                </td>
                <td>
                    <p>To: <%= ar.get(i).getTo()%></p>
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <p>Reason: <%= ar.get(i).getReason()%></p>
                </td>
                
            </tr>
            <tr>
            <td>
                    <form method="post" action="Leave_acceptR">
                <input type="hidden" name="abc1" value="<%= ar.get(i).getEmail()%>">
                <input type="submit" name="Accept" value="Accept Application" class="button" style="background-color:#009900;">
                </form>
                </td>
                <td>
                <form method="post" action="Leave_rejectR">
                <input type="hidden" name="pqr1" value="<%= ar.get(i).getEmail()%>">
                <input type="submit" name="Reject" value="Reject Application " class="button">
            </form>
                </td>
            </tr>
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
