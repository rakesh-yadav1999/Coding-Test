<%-- 
    Document   : Profile
    Created on : 19 Jun, 2020, 5:00:56 PM
    Author     : HP
--%>

<% //importing files  %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    HttpSession hs=request.getSession();  //session variable set
    String name=hs.getAttribute("user").toString();  //getting session value
    try{
        Class.forName("com.mysql.jdbc.Driver");  //loading dynamic classes
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/Coding_Test","root","");  // ensbalishing connection
        PreparedStatement p=con.prepareStatement("select * from Coding_Table where username=?");  //prepare statement for database
        p.setString(1, name);
        ResultSet rs=p.executeQuery(); //execute query
        while(rs.next())
        {
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
    </head>
    <body>
    <center>
        <div style="font-size: 20px;">
            <p>Username is : <%=rs.getString(1)%> </p> <!-- getting the data from database -->
            <p>email is : <%=rs.getString(2)%> </p>
            <p>organization is : <%=rs.getString(3)%> </p>
            <p>DOB is : <%=rs.getDate(4)%> </p>
            <p>gender is : <%=rs.getString(5)%> </p>
            <p>country is : <%=rs.getString(6)%> </p>
            <p>state is : <%=rs.getString(7)%> </p>
            <p>city is : <%=rs.getString(8)%> </p>
        </div>
    </center>
        <% 
                }
            } catch(Exception e){}
        %>
    </body>
</html>
