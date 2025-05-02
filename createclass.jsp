<%-- 
    Document   : createclass
    Created on : 21 Dec, 2024, 12:42:19 AM
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
       String rname=request.getParameter("rn");
       long rno=Long.parseLong(rname);
       
       String floor=request.getParameter("fl");
       long flr=Long.parseLong(floor);
       
       String benchno=request.getParameter("bn");
       long bno=Long.parseLong(benchno);
       
       String cbno=request.getParameter("cubno");
       long cn=Long.parseLong(cbno);
       
       String chair=request.getParameter("chno");
       long cno=Long.parseLong(chair);
       
       String fan=request.getParameter("fno");
       long fn=Long.parseLong(fan);
       
       String prono=request.getParameter("pjtno");
       long pn=Long.parseLong(prono);
       
       String com=request.getParameter("cno");
       long comno=Long.parseLong(com);
       
       String seatc=request.getParameter("sc");
       long sec=Long.parseLong(seatc);
       
       String std=request.getParameter("st");
       
       String tabno=request.getParameter("tno");
       long tbno=Long.parseLong(tabno);
       
       String bulb=request.getParameter("bno");
       long blno=Long.parseLong(bulb);
       
       String div=request.getParameter("div");
       
       
        Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("insert into classroom values ("+rname+","+floor+","+benchno+","+cbno+","+chair+","+fan+","+prono+","+com+","+seatc+",'"+std+"',"+tabno+","+bulb+",'"+div+"')");
          if (result>0)
          { %>
          <center><h1><%="ONE RECORD INSERTED"%></h1></center>
           <% } %>
       
       
     
    </body>
</html>
