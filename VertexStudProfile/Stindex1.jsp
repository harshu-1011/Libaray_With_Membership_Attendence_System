<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="CSS/Ststyle.css">
    <link rel="stylesheet" href="CSS/feedback.css">
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
        <span class="dashboard">Student Profile</span>
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
 <section class="container">
      <header><b>VertexStudyPoint</b></header>
      <form action="feedback.jsp" class="form">
        <h1>Profile Details - </h1>
        <div class="input-box">
          <label>Full Name : </label>
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
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("s_FullName")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>          
        </div>

    <div class="column">
        <div class="input-box">
          <label>Email : </label>          
    <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("EmailId")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>          
        </div>

      <div class="input-box">
          <label>Phone No : </label>
          <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("ContactNo")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
        </div>
</div>

    <div class="column">
        <div class="input-box">
          <label>BirthDate : </label>
          <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("dob")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
        </div>

      <div class="input-box">
          <label>Hall Type : </label>
          <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("hall_type")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
        </div>
 </div>
        <div class="input-box">
          <label>Address : </label>
         <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("s_Address")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
        </div>

  <div class="input-box">
            <label>Study : </label>
            <%    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();
            String mail=(session.getAttribute("E-Mail-for-profile")).toString();
            String pass=(session.getAttribute("Password-for-profile")).toString();
            ResultSet rs=stmt.executeQuery("SELECT * FROM student Where EmailId='"+mail+"' AND Password='"+pass+"';");
            
            while(rs.next())  {
            out.print("<b>"+rs.getString("study")+"</b>");      
            }                         
    }catch(Exception e) {   out.print(e); e.printStackTrace();        } %>
            </div>
        </div>

        <br><br> 
      </form>
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

