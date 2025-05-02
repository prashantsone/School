<%-- 
    Document   : upprin
    Created on : 11 Dec, 2024, 10:58:37 PM
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
             String pid = request.getParameter("id");
             int id = Integer.parseInt(pid);
           String fname   = request.getParameter("fllnm");
           String dob     =  request.getParameter("dob");
           String gen     =  request.getParameter("gen");
          String mn=request.getParameter("phone");
           long mob=Long.parseLong(mn);
           String curadd  = request.getParameter("cadd");
           String peradd  = request.getParameter("padd");
  
           String stype  = request.getParameter("stype");
           String s  = request.getParameter("sal");
           long sal = Long.parseLong(s);
           String dept = request.getParameter("d");
           long deptno = Long.parseLong(dept);
           
           String username  = request.getParameter("unm");
          String password  = request.getParameter("pass");
           
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("Update  STAFF set FULL_NAME = '"+fname+"', DOB = '"+dob+"',GENDER='"+gen+"',"
                                        + "MOB_NO="+mn+",CURR_ADD='"+curadd+"',PERM_ADD='"+peradd+"',STAF_TYPE='"+stype+"',"
                                        + "USERNAME='"+username+"',PASSWORD='"+password+"',SALARY="+sal+",DEPTNO="+dept+" where STAFF_ID="+id+" ");
          if (result>0)
          { %>
          <center><h1><%="UPDATE  COMPLITE | THANK YOU  "%></h1></center>
           <% } %>
    </body>
</html>
