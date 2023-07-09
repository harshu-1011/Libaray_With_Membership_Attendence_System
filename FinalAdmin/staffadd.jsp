<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String full_name=request.getParameter("fname");
    String email=request.getParameter("email");
    String p_no=request.getParameter("pno");
    String jd=request.getParameter("jd");
     String work=request.getParameter("work");
     String sal=request.getParameter("sal");
    String add=request.getParameter("add");
    String gender=request.getParameter("gender");
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");
            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(st_id) FROM staff;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("st_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into staff values(?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, full_name);
			pst.setString(3, email);
			pst.setString(4, p_no);
			pst.setString(5, work);
            pst.setString(6, sal);
			pst.setString(7, jd);
			pst.setString(8, gender);
			pst.setString(9, add);
            pst.setString(10, timestamp.toString());
			pst.executeUpdate();

            out.println("Data is successfully inserted!");
            response.sendRedirect("staffinfo.jsp");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                }
         %>