<%-- 
    Document   : dbms6
    Created on : 3 Oct, 2018, 10:26:37 PM
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
    color: purple;
    padding: 12px 26px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 18px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
div {
    background-color: powderblue;
    width:70%;
    border: 25px solid slateblue;
    padding: 5px;
    margin: 5px;
}
            body,html{
                height: 100%;
                background:url("images/bkg6.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 110%;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body><center>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>  
                   <%  String p=request.getParameter("userid");
                       int r=Integer.parseInt(p);
                       String q=request.getParameter("pin");
                       int pin=Integer.parseInt(q);
                       String a=session.getAttribute("ordno").toString();
                       int ordno=Integer.parseInt(a);
                       String b = session.getAttribute("custid").toString();
                       int custid=Integer.parseInt(b);
                       String mode = session.getAttribute("mode").toString();
                       int paid=0;
                       String name="Done";
                   %>
                   <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
         String num,orddate,altdate;
         int t=0;
         %>
          <%
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              String query="select paswd from customer where custid='"+custid+"'";
               rs=st.executeQuery(query);
               while(rs.next())
               {
               num=rs.getString(1);
               }
               int rpin=Integer.parseInt(num);
               if((custid==r)&&(rpin==pin)){
             String SQL="INSERT INTO payments values('"+ordno+"','"+custid+"','"+paid+"','"+mode+"','"+name+"')";
              st.executeUpdate(SQL);
              String q1="{call cal_sum(?)}";
              CallableStatement cs=conn.prepareCall(q1);
              cs.setInt(1,ordno);
              cs.execute();
              cs.close();
              String q2="select deldate from orders where ordno='"+ordno+"'";
               rs=st.executeQuery(q2);
                 while(rs.next())
                 {
               orddate=rs.getString(1);
                 }
                  t=1;
                 session.setAttribute("placed",t);
                 altdate=orddate.substring(0,10);
          %>
            <div> <font face="comic sans ms" size="12" color="indigo"> <p>Payment Successful!!!</font></p>
              <p> <font face="comic sans ms" size="10" color="chartreuse">Your order marked by Order no.:<%=ordno%> shall reach you by:<%=altdate%></font></p>
              <a href="Thanks.jsp" class="button"> <b> Log Out </a></div>
       <%}
else{     t=1;
       session.setAttribute("notplaced",t);%>
<div><p><font face="comic sans ms" size="12" color="orangred"> Payment declined!Please enter correct userid and pin!</font></p>
<a href="Checkout.jsp" class="button"> <b><font color="red"> Try Again! </b></a><br>
<a href="Thanks.jsp" class="button"> <b> Log Out </a></div>
<%}
        }
              catch(Exception e)
                   {
          out.println();
          }%>
    </center>
    </body>
</html>