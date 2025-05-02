<%-- 
    Document   : deleteprin
    Created on : 12 Dec, 2024, 11:23:33 AM
    Author     : prash
--%>

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
           String mn=request.getParameter("phone");
           long mob=Long.parseLong(mn);
            
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
        Statement stmt = con.createStatement();
        int result = stmt.executeUpdate("delete from staff where   MOB_NO = "+mn+"");


       if (result>0)
        { %>  
        <center><h1><%="ONE RECORD DELETE"%></h1></center>
        <% } %>
    </body>
</html>
