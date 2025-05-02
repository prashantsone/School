<%-- 
    Document   : stflogin
    Created on : 10 Dec, 2024, 8:50:11 PM
    Author     : HP
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
   <%  
        String cl = request.getParameter("rno");
        int rno = Integer.parseInt(cl);
        
        String option = request.getParameter("option");
        
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from classroom where ROOM_NO = "+rno+" ");
     
      
    if(rs.next())
           {
               if(option.equals("Update"))
               {   
                   session.setAttribute("roomno", rno);
                   response.sendRedirect("updateclroom.jsp");
               }
               else if(option.equals("Delete"))                              
               { 
                 session.setAttribute("roomno", rno);
                 response.sendRedirect("deleteclroom.jsp");
               }
               else if(option.equals("View"))
               {   
                   session.setAttribute("roomno", rno);
                   response.sendRedirect("viewclroom.jsp");
              }
               
           }
    
     else
     {
         out.print("INVALID ROOM NUMBER<a href='manageeclassroom.html'>PLZ TRY AGAIN</a>");
     }
        
   %>
    </body>
</html>