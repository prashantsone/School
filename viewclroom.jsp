<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
    background-color: #ffff;
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
    
      
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
    Statement stmt = con.createStatement();
    ResultSet rs = stmt.executeQuery("select * from classroom where ROOM_NO = "+session.getAttribute("roomno")+" ");


    while(rs.next())
      {   
     %>  
     
        
        
        
       <div class="form-container">
        <h2>Class Room</h2>
        <form action="managee.html" method="POST">
            
            <label >Room-Number : </label>
            <input type="text" name="roomno" readonly value="<%= rs.getInt(1)%>"> 
            
            <label >Floor-Numer : </label>
            <input type="text" name="floorno"readonly value="<%= rs.getInt(2)%>">

            <label >Bench-Quantity : </label>
            <input type="text" name="benchno" readonly value="<%= rs.getInt(3)%>" > 
            
            <label >Cubord-Quantity : </label>
            <input type="text" name="cubordno" readonly value="<%= rs.getInt(4)%>" > 
            
            <label >Chair-Quantity : </label>
            <input type="text" name="chairqty" readonly value="<%= rs.getInt(5)%>"> 
            
            <label >Fan-Quantity : </label>
            <input type="text" name="fanqty" readonly value="<%= rs.getInt(6)%>" >          

            <label >Projectors : </label>
             <select id="gender" name="projector" readonly value="<%= rs.getInt(7)%>">
            <option  disabled >Select Project-Quantity</option>
            <option value="1" >1</option>
            <option value="2">2</option>
            </select>

           <label >Computers : </label>
             <select id="gender" name="computer" readonly value="<%= rs.getInt(8)%>" >
            <option  disabled >Select Computer-Quantity</option>
            <option value="1" >1</option>
            <option value="2">2</option>
            </select>
            
           <label >Setting-Capacity : </label>
             <select id="gender" name="capacity" readonly value="<%= rs.getInt(9)%>" >
            <option  disabled >Select Settion-Capacity</option>
            <option value="40" >40</option>
            <option value="60">60</option>
            <option value="70">70</option>
            <option value="80">80</option>
            </select>
           
            <label >Standerd : </label>
            <input type="text" name="std" readonly value="<%= rs.getString(10)%>" > 
            
             
            
            <label >Table-Quantity : </label>
            <input type="text" name="table" readonly value="<%= rs.getInt(11)%>">
            
            <label >Bulbs-Quantity : </label>
            <input type="text" name="bulbs" readonly value="<%= rs.getInt(12)%>" > 
            
            <label >Division : </label>
             <select id="gender" name="div" readonly value="<%= rs.getString(13)%>">
            <option  disabled >Select Division</option>
            <option value="A" >A</option>
            <option value="B">B</option>
            <option value="C">C</option>
            <option value="D">D</option>
            </select>
           
            <button type="submit">Close Tsp</button>
        </form>
    </div>
     
 <%}%>
     
    </body>
</html>