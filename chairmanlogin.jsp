<%-- 
    Document   : chairmanlogin
    Created on : 10 Dec, 2024, 10:45:14 PM
    Author     : prash
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
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
        String jobpro = request.getParameter("job");
        String name = request.getParameter("un");
        String pass = request.getParameter("ps");
        
       
      Class.forName("oracle.jdbc.driver.OracleDriver");
      Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
      Statement stmt = con.createStatement(); 
      ResultSet rs = stmt.executeQuery("select * from staff where STAF_TYPE = '"+jobpro+"' and USERNAME = '"+name+"' and PASSWORD = '"+pass+"'");
     
   if(rs.next())
           {
               if(jobpro.equals("chairman"))
               {
                   response.sendRedirect("coperation.html");
               }
               else if(jobpro.equals("principle"))
               {
                   response.sendRedirect("poperation.html");
               }
               else if(jobpro.equals("teaching"))
               {
                   response.sendRedirect("teachoperation.html");
    
              }
               else if (jobpro.equals("nonteach"))
               {
                   response.sendRedirect("nonteachopration.html");
               }
           }
    
     else
     {
         out.print("INVALID PASSWORD<a href='stafflogin.html'>PLZ TRY AGAIN</a>");
     }
        
   %>
    </body>
</html>
