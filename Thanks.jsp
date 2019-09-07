<%-- 
    Document   : Thanks
    Created on : 19 Nov, 2018, 11:37:39 AM
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
                background:url("images/bkg3.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 110%;
            }
            div {
    background-color: powderblue;
    width: 70%;
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
                    <form action="Home.jsp" method="POST">
                        <% String s=session.getAttribute("ordno").toString();
                           int ordno=Integer.parseInt(s);
                        String b = session.getAttribute("custid").toString();
                        int custid=Integer.parseInt(b);
                        String c = session.getAttribute("notplaced").toString();
                        int notplaced=Integer.parseInt(c);
                        String d=session.getAttribute("placed").toString();
                           int placed=Integer.parseInt(d);%>
                           <%!
                              Connection conn=null;
                              Statement st=null;
                              ResultSet rs=null;
                           %>
        <%try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
         if(placed==1){
        String comt="commit";
              st.execute(comt);%>
              <div><p><font face="comic sans ms" size="12" color="orangered">Thank You For Shopping With Us</p> 
              <a href="Home.jsp" class="button"> <b>HOME PAGE </b></a></div>
              <%}else if(notplaced==1){
            String q1="{call rlbk()}";
              CallableStatement cs=conn.prepareCall(q1);
              cs.close();%>
              <div><p>Oops You Could Not Pay For Your Last Order</p>
              <p>Thank You</p></div>
              <a href="Home.jsp" class="button"> <b>HOME PAGE </b></a>
<%}
}
catch(Exception e)
                   {
          out.println(e);
}
conn.close();%>             
        </form>
    </center>
    </body>
</html>
