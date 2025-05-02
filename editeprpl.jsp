<%-- 
    Document   : editeprpl
    Created on : 10 Dec, 2024, 11:12:01 PM
    Author     : HP
--%>

<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
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
             String pid = request.getParameter("id");
             int id = Integer.parseInt(pid);
           String fname   = request.getParameter("fllnm");
           String dob     =  request.getParameter("dob");
           String gen     =  request.getParameter("gen");
           String mo      = request.getParameter("phone");
           long mob       = Long.parseLong(mo);
           String curadd  = request.getParameter("cadd");
           String peradd  = request.getParameter("padd");
  
           String staf  = request.getParameter("staf");
           String sal  = request.getParameter("sl");
           long salary = Long.parseLong(sal);
           String dpn = request.getParameter("dn");
           long deptno = Long.parseLong(dpn);
           
           String username  = request.getParameter("unm");
          String password  = request.getParameter("pass");
           
          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("Update  STAFF set FULL_NAME = '"+fname+"', DOB = '"+dob+"',GENDER='"+gen+"',"
                                        + "MOB_NO="+mob+",CURR_ADD='"+curadd+"',PERM_ADD='"+peradd+"',STAF_TYPE='"+staf+"',"
                                        + "USERNAME='"+username+"',PASSWORD='"+password+"',SALARY="+salary+",DEPTNO="+deptno+" where STAFF_ID="+id+" ");
          if (result>0)
          { %>
          <center><h1><%="UPDATE  COMPLITE | THANK YOU  "%></h1></center>
           <% } %>
    </body>
</html>
