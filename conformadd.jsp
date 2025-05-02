<%-- 
    Document   : conformadd
    Created on : 17 Dec, 2024, 10:11:26 PM
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
            *{
                margin:0;
                padding:0;
            }
            .container{
                background-color:#ffff;
                padding:50px;
                margin:20px;
                display: -webkit-box;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                flex-direction: column;
                border-radius: 4px;
                box-shadow: 0 2px 25px rgba(0, 0, 0, 0.2);
                
            }
            p{
                padding:10px;
            }
            .fullname{
                display:flex;
                justify-content:space-around;
                align-item:center;
            }
            .name{
                padding-right:10px;
            }
            .fname{
                padding-left:10px;
            }
            .address{
                padding-right:10px;
                padding-left:25px;
            }
            .category{
                padding-left:70px;
            }
            .religion{
                padding-left:70px;
            }
            .a{
                padding-left:10px;
                padding-right:10px;
                padding-top:5px;
                padding-bottom:5px;
                
            }
            
            </style>
       
    </head>
    <body>
               <%
            
           
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
            Statement stmt=con.createStatement();
            ResultSet rs=stmt.executeQuery("select STUD_ID,FULL_NAME,to_char(DOB,'dd-mm-yyyy'),GENDER,MOB_NO,CURR_ADD,PERM_ADD,NATIONALITY,CATEGORY,RELIGION,CASTE,PREV_STD,PER,SCH_NAME,SCH_ADD,NEW_STD,BRANCH,DIV,MEDIUM,USERNAME,PASSWORD,to_char(INQ_DATE,'dd-mm-yyyy') from stdinq  where stud_id= "+session.getAttribute("idno")+" ");
            if(rs.next())
            {
                
                
             %>   
             <form action="admission.jsp">
        <div class="container">
           <CENTER> <h1>STUDENT ADDMISSION FORM</h1><BR>
                
         
        <div class="fullname">
         
          <div class="name"> STUD_ID</div><div class="fname"><input type="text" name="studid" class="name" value="<%=rs.getInt(1)%>"></div>  
          <div class="name"> Adhar No</div><div class="fname"><input type="text" name="adharno" class="name"></div>  
        </div>
          
            <br><br>
            
       
        
        <div class="fullname">
            <div class="name"> 10th_Id_NO</div><div class="fname"><input type="text" name="tnidno" class="name"></div>  
            <div class="address">Admitted Year</div><div class="fname"><select name="admityear">
                                        <option value="------selected/">
                                        <option value="***">-----
                                        <option value="2022">2022
                                        <option value="2023">2023
                                        <option value="2024">2024
                                       </select> </div>        
            
             <div class="address">Academic Year</div><div class="fname"><select name="academicy">
                                        <option value="------selected/">
                                        <option value="***">-----
                                        <option value="2022-2023">2022-2023
                                        <option value="2023-2024">2023-2024
                                        <option value="2024-2025">2024-2025
                                       </select> </div>        
        </div><br><br>
        
        <div class="fullname">
            <div class="address">Paying-NonPaying</div><div class="fname"><select name="pnonp">
                                        <option value="------selected/">
                                        <option value="***">-----
                                        <option value="Paying">Paying
                                        <option value="Non-Paying">Non-Paying                                      
                                       </select> </div>                    
        </div><br>
        <hr size=2 color=black><br>
            <CENTER><H3>PERSONAL INFORMATION</H3><BR>
        <div class="fullname">
            <div class="name"> Fullname</div><div class="fname"><input type="text" name="fullname" class="name" value="<%= rs.getString(2)%>"></div>
            <div class="name"> Mother Name</div><div class="fname"><input type="text" name="mothernm" class="name"></div>
            <div class="religion">Religion</div><div class="fname"><input type="text" name="religion" value="<%=rs.getString(10)%>"></div>

        </div>
            <br><br>
            
        <div class="fullname">
            <div class="category">Category</div><div class="fname"><input type="text" name="category" value="<%=rs.getString(9)%>"></div>
            <div class="name">Cast</div><div class="fname"><input type="text" name="cast" value="<%= rs.getString(11)%>"></div>
            <div class="address">gender</div><div class="fname"><select name="gender" value="<%=rs.getString(4)%>">
                                        <option value="------selected/">
                                        <option value="***">-----
                                        <option value="M">M
                                        <option value="F">F
                                       </select> </div> 
        </div><br><br>
        
        <div class="fullname">
            <div class="name">Nationality</div><div class="fname"><select name="country" value="<%=rs.getString(8)%>">
                    <option value="-------selected/">
                    <option value="**">--------
                    <option value="india">IND
                    <option value="Shrilanka">SRI
                    <option value="America">USA
                    <option value="Bangladesh">BAG
                    <option value="Germany">GER</select></div>
           <div class="name">State</div><div class="fname"><input type="text" name="state"></div>
           <div class="name">City</div><div class="fname"><input type="text" name="city"></div>
        </div><br><br>   
           
        <div class="fullname">
           <div class="name">Date-of-birth</div><div class="fname"><input type="text" name="dob" value="<%= rs.getString(3)%>"></div>            
           <div class="name">Mobile No</div><div class="fname"><input type="text" name="mobno" value="<%= rs.getLong(5)%>"></div>
           <div class="name">Email Id</div><div class="fname"><input type="email" name="email"></div>
           </div><br><br>
           
           <div class="fullname">
               
           <div class="address">Present Address</div><div class="fname"><input type="text" name="presentAddress" value="<%= rs.getString(6)%>"></div>
           <div class="address">Permanant Address</div><div class="fname"><input type="text" name="permanantAddress" value="<%= rs.getString(7)%>"></div>
          </div>
            <br>
          <div class="fullname">
             
            </div>
            <br><hr size=2 color=black> <br>
            <center><H3>PREVIOUS SCHOOL INFORMATION</H3><BR>
             <div class="fullname">
                 <div class="address">Previous Std</div><div class="fname"><input type="text" name="prestd" value="<%=rs.getString(12)%>"></div>
                 <div class="address">Percentage</div><div class="fname"><input type="text" name="percentage" value="<%= rs.getDouble(13)%>"></div>
            </div>
          
           <br><br>
           
           
               
           <div class="fullname">
          
           
           <div class="address">School Name</div><div class="fname"><input type="text" name="schoolname" value="<%=rs.getString(14)%>"></div>
            <div class="name">Sch Address</div><div class="fname"><input type="text" name="saddress" value="<%=rs.getString(15)%>"></div>
          </div>
            <br>
          
              <br> <hr size=1 color=black><br>
              
              <CENTER><H3>NEW INFORMATION</H3><BR>
                  
                  <div class="fullname">
                      <div class="name">New Standard</div><div class="fname"><input type="text" name="standard" value="<%=rs.getString(16)%>"></div>
                      <div class="address">Branch</div><div class="fname"><input type="text" name="branch" value="<%=rs.getString(17)%>"></div>
                      <div class="address">Division</div><div class="fname"><select name="division" value="<%=rs.getString(18)%>">
                     <option value="-------selected/">
                    <option value="**">--------
                    <option value="A">A
                    <option value="B">B
                    <option value="C">C</select></div>
           
                     <div class="address">Medium</div><div class="fname"><select name="medium" value="<%=rs.getString(19)%>">
                     <option value="-------selected/">
                    <option value="null">No
                    <option value="**">--------
                    <option value="marathi">Marathi
                    <option value="english">English
                    <option value="semi">Semi</select></div>
          </div><br>
           
        <div class="fullname">
            <div class="name"> Subject Group</div><div class="fname"><input type="text" name="subgroup"></div>
            <div class="name"> Username</div><div class="fname"><input type="text" name="username" value="<%=rs.getString(20)%>"></div>
            <div class="address">Password</div><div class="fname"><input type="text" hidden name="password" value="<%=rs.getString(21)%>"></div>
            <div class="address">Inquiry date</div><div class="fname"><input type="text" name="In_date" value="<%=rs.getString(22)%>"></div>
             </div><br><br>
          
             <center><input type="submit" value="Admission confirm" class="a">
                    
                 
            
        </div>
                 
        <%
            }
        %>
    </body>
    </body>
</html>
