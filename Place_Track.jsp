<%-- 
    Document   : dbms21
    Created on : 2 Nov, 2018, 7:44:17 PM
    Author     : naman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                background:url("images/bkg1.jpg");
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
    </head>
    <body>
         <center>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>

        <form action="Categories.jsp" method="POST">
            <%   String x=request.getParameter("usrnm");
             String y=request.getParameter("pswd");
             int z=Integer.parseInt(x);
             session.setAttribute("custid",z);
             String name,num;
                %>
          
            
        
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
         ResultSet rs1=null;
        String s="";
        int flag=0;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
               String sql="select paswd,name from customer where custid="+z+"";
               rs=st.executeQuery(sql);
        }
         catch(Exception j)
                   {
          out.println(j);
          }
        boolean r=rs.next();
        if(!r)
        {%>
            <center>
         <div><p><font face="comic sans ms" size="28" color="red">Sorry! Username and Password did not match!</p><p><font face="comic sans ms" size="24 "color="lawngreen"> Try Again!!</p>
          <a href="Home.jsp" class="button"> <b><font face="comic sans ms" size="36"> LOGIN </b></a>
         </div></center>
        <%}
else{
      try
        {
            do{
                num=rs.getString(1);
                name=rs.getString(2);
                if(num.equals(y))
                {
                                          session.setAttribute("notplaced",0);
                                          session.setAttribute("placed",0);
        %>
              <div><h1><font face="comic sans ms" size="10" color="crimson">Welcome to BoOkMaNiA!!!</font></h1>
           <p><font face="comic sans ms" size="9" color="green">Choose from the widest range of books at you fingertips......</font></p>
              </div>
        <div> <p><font face="comic sans ms" size="12" color="red"> Heyy <%=name%>,Welcome to the world of books! </font></p>
                    <input type="submit" class="button" value="Place an Order" />&nbsp;<a href="Track.jsp" class="button"> <b><font> Track Your Order </b></a>
            </div></form>
                    <%}else{%>
          <center><div>
         <p><font face="comic sans ms" size="28" color="red">Sorry! Username and Password did not match!</p><p><font face="comic sans ms" size="24 "color="lawngreen"> Try Again!!</p>
          <a href="Home.jsp" class="button"> <b><font face="comic sans ms" size="36"> LOGIN </b></a>
              </div></center>
                   <%}
}while(rs1.next());
                  
}
                   catch(Exception e)
                   {
          out.println();
          }
}%>         
        
       
          
                    
       
          </center>
    </body>
</html>
