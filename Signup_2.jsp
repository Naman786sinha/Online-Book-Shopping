<%-- 
    Document   : dbms12
    Created on : 30 Oct, 2018, 7:57:45 PM
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
                background:linear-gradient(to bottom, #33ccff 0%, #ff99cc 100%);
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
            div {
    background-color: hsla(290,100%,50%,0.3);
    width: 70%;
    border: 25px solid slateblue;
    padding: 5px;
    margin: 5px;
}
        </style>
        <title>www.bookmania.com/success</title>
    </head>
    <body>
        <h1><center><font face="comic sans ms" size="4" color="blue"><b>Congrats! You are a part of the World's most popular movie site!</b><font/></center></h1> 
        <form action="Home.jsp" method="POST">
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>  
        <center>
        <% 
            String a=request.getParameter("name");
             String b=request.getParameter("pswd");
             String c=request.getParameter("phone");
             String d=request.getParameter("email");
             String e=request.getParameter("address");
        %>
             <%! Random rand=new Random();
             int t;
             HashSet<Integer> set=new HashSet<>();%>
             <% while(set.size()<1){
             t=rand.nextInt(898)+10; break;}%>   
        
        
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
         ResultSet rs1=null;
        int num,s,flag=0;
        String r="";%>
            
  <%
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              String sql="select custid from customer";
               ResultSet rs=st.executeQuery(sql);
               ResultSet rs1=st.executeQuery(sql);
        }
        catch(Exception z)
                   {
          out.println(z);
          }
        try {
        r = rs.toString();
        if(r.equals(null)){
            }
        }
        catch(Exception q)
                   {
                       flag=1;
          out.println();
          }
        if(flag==1){%>
                        <% session.setAttribute("custid",t);
                           String SQL="INSERT INTO customer values('"+t+"','"+b+"','"+a+"','"+c+"','"+d+"','"+e+"')";
                           st.executeUpdate(SQL);%>
                          <div> <h2><font face="comic sans ms" color="red"><strong>You have signed up successfully!!</strong></h2>
        <h3><font face="comic sans ms" color="brown"><strong>Your Customer ID is:<%=t%></strong></h3>
        <p><b><font face="ink free" color="black">Don't share this pin with anyone&nbsp;<br>
                <font face="comic sans ms" color="green"><strong>Please use your Customer ID and password for Login..</strong></p>
        <a href="Home.jsp" class="button"> <b size="44">PROCEED </b></a></div>
        <%}
else{
               try{          
        while(rs1.next())
               {
                   num=rs1.getInt("custid");
                   if(num==t)
                   {
                       HashSet<Integer> set1=new HashSet<>();
                       while(set1.size()<1){
                       s=rand.nextInt(898)+10;break;}
                       session.setAttribute("custid",s);
              String SQL="INSERT INTO customer values('"+s+"','"+b+"','"+a+"','"+c+"','"+d+"','"+e+"')";
              st.executeUpdate(SQL);%> 
              <div><h2><font face="comic sans ms" color="red"><strong>You have signed up successfully!!</strong></h2>
        <h3><font face="comic sans ms" color="brown"><strong>Your Customer ID is:<%=s%></strong></h3>
        <p><b><font face="ink free" color="black">Don't share this pin with anyone&nbsp;<br>
                <font face="comic sans ms" color="green"><strong>Please use your Customer ID and password for Login..</strong></p>
        <a href="Home.jsp" class="button"> <b size="44">PROCEED </b></a></div>
       <% }
                   else
{session.setAttribute("custid",t);
String SQL="INSERT INTO customer values('"+t+"','"+b+"','"+a+"','"+c+"','"+d+"','"+e+"')";
              st.executeUpdate(SQL);%>
<div><h2><font face="comic sans ms" color="red"><strong>You have signed up successfully!!</strong></h2>
        <h3><font face="comic sans ms" color="brown"><strong>Your Customer ID is:<%=t%></strong></h3>
        <b><font face="ink free" color="black">Don't share this pin with anyone&nbsp;
        <h4><font face="ink free" color="green"><strong>Please use your Customer ID and password for Login..</strong></h4>
        <a href="Home.jsp" class="button"> <b size="44">PROCEED </b></a></div>
<%}
               }
conn.close();
        }

        catch(Exception p)
        {
           out.println(p);
        }
}
        %>
        
        </form>
    </body>
</html>
