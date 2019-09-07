<%-- 
    Document   : dbms41
    Created on : 2 Nov, 2018, 10:35:18 PM
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
.button1 {
    background-color: springgreen;
    border: none;
    color: white;
    padding: 12px 26px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
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
        </style>
        <title>JSP Page</title>
    </head>
    <body>
        <center>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
            <form action="Ntbnk_COD.jsp" method="POST">
                <% 
                   String p=session.getAttribute("ordno").toString();
                   int ordno=Integer.parseInt(p);
        %>
            <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs;
        String query;
        int a=0;
        %>
        <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              query="select sum(amount) from order_details where ordno="+ordno+"";
              ResultSet rs=st.executeQuery(query);
              while(rs.next()){
                a=rs.getInt(1);
              }
              
        }
        catch(SQLException j)
                   {
          out.println(j);
          }
        if(a==0){%>
            <div><p> <font face="comic sans ms" size="6" color="red">Please Add At Least One Item In The Cart To Place An Order</p>
                <a href="Adventure.jsp" class="button"> <b size="8"> Add </b></a></div>
                            <%}
else{
                            session.setAttribute("notplaced",0);
                            session.setAttribute("placed",0);%>   
   <div><p> <font face="comic sans ms" size="6" color="mediumblue">Your total payable amount is:Rs.<%=a%></font></p>
   <p<font face="comic sans ms" size="8" color="">Choose a mode of payment:<select name="mode" class="button1" >
                     <option>Net Banking</option>
                     <option>Cash on Delivery</option>
                     </select>  </font></p> 
                 <input type="submit" class="button" value="Proceed" /></div><br>
              <div>   <p><font face="Times New Roman" size="8" color="green">&ensp;&nbsp;Payment Guidelines</font></p>
            <font face="ink free" size="5" color="red">
                <p><ol>1.All transactions through this channel are safe and secure.<br>
                    2.Please do not refresh the page or go back during the payment process.<br>
                    3.Please use the Virtual Keyboard, if possible.<br>
                    4.All kinds of Credit/Debit/Master/Rupay cards are accepted.</ol> </p></div>
                 </form>
   <%}%>
    </body>
</html>
