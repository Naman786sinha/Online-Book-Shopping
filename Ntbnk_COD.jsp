<%-- 
    Document   : dbms5
    Created on : 3 Oct, 2018, 10:12:56 PM
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
                height: 100%;
                background:url("images/bkg5.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 110%;
            }
            div {
    background-color: powderblue;
    width:60%;
    border: 25px solid slateblue;
    padding: 5px;
    margin: 5px;
}
input[type=number] {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
input[type=password] {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%> 
        <center>
            <%
            String m=request.getParameter("mode"); 
            session.setAttribute("mode",m);
            String a=session.getAttribute("ordno").toString();
            int ordno=Integer.parseInt(a);
            String b = session.getAttribute("custid").toString();
            int custid=Integer.parseInt(b);
            int paid=0;
            int  p=0;
            String name="Not Done";%>
        <%if(m.equals("Net Banking")){%>
        <form action="Paycheck.jsp" method="POST">
         <div><h1><font face="comic sans ms" size="12" color="orangered">Welcome to Internet Banking!!</font></h1>
        <h2><font face="comic sans ms" size="8" color="red">Please do not refresh the page or go back during the payment process.</font></h2>
        <p><font face="comic sans ms" size="5" color="maroon"> Enter Your Username:<input type="number" placeholder="1-4 digits" required="required" name="userid" value="" /></font></p>
        <p><font face="comic sans ms" size="5" color="maroon"> Enter Your Password:<input type="password" placeholder="1-4 digits" required="required" name="pin" value="" /></font></p>
        <input type="submit" class="button" value="Pay" name=""/></div>
        <p><font face="comic sans ms" size="3" color="blue">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Making Things Quicker &nbsp; &nbsp; &nbsp; &nbsp; Bookings Made Easier &nbsp; &nbsp; &nbsp; &nbsp;
            Payments At Your Finger Tip &nbsp; &nbsp; &nbsp; &nbsp; Growing Faster &nbsp; &nbsp; &nbsp; &nbsp; Conquering Challenges &nbsp; &nbsp; &nbsp; &nbsp; Exploring The Limits</font></p>
        </form>
        <%}else if(m.equals("Cash on Delivery")){%>
            <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
         String num,orddate,altdate;
         %>
          <%
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
               String SQL="INSERT INTO payments values('"+ordno+"','"+custid+"','"+paid+"','"+m+"','"+name+"')";
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
                 p=1;
                 session.setAttribute("placed",p);
                 altdate=orddate.substring(0,10);
        }
        catch(Exception e)
                   {
          out.println();
          }%>
       <div> <p><font face="comic sans ms" size="8" color="lime">Your order marked by Order no.:<font color="red"><%=ordno%></font> shall reach you by:<%=altdate%></font></p>
        <p> <font face="comic sans ms" size="8" color="navy">You have chosen Cash on Delivery as Your mode of payment!</font></p><br>
        <p> <font face="comic sans ms" size="8" color="orangered"> Tendering of exact change will be appreciated!</font></p></div>
              <a href="Thanks.jsp" class="button"> <b> Sign Out </a>
        <%}%>
        </center>
    </body>
</html>