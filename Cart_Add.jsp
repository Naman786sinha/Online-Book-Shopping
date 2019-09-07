<%-- 
    Document   : dbms4
    Created on : 3 Oct, 2018, 8:52:44 PM
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
    background-color: darkmagenta;
    border: none;
    color: white;
    padding: 12px 26px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 20px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 12px;
}
            body,html{
                height: 100%;
                background:url("images/bkg4.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 110%;
            }
            div {
    background-color: powderblue;
    width: 40%;
    border: 25px solid slateblue;
    padding: 5px;
    margin: 5px;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body><center>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <form action="Checkout.jsp" method="POST">
        <% String cat = session.getAttribute("cat1").toString();
           String y = session.getAttribute("custid").toString();
           int custid=Integer.parseInt(y);
           String p=session.getAttribute("ordno").toString();
           int ordno=Integer.parseInt(p);
        %>

        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs;
        String del,query,b,p1,p2,p3,sql;
        int a=0,p4,p5,count=0,c1=0;
        int c[]= new int[100];
        int d[]= new int[100];
        int e[]= new int[100];
        int s[]= new int[100];
        %>
      
       <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              String q1="{call stock(?,?,?)}";
              CallableStatement cs=conn.prepareCall(q1);
              if(cat.equals("Adventure"))
              { 
                  query="select * from books where genreid=1";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7); 
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }
                
                       }
else if(cat.equals("Science-Fiction"))
              { 
                  query="select * from books where genreid=2";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7);
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }

               }
               else if(cat.equals("Mystery"))
              { 
                  query="select * from books where genreid=3";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7);
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }

               }
else if(cat.equals("Fantasy"))
              { 
                  query="select * from books where genreid=4";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7);
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }

               }
else if(cat.equals("Horror"))
              { 
                  query="select * from books where genreid=5";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7);
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }

               }
else if(cat.equals("Humor"))
              { 
                  query="select * from books where genreid=6";
                  ResultSet rs=st.executeQuery(query);
                  while(rs.next()){
                a=rs.getInt(1);
                p1=rs.getString(2);
                p2=rs.getString(3);
                p3=rs.getString(4);
                p4=rs.getInt(5);
                d[c1]=rs.getInt(6);
                p5=rs.getInt(7);
                s[c1]=a;
                b=request.getParameter("s"+a);
                c[c1]=Integer.parseInt(b);
                e[c1]=d[c1]*c[c1];
                count++;
                c1++;}%>
                       <% 
                           for(int i=0;i<count;i++)
                           {
                               if(c[i]!=0)
                               {
                               sql="INSERT INTO order_details values("+p+","+s[i]+","+d[i]+","+c[i]+","+e[i]+")";
                               st.executeUpdate(sql);
                               cs.setInt(1,p5);
                               cs.setInt(2,c[i]);
                               cs.setInt(3,s[i]);
                               cs.execute();
                               }
                }

               }
               session.setAttribute("cat1",null);
               a=0; sql=""; del=""; query=""; b=""; c1=0; 
               for(int i=0;i<count;i++)
               {
                   c[i]=0;
                   d[i]=0;
                   e[i]=0;
                   s[i]=0;
                   count=0; 
                   
               }

cs.close();
              }
catch(SQLException j)
                   {
          out.println();
          }%>
              
          <p><font face="comic sans ms" size="8">Added to Cart!</font></p>
          <div> <a href="Adventure.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Adventure </b></a><br><br>
          <a href="Sci-Fi.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Science_fiction </b></a><br><br>
          <a href="Mystery.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Mystery </b></a><br><br>
          <a href="Fantasy.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Fantasy </b></a><br><br>
          <a href="Horror.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Horror </b></a><br><br>
          <a href="Humor.jsp" class="button"> <b><font face="comic sans ms" size="2"> Add More from Humor </b></a><br><br><br></div>
                 <input type="submit" class="button1" value="Pay Now" />&nbsp;<a href="Cart_Show.jsp" class="button1"> <b><font face="comic sans ms" size="2"> View Cart </b></a>
             </center>
             </form>
    </body>
</html>
