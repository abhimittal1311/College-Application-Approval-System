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
.leave-form input[type="text"], .leave-form textarea, .leave-form select,.leave-form input[type="email"]{
	margin:0px 0px;
	padding:10px 10px;
	background:#fff;
	color: #333;
	font: 400 16px/20px "Open Sans", sans-serif;
	width:100%;
	border:5;
	transition: all 0.1s ease-in-out;
}
.leave-form input[type="date"]{
	line-height:10px;
	font-size:13px;width:100%;
	border:none;
	padding:8px;
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
  <li><a href="rajpura_student_main">My Info</a></li>
  <li><a class="active" href="leave_application_rajpura.jsp">Apply for Leave Application</a></li>
  <li><a href="gatepass_rajpura.jsp">Apply for Gate Pass</a></li>
  <li><a href="rajpura_password_change.jsp">Change Password</a></li>
  <li style="float:right;"><a href="rajpura_logout.jsp">Logout</a></li>
</ul>
         <h1>Leave Application Form</h1>
        <form name="applicationL" method="post" action="Application_info_addR">
            <table align="center" width="600" cellspacing="0" cellpadding="0" class="leave-form">
                <tr>
                    <td colspan="2">
                        <input type="text" name="name" placeholder="Name*" required>
                    </td>
                    <td>
                        <input type="email" name="email" placeholder="Email*" required>
                    </td>
                    
                </tr>
                
                <tr>
                    <td rowspan="3"colspan="2"> <textarea style="resize:none;" name="reason" cols="41" rows="6" placeholder="Reason for Leave*" required></textarea></td>
                    <td>
                        <input name="datefrom" placeholder="From*" class="textbox-n" type="text" onfocus="(this.type='date')"  id="date" required>
                    </td>
                    
                </tr>
                <tr>
                    <td>
                        <select id="course" name="course" required>
    <option value="">-- Select Your Course* --</option>
    <option value="B.E. CSE">Computer Science Enginering (BE Computer Science Engg.)</option>
    <option value="B.E. ECSE">Electronics & Computer Engineering (B.E. Electronics & Computer Engg.)</option>
    <option value="B.E. ECE">Electronics & Comm. Engineering (B.E. Electronics & Communication Engg.)</option>
    <option value="B.E. ME">Mechanical Engineering (B.E. Mechanical Engg.)</option>
    <option value="B.E. EE">Electrical Engineering (B.E. Electrical Engg.)</option>
    <option value="B.E. CE">Civil Engineering (B.E. Civil Engg.)</option>
    <option value="B.E. MTE">Mechatronics Engineering (B.E. Mechatronics Engg.)</option>
    <option value="BCA">Bachelor of Computer Applications</option>
    <option value="BCA-MCA">Integrated BCA-MCA</option>
    <option value="B. Arch">B. Arch</option>
    <option value="B. Des">B. Des Interior Design</option>
    <option value="BSc. Hospitality">BSc. Hospitality Administration</option>
    <option value="BSc. HM">BSc. Hospitality affiliated with National Council of Hotel Management & Catering Technology</option>
    <option value="BSc. Hospitality Canada">BSc. Hospitality Administration with George Brown College,Toronto, Canada</option>
    <option value="BSc. Cullinary Arts">BSc. Cullinary Arts</option>
    <option value="BSc. Hospitality">BSc. Cullinary Arts with specialisation in Bakery & Pastry Arts Management</option>
    <option value="BBA">BBA</option>
    <option value="B Comm.">B Comm.</option>
    <option value="B Comm. IFA">B Comm. International Finance & Accounting</option>
    <option value="B.A. Jouralism">B.A. Journalism</option>
    <option value="BSc. Nursing Basic">BSc. Nursing Basic in collaboration with Fortis Healthcare</option>
    <option value="BSc. Nursing Post Basic">Post Basic BSc. Nursing in collaboration with Fortis Healthcare</option>
    <option value="BSc. Allied Healthcare">BSc. Allied Healthcare with Fortis Healthcare</option>
    <option value="B. Physiotherapy">B. Physiotherapy</option>
    <option value="B. Optometry">B. Optometry</option>
    <option value="BFA">BFA Applied Art</option>
    <option value="B. Des Animation">B. Des Animation</option>
    <option value="B. Des Game Design">B. Des Game Design</option>
    <option value="B. Pharma">B. Pharma</option>
    <option value="B. Pharma (Practice)">B. Pharma (Practice)</option>
    <option value="Pharma. D.">Pharm. D.</option>
    <option value="M.E. CSE">Computer Science & Engineering (PostGraduate)</option>
    <option value="M.E. ECSE">Electronics & Computer Engineering (PostGraduate)</option>
    <option value="CTM">Construction Technology & Management (PostGraduate)</option>
    <option value="M.E. ME">Mechanical Engineering (PostGraduate)</option>
    <option value="MCA">Master of Computer Applications</option>
    <option value="M. Pharma">M. Pharma</option>
    <option value="Pharma. D. PG">Pharm D (Post Buccalureate)</option>
    <option value="M. Physiotherapy">M. Physiotherapy</option>
    <option value="M. Optometry">M. Optometry</option>
    <option value="B.Ed">B.Ed</option>
    <option value="M.A. Journalism">M.A. Journalism</option>
    <option value="MBA">MBA</option>
    <option value="Master of Design User Experience">Master of Design User Experience in collaboration with ImaginXP</option>

    </select>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input name="dateto" placeholder="To*" class="textbox-n" type="text" onfocus="(this.type='date')"  id="date" required>
                    </td>
                </tr>
                <tr>
    <td colspan="2">&nbsp;</td>
    <td align="right"><input name="submit" type="submit" value="Submit" class="button"></td>
  </tr>
            </table>
        </form>
        
            
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
