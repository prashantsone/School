<%-- 
    Document   : deleteclroom
    Created on : 18 Dec, 2024, 8:01:40 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
               <%
    
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("delete  from classroom where ROOM_NO = "+session.getAttribute("roomno")+" ");

   if (rs.next())
          { %>
          <center><h1><%=" CLASS ROOM DELETE  COMPLITE | THANK YOU  "%></h1></center>
           <% } %>

    
    </body>
</html>