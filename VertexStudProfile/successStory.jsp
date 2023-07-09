<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String fname=request.getParameter("fname");
    String title=request.getParameter("title");
    String story=request.getParameter("story");    

    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(sc_id) FROM success_story;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("sc_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into success_story values(?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, fname);
			pst.setString(3, title);
			pst.setString(4, story);        
			pst.setString(5, timestamp.toString());
			
			pst.executeUpdate();
            out.println("<center><h2>Happy For Your Achievements...!!<br><br><a href='Stindex1.jsp'>BACK</a>");
            
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>