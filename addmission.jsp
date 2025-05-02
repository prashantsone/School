<%-- 
    Document   : addmission
    Created on : 17 Dec, 2024, 9:28:06 PM
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
    </head>
    <body>
        <%
    String i = request.getParameter("ff");
    int id  = Integer.parseInt(i);
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from stdinq where  STUD_ID = "+id+"");


     
    
    
    while(rs.next())
      {   
        session.setAttribute("sid", id);
     %>  
     
       <div class="form-container">
        <h2>Your Inquiry</h2>
        <form action="fixaddmission.jsp" method="POST">
            
            <label >Student ID</label>
            <input type="text" readonly value="<%=rs.getInt(1)%>" >
            
            <label >Full Name</label>
            <input type="text" readonly value="<%=rs.getString(2)%>" >

            <label >Date Of Birth</label>
            <input type="text" readonly value="<%=rs.getString(3)%>" >

            <label >Gender</label>
            <input type="text" readonly value="<%=rs.getString(4)%>" >

            <label >Phone Number</label>
            <input type="text"  readonly value="<%=rs.getLong(5)%>">
            
            <label >Current Address</label>
            <input type="text"  readonly value="<%=rs.getString(6)%>">
                        
            <label >Permanant Address</label>
            <input type="text"  readonly value="<%=rs.getString(7)%>">
                
             <label >Nationality</label>
            <input type="text"  readonly value="<%=rs.getString(8)%>">
            
            <label >Category</label>
            <input type="text"  readonly value="<%=rs.getString(9)%>">
            
            <label >Religion</label>
            <input type="text"  readonly value="<%=rs.getString(10)%>">
            
            <label >Caste</label>
            <input type="text"  readonly value="<%=rs.getString(11)%>">
            
            <h2> Pervious information</h2>
            
            <label >Pervious Standard </label>
            <input type="text"  readonly value="<%=rs.getString(12)%>">
            
            <label >Persentage</label>
            <input type="text"  readonly value="<%=rs.getDouble(13)%>">
            
            <label >School Name</label>
            <input type="text"  readonly value="<%=rs.getString(14)%>">
            
            <label >School Adress</label>
            <input type="text"  readonly value="<%=rs.getString(15)%>">
            
            <h2> Inquiry For New School</h2>
            
            <label >New Standard </label>
            <input type="text"  readonly value="<%=rs.getString(16)%>">
            
 
            <label >Branch</label>
            <input type="text"  readonly  value="<%=rs.getString(17)%>">
            
            <label >Division</label>
            <input type="text"  value="<%=rs.getString(18)%>">
            
            <label >MEDIUM</label>
            <input type="text"  readonly="" value="<%=rs.getString(19)%>">
            
            
           <!-- <label >Username</label>
            <input type="text"  value="">
            
            <label >Password</label>
            <input type="text"  value="">  -->
            
            
            <button type="submit" >Go To Addmition</button>
        </form>
    </div>
     
     
            <%
                }

           %>
    
    </body>
</html>
