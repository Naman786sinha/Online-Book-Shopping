<%-- 
    Document   : super3
    Created on : 10 Nov, 2018, 3:01:12 PM
    Author     : naman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            table, th {
    border: 1px solid black;
    background-color: red;
}
   table, td {
    padding: 15px;
     border: 1px solid black;
    text-align: left;
}
table#t1 {   
    background-color: slateblue;
    
}
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
        <p><font face="comic sans ms" size="4" color="aqua">Congrats! You are a part of the World's most reliable shopping site!</font></p> 
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;%>
        <%   String x=request.getParameter("view");
        String query,c3="",c5="",c6="",g2="",b2="",b3="";
        String b4="",o3="",o4="",od4="";
        String od5="",p4="",p5="",altdate1,altdate2;
        int c1=0,c2=0;
        long c4=0;
        int g1=0;
        int b1=0,b5=0,b6=0,b7=0;
        int o1=0,o2=0;
        int od1=0,od2=0,od3=0;
        int p1=0,p2=0,p3=0;
        %>
         <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
               switch(x){
              
                  case "Customer":
              { 
                  query="select * from customer order by custid";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Customers Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                 <thead>
                <tr><th><font face="ink free"  size="4">Customer_Id</th>
                    <th><font face="ink free"  size="4">Password</th>
                    <th><font face="ink free"  size="4">Name</th>
                    <th><font face="ink free"  size="4">Phone</th>
                    <th><font face="ink free"  size="4">E-mail</th>
                    <th><font face="ink free"  size="4">Address</th>
                </tr>
                </thead>
                 <% while(rs.next()){
                c1=rs.getInt(1);
                c2=rs.getInt(2);
                c3=rs.getString(3);
                c4=rs.getLong(4);
                c5=rs.getString(5);
                c6=rs.getString(6);
                 %>
                 <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=c1%></td>
                   <td><font face="ink free" color="black" size="4"><%=c2%></td>
                   <td><font face="ink free" color="black" size="4"><%=c3%></td>
                   <td><font face="ink free" color="black" size="4"><%=c4%></td>
                   <td><font face="ink free" color="black" size="4"><%=c5%></td>
                   <td><font face="ink free" color="black" size="4"><%=c6%></td>
               </tr>
<%}%>
</tbody>
       </table>
        <% break;}
case "Genres":
{
                  query="select * from genres order by genreid";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Genres Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                 <thead>
                <tr><th><font face="ink free"  size="4">Genre_Id</th>
                    <th><font face="ink free"  size="4">Genre</th>
                </tr>
                </thead>
                 <% while(rs.next()){
                g1=rs.getInt(1);
                g2=rs.getString(2);
                 %>
                 <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=g1%></td>
                   <td><font face="ink free" color="black" size="4"><%=g2%></td>
               </tr>
<%}%>
</tbody>
       </table>
        <% break;}
case "Books":
{
                   query="select * from books order by genreid";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Books Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                 <thead>
                <tr><th><font face="ink free"  size="4">Genre_id</th>
                    <th><font face="ink free"  size="4">Book_id</th>
                    <th><font face="ink free"  size="4">Title</th>
                    <th><font face="ink free"  size="4">Author</th>
                    <th><font face="ink free"  size="4">Publisher</th>
                    <th><font face="ink free"  size="4">Price</th>
                    <th><font face="ink free"  size="4">Quantity in Stock</th>
                </tr>
                </thead>
               <% while(rs.next()){
                b1=rs.getInt(1);
                b2=rs.getString(2);
                b3=rs.getString(3);
                b4=rs.getString(4);
                b5=rs.getInt(5);
                b6=rs.getInt(6);
                b7=rs.getInt(7);
                %>
                <tbody>
               <tr>
                   <td><font face="ink free" color="black" size="4"><%=b5%></td>
                   <td><font face="ink free" color="black" size="4"><%=b1%></td>
                   <td><font face="ink free" color="black" size="4"><%=b4%></td>
                   <td><font face="ink free" color="black" size="4"><%=b2%></td>
                   <td><font face="ink free" color="black" size="4"><%=b3%></td>
                   <td><font face="ink free" color="black" size="4"><%=b6%></td>
                   <td><font face="ink free" color="black" size="4"><%=b7%></td>
               </tr>
<%}%>
</tbody>
       </table>
  <% break;}
 case "Orders" :
{
                  query="select * from orders order by custid";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Orders Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                      <thead>
                <tr><th><font face="ink free"  size="4">Cust_id</th>
                    <th><font face="ink free"  size="4">Ord_no</th>
                    <th><font face="ink free"  size="4">Ord_date</th>
                    <th><font face="ink free"  size="4">Del_date</th>
                </tr>
                      </thead>
               <% while(rs.next())
                {
                o1=rs.getInt(1);
                o2=rs.getInt(2);
                o3=rs.getString(3);
                o4=rs.getString(4);
                altdate1=o3.substring(0,10);
                altdate2=o4.substring(0,10);
       %>
       <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=o1%></td>
                   <td><font face="ink free" color="black" size="4"><%=o2%></td>
                   <td><font face="ink free" color="black" size="4"><%=altdate1%></td>
                   <td><font face="ink free" color="black" size="4"><%=altdate2%></td>
               </tr>
<%}%>
</tbody>
       </table>
                   <% break;}
case "Payments" :
{
                  query="select * from payments order by ordno";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Payments Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                 <thead>
                <tr><th><font face="ink free"  size="4">Ord_no</th>
                    <th><font face="ink free"  size="4">Cust_id</th>
                    <th><font face="ink free"  size="4">Tot_Amnt</th>
                    <th><font face="ink free"  size="4">Paymode</th>
                    <th><font face="ink free"  size="4">Status</th>
                </tr>
                 </thead>
               <% while(rs.next()){
                p1=rs.getInt(1);
                p2=rs.getInt(2);
                p3=rs.getInt(3);
                p4=rs.getString(4);
                p5=rs.getString(5);
       %>
                        <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=p1%></td>
                   <td><font face="ink free" color="black" size="4"><%=p2%></td>
                   <td><font face="ink free" color="black" size="4"><%=p3%></td>
                   <td><font face="ink free" color="black" size="4"><%=p4%></td>
                   <td><font face="ink free" color="black" size="4"><%=p5%></td>
               </tr>
<%}%>
</tbody>
       </table>
        <%break; }
                    case "Order_details" :
{
                  query="select * from order_details order by ordno,bookid";
                  ResultSet rs=st.executeQuery(query);%>
                  <font face="ink free" color="black" size="6">The Order_details Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7" id="t1">
                 <thead>
                <tr><th><font face="ink free"  size="4">Ord_no</th>
                    <th><font face="ink free"  size="4">Book_id</th>
                    <th><font face="ink free"  size="4">Price</th>
                    <th><font face="ink free"  size="4">Quantity</th>
                    <th><font face="ink free"  size="4">Amount</th>
                </tr>
                 </thead>
                <%while(rs.next()){
                od1=rs.getInt(1);
                od2=rs.getInt(2);
                od3=rs.getInt(3);
                od4=rs.getString(4);
                od5=rs.getString(5);
       %>
       <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=od1%></td>
                   <td><font face="ink free" color="black" size="4"><%=od2%></td>
                   <td><font face="ink free" color="black" size="4"><%=od3%></td>
                   <td><font face="ink free" color="black" size="4"><%=od4%></td>
                   <td><font face="ink free" color="black" size="4"><%=od5%></td>
               </tr>
<%}%>
</tbody>
       </table>
        <%}
}
}
catch(Exception j){
          out.println(j);
}
        %><br> 
        <a href="Super_Opt.jsp" class="button"> <b> Back </a>
        <br> <a href="Home.jsp" class="button"> <b> Log Out </a>
        </body>
</html>
