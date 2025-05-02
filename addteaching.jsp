<%-- 
    Document   : addteaching
    Created on : 12 Dec, 2024, 8:07:09 PM
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
       String fname=request.getParameter("fllnm");
       String dob=request.getParameter("dob");
       String gen=request.getParameter("gen");
       
        String mn=request.getParameter("phone");
           long mob=Long.parseLong(mn);
       String cadd=request.getParameter("cadd");
       String padd=request.getParameter("padd");
       String stype=request.getParameter("stype");
       String s=request.getParameter("sal");
       long sal=Long.parseLong(s);
       String jdate=request.getParameter("jdate");
       
       String dept=request.getParameter("deptn");
       long deptno=Long.parseLong(dept);
       
       String uname=request.getParameter("unm");
       String pass=request.getParameter("pass");
       
       Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("insert into staff values (staff_id.nextVal,'"+fname+"','"+dob+"','"+gen+"',"+mn+",'"+cadd+"','"+padd+"','"+stype+"',"+s+",'"+jdate+"',"+dept+",'"+uname+"','"+pass+"')");
          if (result>0)
          { %>
          <center><h1><%="ONE RECORD INSERTED"%></h1></center>
           <% } %>
    </body>
</html>
