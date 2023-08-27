
<html>
<head>
<title>Chitkara University, Himachal Pradesh</title>
<link rel="icon" href="chitkarasvglogo.png">
<style>
h3,h5
{
  font-family: "Open Sans", sans-serif;
}
.login
{
    opacity: 1.0;
    height: 600px;
    width: 450px;
    box-shadow: 0 5px 15px rgba(0, 0, 0, 1.0);
}
form input[type="text"],form input[type="password"]{
	margin:0px 0px;
	padding:10px 10px;
	background:#fff;
	color: #333;
	font: 400 16px/20px "Open Sans", sans-serif;
	width:50%;
	border:5;
	transition: all 0.1s ease-in-out;
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
#particles-js canvas {
                position : fixed;
                width: 100%;
                height: 100%;
                z-index: -999;
            }
</style>
</head>
<body>
    <div id="particles-js"></div>
    <button type="button" onclick="goBack()" class="button">Back</button>
<center>    <a href="https://www.chitkarauniversity.edu.in/" title="Chitkara University, Himachal Pradesh"><img src="ChitkaraUniversityBaddiLogo.png"></a></center>
<div style="width: 450px; float:left; height:580px; margin:100px" class="login">
<center>
    <br>
    <img src="Teacher.png" height="180px" width="180px">
    <br>
<br>
<h3>TEACHER LOG IN</h3>
<br>

<form method="post" action="LoginServletTeacher">
<input name="username" type="text" placeholder="Username" required>
<br>
<br>
<br>
<input name="password" type="password" placeholder="Password" required>
<br>
<br>
<br>
<input name="submit" type="submit" value="Log in" class="button">
</form>
    </center>
</div>
<div style="width: 450px; float:right; height:580px; margin:100px" class="login">     
<center>
    <br>
    <img src="Student.png" height="180px" width="180px">
    <br>
<br>
<h3>STUDENT LOG IN</h3>
<br>

    <form method="post" action="LoginServlet">
    <input name="uname" type="text" placeholder="Username" required>
<br>
<br>
<br>
<input name="password" type="password" placeholder="Password" required>
<br>
<br>
<br>
<input name="submit" type="submit" value="Log in" class="button">
    </form>
<h5><a href="application_form_baddi.jsp">Click Here</a> to fill an application.</h5>
    </div>

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
