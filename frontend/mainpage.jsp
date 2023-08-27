<html>
    <head>
        <title>Chitkara University</title>
        <link rel="icon" href="chitkarasvglogo.png">
        <style>
            h1
            {
                font-family: "Open Sans", sans-serif;
            }
            h2
            {
                font-family: "Open Sans", sans-serif;
            }
            h4
            {
                font: 400 16px/20px "Open Sans", sans-serif;
            }
            .campus
            {
                opacity: 0.7;
                border-radius: 10px;
                padding: 10px 10px;
            }
            .campus:hover 
            {
                cursor: pointer;
                opacity: 1.0;
                box-shadow: 0 5px 15px rgba(0, 0, 0, 1.0);
                transition: box-shadow 0.3s ease-in-out;
            }
            #particles-js canvas {
                position : fixed;
                width: 100%;
                height: 1800px;
                z-index: -999;
            }
        </style>
    </head>
    <body>
        <div id="particles-js"></div>
    <center><img src="Chitkara University Logo.png" title="Chitkara University"></center>
    <br>
    <h1 align="center">Select Campus</h1>
    <div onclick="location.href = 'chitkara_rajpura_home.jsp';" style="width: 550px; float:right; height:570px; margin:20px" class="campus" title="Chitkara University, Punjab">
        <img src="PunjabCampus.jpg" height="300px" width="550px">
        <h2 align="center"> Punjab Campus</h2>
        <hr>
        <h4>The Punjab campus of the University is equidistant from Chandigarh, Mohali, Panchkula, Ambala and Patiala. The University offers multi-disciplinary programs, all of which are designed to be industry-relevant. As a result of this student-centric approach, Chitkara University is renowned as one of the best private universities in the North India region. From business management programs to programs in nursing and medical laboratory technologies; and from computer science, electronics and mechanical engineering programs, to hotel management and architecture-Chitkara University, Punjab is a veritable cornucopia of educational services.</h4>
    </div>
    <div onclick="location.href = 'chitkara_baddi_home.jsp';" style="width: 550px; float:left; height:550px; margin:20px" class="campus" title="Chitkara University, Himachal Pradesh">
        <img src="BaddiCampus.jpg" height="300px" width="550px">
        <h2 align="center"> Himachal Pradesh Campus</h2>
        <hr>
        <h4>The Himachal Pradesh campus, set on the foothills of the Shivalik Hills, is spread over approximately 17 acres and provides state-of-the-art facilities and ambience for a conducive learning environment. The pedagogy is learning-centric and the curriculum has been drawn to keep abreast with latest in respective domains that prepares students for life. The ambience of the University, teacher-student relations, functional industry tie-ups, and collaborations with foreign universities provide excellent opportunities to students for their overall development.</h4>
    </div>
    <script src="particles.js"></script>
    <script src="config.js"></script>
</body>
</html>
