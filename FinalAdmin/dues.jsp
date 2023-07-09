<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!----======== CSS ======== -->
    <link rel="stylesheet" href="CSS/Astyle.css">
 <link rel="stylesheet" href="CSS/Ststyle.css">
    
    <!----===== Boxicons CSS ===== -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <title>VertexStudyPoint</title> 
</head>
<body>
    <nav class="sidebar close">
        <header>
            <div class="image-text">
                <span class="image">
                    <img src="logo.png" alt="">
                </span>
                 <h1><i class='bx bxl-vimeo'></i></h1> 
                <div class="text logo-text">
                    <span class="name">ertex Admin</span>
                </div>
            </div>

            <i class='bx bx-chevron-right toggle'></i>
        </header>
        <div class="menu-bar">
            <div class="menu">
                <ul class="menu-links">
                    <li class="nav-link">
                        <a href="Aindex.html">
                            <i class='bx bx-home-alt icon' ></i>
                            <span class="text nav-text">Dashboard</span>
                        </a>
                    </li>

                    <li class="nav-link">
                        <a href="studentinfo.jsp">
                            <i class='bx bx-user icon' ></i>
                            <span class="text nav-text">Students List</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="staffinfo.jsp">
                            <i class='bx bx-user-plus icon' ></i>
                            <span class="text nav-text">Staff Members</span>
                        </a>
                    </li>
                        <li class="nav-link">
                        <a href="payment.jsp">
                            <i class='bx bx-wallet icon' ></i>
                            <span class="text nav-text">Payment</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="dues.jsp">
                            <i class='bx bx-caret-down-square icon' ></i>
                            <span class="text nav-text">Dues</span>
                        </a>
                    </li>
                     <li class="nav-link">
                        <a href="feedback.jsp">
                            <i class='bx bx-bell icon'></i>
                            <span class="text nav-text">FeedBack</span>
                        </a>
                    </li>
                    <li class="nav-link">
                        <a href="successstory.jsp">
                            <i class='bx bx-book icon' ></i>
                            <span class="text nav-text">successStory</span>
                        </a>
                    </li>
                 </ul>
            </div>

            <div class="bottom-content">
                <li class="">
                    <a href="#">
                        <i class='bx bx-log-out icon' ></i>
                        <span class="text nav-text">Logout</span>
                    </a>
                </li>             
            </div>
        </div>

    </nav>

    <section class="home">
        <div class="text">Admin Dashboard</div>
</section>

    <script>
        const body = document.querySelector('body'),
      sidebar = body.querySelector('nav'),
      toggle = body.querySelector(".toggle"),
      searchBtn = body.querySelector(".search-box"),
      modeSwitch = body.querySelector(".toggle-switch"),
      modeText = body.querySelector(".mode-text");


toggle.addEventListener("click" , () =>{
    sidebar.classList.toggle("close");
})

searchBtn.addEventListener("click" , () =>{
    sidebar.classList.remove("close");
})
    </script>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*,java.time.LocalDateTime"%>
    <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");
            
            out.print(java.time.LocalDateTime.now());

            Statement stmt=conn.createStatement();
            ResultSet rs=stmt.executeQuery("SELECT endDate FROM membership where endDate<"+java.time.LocalDateTime.now()+";");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("endDate")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>        


</body>
</html>
