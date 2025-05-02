<%-- 
    Document   : indatebetween
    Created on : 17 Dec, 2024, 9:45:48 PM
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
         <style>
            table{ 
            height: 350px;
            width: 100%;
            border: 2px double black;
            border-radius: 5px;
            box-shadow: 0  10px 20px rgba(0, 0, 0, 0.5);
            background-color: #dbdbdb;
            }
            th,td{
                border: 1px solid black;
              border-radius: 5px;
              font-size:20px;
            }
            input{
                height: 25PX;
                width: 180PX;
                background-color: lightcyan;
                color: black;
                text-align: center;
                font-size: 20px;
                font-family: 200;
                border-color: darkorchid;
                border-bottom-left-radius: 10px;
                border-top-right-radius: 10px;
             
              
            }
            button{
                width: 70px;
                height: 30px;
                background-color: limegreen ;
                text-align: center;
                font-size: 20px;
                border-radius: 5px;
                color: black;
              
            }
            button:hover{
                background-color: lightskyblue;
                
            }
        </style>
    </head>
    <body>
          <style>
            table{ 
            height: 350px;
            width: 100%;
            border: 2px double black;
            border-radius: 5px;
            box-shadow: 0  10px 20px rgba(0, 0, 0, 0.5);
            background-color: #2dcad5;
            }
            th,td{
                border: 1px solid black;
              border-radius: 5px;
              font-size:20px;
            }
            input{
                height: 25PX;
                width: 180PX;
                background-color: lightcyan;
                color: black;
                text-align: center;
                font-size: 20px;
                font-family: 200;
                border-color: darkorchid;
                border-bottom-left-radius: 10px;
                border-top-right-radius: 10px;
             
              
            }
            button{
                width: 70px;
                height: 30px;
                background-color: limegreen ;
                text-align: center;
                font-size: 20px;
                border-radius: 5px;
                color: black;
              
            }
            button:hover{
                background-color: lightskyblue;
                
            }
        </style> 
    </head>
    <body>
         <%
    
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select STUD_ID, FULL_NAME ,To_char(DOB,'dd-mm-yyyy'),GENDER ,MOB_NO from stdinq WHERE INQ_DATE >SYSDATE ");


    
     %>  
    <center>   
        <h1> Students Information According Last Month</h1>
        <form action="addmission.jsp">
        <table>
         <tr><th><center>Student-Id</th><th><center>Full-Name</th><th><center>Date-Of-Birth</th>
                 <th><center>Gender</th><th><center>Mobile-Number</th><th><center>Click</th>
        </tr>
     <%   
       while(rs.next())
      {   
     %>            
          
         <tr>   <td><center><input type="text" name="id" readonly value="<%=rs.getInt(1)%>"></td>
                <td><center><input type="text" name="fn" readonly value="<%=rs.getString(2)%>"></td> 
                <td><center><input type="text" name="dob" readonly value="<%=rs.getString(3)%>"></td>     
                <td><center><input type="text" name="gen" readonly value="<%=rs.getString(4)%>"></td>  
                <td><center><input type="text" name="mob" readonly value="<%=rs.getLong(5)%>"></center></td>     
                <td><center><button type="submit"  name="ff" value="<%=rs.getInt(1)%>">View</button></td></center>
            </tr>
            
          <%}%>  
          
        </table> 
          </form>
          </center>
    </body>
</html>
