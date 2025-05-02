<%-- 
    Document   : newregi
    Created on : 10 Dec, 2024, 9:51:15 PM
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
       String nation=request.getParameter("nation");
       String cat=request.getParameter("catgry");
       String rele=request.getParameter("religion");
       String cast=request.getParameter("cast");
       String pstd=request.getParameter("pstand");
       String p=request.getParameter("per");
       long per=Long.parseLong(p);
       String sname=request.getParameter("psnm");
       String psadd=request.getParameter("psadd");
       String nstd=request.getParameter("newstd");
       String br=request.getParameter("branch");
       String div=request.getParameter("div");
       String medi=request.getParameter("medium");
       String uname=request.getParameter("unm");
       String pass=request.getParameter("pass");
       String idate=request.getParameter("dt");
       
       Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("insert into stdinq values (stud_id.nextVal,'"+fname+"','"+dob+"','"+gen+"',"+mn+",'"+cadd+"','"+padd+"','"+nation+"','"+cat+"','"+rele+"','"+cast+"','"+pstd+"',"+p+",'"+sname+"','"+psadd+"','"+nstd+"','"+br+"','"+div+"','"+medi+"','"+uname+"','"+pass+"','"+idate+"')");
          if (result>0)
          { %>
          <center><h1><%="ONE RECORD INSERTED"%></h1></center>
           <% } %>
       
         
       
            
      
    </body>
</html>
