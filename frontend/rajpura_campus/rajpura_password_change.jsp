<html>
    <head>
<title>Chitkara University, Punjab</title>
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
            .leave-form td {
    margin: 0px 0px;
    padding: 0px 20px 15px 0;
    box-sizing: content-box;}
.leave-form input[type="text"]{
	margin:0px 0px;
	padding:10px 10px;
	background:#fff;
	color: #333;
	font: 400 16px/20px "Open Sans", sans-serif;
	width:100%;
	border:5;
	transition: all 0.1s ease-in-out;
}
.leave-form input[type="submit"]{
	margin: 5px 0px;
	padding: 10px 25px;
	background-color:#cc0000;
	border:none;
	border-radius: 3px;
	color: #fff;
	text-shadow: 1px 1px 2px #5f574c;
	font: 600 16px/20px 'Open Sans', sans-serif;
}
        </style>
    </head>
    <body>
        <div id="particles-js"></div>
        <button type="button" onclick="goBack()" class="button">Back</button>
    <center>
       <a href="https://www.chitkara.edu.in/" title="Chitkara University, Punjab"><img src="ChitkaraUniversityPunjabLogo.png" height="180px" width="180px"></a>
       <h1>Student DashBoard</h1>
       <ul>
  <li><a  href="rajpura_student_main">My Info</a></li>
  <li><a href="leave_application_rajpura.jsp">Apply for Leave Application</a></li>
  <li><a href="gatepass_rajpura.jsp">Apply for Gate Pass</a></li>
  <li><a class="active" href="rajpura_password_change.jsp">Change Password</a></li>
  <li style="float:right;"><a href="rajpura_logout.jsp">Logout</a></li>
</ul> 
       <h1>Change Password</h1>
        <form method="post" name="changepass" action="rajpura_pass_change">
            <table align="center" width="600" cellspacing="0" cellpadding="0" class="leave-form">
                <tr>
                    <td colspan="2">
                        <input type="text" name="email" placeholder="Email*" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="newpass" placeholder="New Password*" required>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="submit" value="Submit" class="button">
                    </td>
                </tr>
            </table>
        </form>
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
