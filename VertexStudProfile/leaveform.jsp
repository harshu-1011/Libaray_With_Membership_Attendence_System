<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%
    String s_name=request.getParameter("fname");
    String halltype=request.getParameter("halltype");
    String seatno=request.getParameter("seatno");
    String phone=request.getParameter("pno");
    String ldate=request.getParameter("ldate");       

    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(l_id) FROM leave_form;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            session.setAttribute("f_id",c);

            PreparedStatement pst = conn.prepareStatement("insert into leave_form values(?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, s_name);
			pst.setString(3, halltype);
			pst.setString(4, seatno);
            pst.setString(5,phone);			
			pst.setString(6, ldate);

            PreparedStatement pst2 = conn.prepareStatement("update "+halltype+" set status='UnOccupied' WHERE seat_no="+seatno+";");
			pst2.executeUpdate();
			
			pst.executeUpdate();
            out.println("<center><h2>Your Leaving Form Registered..!!</h2><h3>Thank You For Connecting With Us.<br><br><a href='Stindex1.jsp'>BACK</a>");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>