<%-- 
    Document   : admission
    Created on : 18 Dec, 2024, 10:56:23 PM
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
           String STUD_ID=request.getParameter("studid");
           int studid=Integer.parseInt(STUD_ID);          
           String fullname=request.getParameter("fullname");         
           String MOTHER_NAME=request.getParameter("mothername");          
           String DOB=request.getParameter("dob");          
           String GENDER=request.getParameter("gender");          
            String MOBi_NO=request.getParameter("mobno");
           long MOB_NO=Long.parseLong(MOBi_NO);          
           String CURR_ADD=request.getParameter("presentAddress");           
           String PERM_ADD=request.getParameter("permanantAddress");          
           String NATIONALITY=request.getParameter("country");         
           String CATEGORY=request.getParameter("category");          
           String RELIGION=request.getParameter("religion");          
           String CASTE=request.getParameter("cast");          
           String PREV_STD=request.getParameter("prestd");           
           String PERC=request.getParameter("percentage");
           double PER=Double.parseDouble(PERC);          
           String SCH_NAME=request.getParameter("schoolname");          
           String SCH_ADD=request.getParameter("saddress");           
           String NEW_STD=request.getParameter("standard");           
           String BRANCH=request.getParameter("branch");
           String DIV=request.getParameter("division");
           String MEDIUM=request.getParameter("medium");
           String INQUIRY_D=request.getParameter("In_date");
           String USERNAME=request.getParameter("username");
           String PASSWORD=request.getParameter("password");         
                    
           String ADHAR_NO=request.getParameter("adharno");
           long adharno=Long.parseLong(ADHAR_NO);          
                      
                   
           String TENTH_ID_NO=request.getParameter("tnidno");
           long tnidno=Long.parseLong(TENTH_ID_NO);          
           String ADMIT_Y=request.getParameter("admityear");
           String ACADEMIC_Y=request.getParameter("academicy");
           String STATE=request.getParameter("state");
           String CITY=request.getParameter("city");
           String EMAIL_ID=request.getParameter("email");
           String TYPE_PAYING=request.getParameter("pnonp");
           String SUBJECT_GROUP=request.getParameter("subgroup");

           Class.forName("oracle.jdbc.driver.OracleDriver");
           Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","leo","leo123");
           Statement stmt=con.createStatement();
           int result=stmt.executeUpdate("insert into admission values("+studid+",'"+fullname+"',"
                   + "'"+MOTHER_NAME+"','"+DOB+"','"+GENDER+"',"+MOB_NO+",'"+CURR_ADD+"','"+PERM_ADD+"',"
                   + "'"+NATIONALITY+"','"+CATEGORY+"','"+RELIGION+"','"+CASTE+"','"+PREV_STD+"',"+PER+","
                   + "'"+SCH_NAME+"','"+SCH_ADD+"','"+NEW_STD+"','"+BRANCH+"','"+DIV+"','"+MEDIUM+"',"
                   + "'"+INQUIRY_D+"','"+USERNAME+"','"+PASSWORD+"',U_I_D.nextval,systimestamp,"+adharno+","
                   + "G_R_NO.nextval,UDISE_NO.nextval,"+tnidno+",'"+ADMIT_Y+"','"+ACADEMIC_Y+"','"+STATE+"',"
                   + "'"+CITY+"','"+EMAIL_ID+"','"+TYPE_PAYING+"','"+SUBJECT_GROUP+"')");
           
            if(result>0)
            {
                out.print("admission confirm successfully");
            }
 
       %>
    </body>
</html>
