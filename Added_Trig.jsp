<%-- 
    Document   : super41
    Created on : 11 Nov, 2018, 10:05:01 AM
    Author     : naman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            .button {
    background-color: greenyellow;
    border: none;
    color: white;
    padding: 12px 26px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
         body,html{
                height: 200%;
                background:url("images/wall2.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
        </style>
        
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1><font face="comic sans ms" size="4" color="maroon">Congrats! You are a part of the World's most reliable shopping site!<font/></h1> 
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <% String q1= "CREATE OR REPLACE trigger red "
                      + "BEFORE INSERT ON books "
                      + "FOR EACH ROW "
                      + "DECLARE "
                      + "x NUMBER(3); "
                      + "BEGIN "
                      + "SELECT bookid INTO x FROM BOOKS; "
                      + "IF x=:NEW.bookid THEN "
                      + "x=x+1;"
                      + "END IF; "
                      + "END;";  %>
         <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs;%>
        <% String p=request.getParameter("a");
           String b=request.getParameter("b");
           String c=request.getParameter("c");
           String d=request.getParameter("d");
           String q=request.getParameter("e");
           String r=request.getParameter("f");
           String s=request.getParameter("g"); 
           int a=Integer.parseInt(p);
           int e=Integer.parseInt(q);
           int f=Integer.parseInt(r);
           int g=Integer.parseInt(s);
        String query="";
        int flag=0;%>
        <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              query="INSERT INTO books values("+a+",'"+b+"','"+c+"','"+d+"',"+e+","+f+","+g+")";
              st.executeUpdate(query);
              if(flag==2)
                  st.execute(q1);
                               }
        catch(SQLException j)
                   {
          out.println();
        flag=1;
        %>
          <p>Entered Bookid is already present in the Database</p>
          <%}
              conn.close();
          if(flag==0){%>
        <p>Updated Successfully!</p>
        <%}%>
        <a href="Super_Opt.jsp" class="button"> <b><font size="36" color="red"> Add more... </b></a><br><br>

    </body>
</html>
