<%-- 
    Document   : updateprpl
    Created on : 10 Dec, 2024, 10:52:13 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
            <style>
    * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
    padding: 40px;
}

.form-container {
    background-color: #dbdbdb;
    width: 100%;
    max-width: 400px;
    margin: 0 auto;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0  4px 8px black;
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
}

label {
    font-size: 14px;
    color: #333;
    margin-bottom: 5px;
    display: block;
}

input, textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ddd;
    border-radius: 4px;
    font-size: 14px;
}

input {
    height: 30px;
}

textarea {
    resize: vertical;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    width: 100%;
}

button:hover {
    background-color: #45a049;
}
#gender{
    height: 30px;
}

</style>
        
        <title>JSP Page</title>
    </head>
    <body>
        <%
     String mn = request.getParameter("mn");
     long mobno = Long.parseLong(mn);
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select STAFF_ID,FULL_NAME, To_char(DOB,'dd-mm-yyyy'),GENDER,MOB_NO,CURR_ADD,PERM_ADD,STAF_TYPE,SALARY ,To_char(JOINING_D,'dd-mm-yyyy'),DEPTNO, USERNAME,PASSWORD from staff where MOB_NO = "+mobno+" ");


    while(rs.next())
      {   
     %>  
     
       <div class="form-container">
        <h2>Add Principal</h2>
        <form action="editeprpl.jsp" method="POST">
            
            <label >STAFF_ID</label>
            <input type="text" name="id" readonly value="<%=rs.getInt(1)%>" required>
            
            <label >Full Name:</label>
            <input type="text" name="fllnm" value="<%=rs.getString(2)%>" required>

            <label >Date Of Birth</label>
            <input type="text" name="dob"  value="<%=rs.getString(3)%>" required>

            <label >Gender</label>
             <select id="gender" name="gen" required value="<%=rs.getString(4)%>">
            <option  disabled selected>Select your gender</option>
            <option value="M">M</option>
            <option value="F">F</option>
            </select>

            <label >Phone Number:</label>
            <input type="text"  name="phone" value="<%=rs.getLong(5)%>">
            
            <label >Current Address:</label>
            <input type="text"  name="cadd" value="<%=rs.getString(6)%>">
                        
            <label >Permanant Address:</label>
            <input type="text"  name="padd" value="<%=rs.getString(7)%>">
                
            <label >Staf Type</label>
            <input type="text" name="staf" readonly  value="<%=rs.getString(8)%>">
            
            <label >Salary</label>
            <input type="text" name="sl" value="<%=rs.getLong(9)%>">
            
            <label >Joining Date</label>
            <input type="text" name="jd" readonly="" value="<%=rs.getString(10)%>">
            
            <label >Department Number</label>
            <input type="text" name="dn"  readonly="" value="<%=rs.getLong(11)%>">
            
            <label >Username</label>
            <input type="text" name="unm" value="<%=rs.getString(12)%>">
            
            <label >Password</label>
            <input type="text" name="pass" value="<%=rs.getString(13)%>">
            
            
            <button type="submit">Confirm Edite</button>
        </form>
    </div>
     
     
            <%
                }

           %>
     
     
     
     
     
     
     
     
     
     
     
    </body>
</html>
