<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String s_name=request.getParameter("fname");
    String rating=request.getParameter("stars");
String feedback=request.getParameter("feedback");
    String s_id = (session.getAttribute("stud_id")).toString(); 

            Timestamp timestamp = new Timestamp(System.currentTimeMillis());

    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(f_id) FROM feedback;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("f_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into feedback values(?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, s_id);
			pst.setString(3, s_name);
			pst.setString(4, feedback);
            pst.setString(5,rating);			
			pst.setString(6, timestamp.toString());
			
			pst.executeUpdate();
            out.println("<center><h2>Your Feedback is Much Valuable for us..!!</h2><h3>Thank You For Connecting With Us.<br><br><a href='Stindex1.jsp'>BACK</a>");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>