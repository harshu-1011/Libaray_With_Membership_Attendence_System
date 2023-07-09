<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*,java.util.*"%>
    <%    
    String stud_name=request.getParameter("fname");
    String m_name=request.getParameter("m_name");
    String m_price=request.getParameter("amt");
    String m_facility=request.getParameter("m_facility");
    String endDate=request.getParameter("endDate");
    String startDate=request.getParameter("startDate");
    
    String phone=request.getParameter("pno");
    String amt=request.getParameter("amt");
    
    Timestamp timestamp = new Timestamp(System.currentTimeMillis());
    try
    {
             Class.forName("com.mysql.jdbc.Driver");    
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/reading_hall", "root", "");

            Statement stmt=conn.createStatement();

            ResultSet rs=stmt.executeQuery("SELECT count(r_id) FROM renewal;");
            int c = 0,cnt=0;
            while(rs.next())  {
            cnt = Integer.parseInt(rs.getString(1));      
            }            
            c = cnt+1;
            
            PreparedStatement pst = conn.prepareStatement("insert into renewal values(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, Integer.toString(c));
            pst.setString(2, stud_name);
			pst.setString(3, m_name);
			pst.setString(4, m_facility);
            pst.setString(5,startDate);
			pst.setString(6, endDate);
			pst.setString(7, amt);
			pst.setString(8, phone);
			pst.setString(9, timestamp.toString());
			
			pst.executeUpdate();
            out.println("Data is successfully inserted!");
            response.sendRedirect("payment.html");
}
                catch(Exception e)
                {
                        out.print(e);
                        e.printStackTrace();
                                                                                                      }
                             %>