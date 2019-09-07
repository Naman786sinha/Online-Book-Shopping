<%-- 
    Document   : track2
    Created on : 14 Nov, 2018, 10:25:30 PM
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
                height: 150%;
                background:url("images/wall2.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
            div {
    background-color: hsla(290,100%,50%,0.3);
    width: 70%;
    border: 25px solid red;
    padding: 5px;
    margin: 5px;
}
table, th {
    border: 1px solid black;
    background-color: seashell;
}
    td {
    padding: 15px;
     border: 1px solid black;
    text-align: center;
}
table#t1 {
    width: 60%;    
    background-color: slateblue;
    
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <center><font face="comic sans ms">
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <%   String x=request.getParameter("ord");
             int z=Integer.parseInt(x);
             String y = session.getAttribute("custid").toString();
             int k=Integer.parseInt(y);%>
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs;
         int flag=0; 
        int a,num=0,od1=0,od2=0,od3=0,od4=0,od5=0,p1=0,p2=0,p3=0;
        String p4="",p5="",d1="",d2="",od6="",altdate;%>
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
               String sql="select ordno from orders where custid="+k+"";
               rs=st.executeQuery(sql);
        }
         catch(Exception j)
                   {
          out.println(j);
          }       
        boolean r=rs.next();
        if(!r){
            out.println("");%>
            <center>
         <p><font face="comic sans ms" size="28" color="red">Sorry! Order number does not exist!!</font></p>
          <a href="Track.jsp" class="button"> <b><font face="comic sans ms" size="24" > Try again.. </b></a>
         </center>
        <%}
try
        {   
           do
               {
                a=rs.getInt(1);%>
                  <%if(a==z){
        flag=1;break;}
        else
        flag=0;}while(rs.next());%> 
        <%if(flag==1){%>
                <h1><font face="Courier" size="8" color="crimson">Welcome to BoOkMaNiA!!!</font></h1>
           <p><font face="comic sans ms" size="6" color="maroon">Choose from the widest range of books at you fingertips......</font></p>
              <div> <font face="ink free" color="black" size="6">The Order_details Available Are:</font></h1><br>
                  <table border="5" cellspacing="7" cellpadding="7"id="t1" >
                 <thead>
                <tr>
                    <th><font face="ink free" color="red" size="4">Book</th>
                    <th><font face="ink free" color="red" size="4">Price</th>
                    <th><font face="ink free" color="red" size="4">Quantity</th>
                    <th><font face="ink free" color="red" size="4">Amount</th>
                </tr>
                </thead>
     <%         String q1="select o.*,b.title from order_details o,books b where o.ordno="+z+" and o.bookid=b.bookid";
                 rs=st.executeQuery(q1);
               while(rs.next()){
                od1=rs.getInt(1);
                od2=rs.getInt(2);
                od3=rs.getInt(3);
                od4=rs.getInt(4);
                od5=rs.getInt(5);
                od6=rs.getString(6);
       %>
       <tbody>
        <tr>
                   <td><font face="ink free" color="black" size="4"><%=od6%></td>
                   <td><font face="ink free" color="black" size="4"><%=od3%></td>
                   <td><font face="ink free" color="black" size="4"><%=od4%></td>
                   <td><font face="ink free" color="black" size="4"><%=od5%></td>
               </tr>
<%}%>
</tbody>
       </table>
        <% 
                 String q2="select * from payments where ordno="+z+"";
               rs=st.executeQuery(q2); 
               while(rs.next()){
                p1=rs.getInt(1);
                p2=rs.getInt(2);
                p3=rs.getInt(3);
                p4=rs.getString(4);
                p5=rs.getString(5);
               
       }%>
                <p>Total Amount:<%=p3%></p>
                <p>Payment Mode:<%=p4%></p>
                <p>Payment Status:<%=p5%></p>
                <%
                    String q3="select orddate,deldate from orders where ordno="+z+"";
                    rs=st.executeQuery(q3);
                    while(rs.next()){
                   d1=rs.getString(1);
                   d2=rs.getString(2);
                }
                altdate=d1.substring(0,10);%>
                <p>Order date:<%=altdate%></p>
                <p>Delivery date:<%=altdate%></p><br>
                <a href="Track.jsp" class="button"> <b> Back </a></div>
       <% } else{%>
         <p><font face="comic sans ms" size="28" color="red">Sorry! Order number does not exist!!</p>
          <a href="Track.jsp" class="button"> <b><font face="comic sans ms" size="24" > Try again.. </b></a>
         </font>
          <%}
} 
                  
                   catch(Exception e)
                   {
          out.println(e);
          }
conn.close();%>         
        
    
          </center>
    </body>
</html>