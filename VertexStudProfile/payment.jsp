<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/Ststyle.css">
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>
<body>
  <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-vimeo'></i>
      <span class="logo_name">Vertex</span>
    </div>
      <ul class="nav-links">
        <li>
          <a href="Stindex1.jsp" class="active">
            <i class='bx bx-user' ></i>
            <span class="links_name">Profile</span>
          </a>
        </li>
        <li>
          <a href="Spayment.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">Payment</span>
          </a>
        </li>
        <li>
          <a href="feedback.html">
            <i class='bx bx-book-alt' ></i>
            <span class="links_name">Feedback</span>
          </a>
        </li>
        <li>
          <a href="leaveform.html">
            <i class='bx bx-badge-check' ></i>
            <span class="links_name">Leaveform</span>
          </a>
        </li>


        <li>
          <a href="successStory.html">
            <i class='bx bx-heart' ></i>
            <span class="links_name">Success Story</span>
          </a>
        </li>
        <li class="log_out">
          <a href="#">
            <i class='bx bx-log-out'></i>
            <span class="links_name">Log out</span>
          </a>
        </li>
      </ul>
  </div>
  <section class="home-section">
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Student Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
      <div class="profile-details">
        <!--<img src="images/profile.jpg" alt="">-->
        <span class="admin_name"></span>
        <!-- <i class='bx bx-chevron-down' ></i> -->
      </div>
    </nav>

    <div class="home-content">
      <div class="sales-boxes">
        <div class="recent-sales box">
          <div class="title">Payment History</div>
          <div class="sales-details">

            <ul class="details">
            <li class="topic">ID</li>
            <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT p_id,s_FullName,payment.date_registered,p_amount,status FROM student,payment Where student.s_id=payment.s_id AND student.EmailId='"+mail+"';");
            
            while(rs.next())  {
            out.print("<li><a>"+rs.getString("p_id")+"</a></li>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>  
            
          </ul>

            <ul class="details">
              <li class="topic">   MAIL ID</li>
              <%    try    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT EmailId FROM student,payment Where student.s_id=payment.s_id AND student.EmailId='"+mail+"';");
            
            while(rs.next())  {
            out.print("<li><a>"+rs.getString("EmailId")+"</a></li>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>  
            </ul>
            <ul class="details">
              <li class="topic">    DATE-TIME</li>
              <%    try    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT p_id,s_FullName,payment.date_registered,p_amount,status FROM student,payment Where student.s_id=payment.s_id AND student.EmailId='"+mail+"';");
            
            while(rs.next())  {
            out.print("<li><a>"+rs.getString("date_registered")+"</a></li>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>  
            </ul>

            <ul class="details">
              <li class="topic">    Amount</li>
              <%    try    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT p_id,s_FullName,payment.date_registered,p_amount,status FROM student,payment Where student.s_id=payment.s_id AND student.EmailId='"+mail+"';");
            
            while(rs.next())  {
            out.print("<li><a>"+rs.getString("p_amount")+"</a></li>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>  
            </ul>

          <ul class="details">
            <li class="topic">    STATUS</li>
            <%    try    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT p_id,s_FullName,payment.date_registered,p_amount,status FROM student,payment Where student.s_id=payment.s_id AND student.EmailId='"+mail+"';");
            
            while(rs.next())  {
            out.print("<li><a>"+rs.getString("status")+"</a></li>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>  
          </ul>
          </div>
           
        </div>
    </div>
  </section>

  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>
</body>
</html>

