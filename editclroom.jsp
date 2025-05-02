<%-- 
    Document   : editeclroom
    Created on : 18 Dec, 2024, 7:30:22 PM
    Author     : HP
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
            String clrm  = request.getParameter("roomno");
            int rno      = Integer.parseInt(clrm);

            String fl    = request.getParameter("floorno");
            int fno      = Integer.parseInt(fl);
            
            String bn    = request.getParameter("benchno");
            int bno      = Integer.parseInt(bn);
            
            String cq    = request.getParameter("cubordno");
            int cqt      = Integer.parseInt(cq);
        
            String chq   = request.getParameter("chairqty");
            int chir     = Integer.parseInt(chq);
            
            String fq    = request.getParameter("fanqty");
            int fqty     = Integer.parseInt(fq);
        
            String pq    = request.getParameter("projector");
            int pqty     = Integer.parseInt(pq); 
            
            String cot   = request.getParameter("computer");
            int cqty     = Integer.parseInt(cot);
            
            String cap   = request.getParameter("capacity");
            int ccity    = Integer.parseInt(cap);

            String stand  = request.getParameter("std");
            
            
            
            

            String tab   = request.getParameter("table");
            int table    = Integer.parseInt(tab);
            
            String blb   = request.getParameter("bulbs");
            int blubs    = Integer.parseInt(blb);
            
            String div     = request.getParameter("div");

          Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
          Statement stmt = con.createStatement();
          int result = stmt.executeUpdate("update  classroom set FLOOR="+fno+",BENCH_NO="+bno+","
                  + "CUBORD_NO="+cqt+", CHAIR_NO="+chir+",FAN_NO="+fqty+",PROJECTOR_NO="+pqty+",COMPUTER_NO="+cqty+","
                  + "SEAT_CAPACITY="+ccity+",STD='"+stand+"', TABLE_NO="+table+", BULBS_NO="+blubs+",DIV='"+div+"' where ROOM_NO="+rno+" ");
          if (result>0)
          { %>
          <center><h1><%="ROOM UPDATE  COMPLITE | THANK YOU  "%></h1></center>
           <% } %>

        
    </body>
</html>