<%-- 
    Document   : dbms33
    Created on : 2 Nov, 2018, 6:27:07 PM
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
    td {
    padding: 15px;
     border: 1px solid black;
    text-align: center;
}
table#t1 {
    width: 60%;    
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
                height: 100%;
                background:url("images/wall3.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 200%;
            }
            div {
    background-color: powderblue;
    width: 60%;
    border: 25px solid slateblue;
    padding: 5px;
    margin: 5px;
}
        </style>
        <title>www.bookmania.com/details</title>
    </head>
    <body>
        <center>
        <form action="Cart_Add.jsp" method="POST"> 
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <%
            String b,c,d,cat="Mystery";
            session.setAttribute("cat1",cat);
        int f;
        int a,e,g;
        %>
        <IMG STYLE="position:absolute; TOP:150px; LEFT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/mys-1.jpg">
        <IMG STYLE="position:absolute; TOP:500px; LEFT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/mys-2.jpg">
        <IMG STYLE="position:absolute; TOP:50px; RIGHT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/mys-3.jpg">
        <IMG STYLE="position:absolute; TOP:300px; RIGHT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/mys-4.jpg">
        <IMG STYLE="position:absolute; TOP:550px; RIGHT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/mys-5.jpg">
        <div><p><center><font face="comic sans ms" size="4" color="lime">Congrats! You are a part of the World's most reliable shopping site!</font></center></p> 
        <p> <font face="comic sans ms" size="6" color="mediumblue">Choose from Your Favourites Here..</font></p>
        <font face="ink free" color="black" size="6">The Mystery Books Available Are:</font></h1><br></div>
        <table border="5" cellspacing="7" cellpadding="7" id="t1">
            
            <thead>
                <tr><th><font face="ink free"  size="4">Title</th>
                    <th><font face="ink free"  size="4">Author</th>
                    <th><font face="ink free"  size="4">Publisher</th>
                    <th><font face="ink free"  size="4">Price</th>
                    <th><font face="ink free"  size="4">Quantity in Stock</th>
                    <th><font face="ink free"  size="4">Select:</th>
                </tr>
            </thead>
            <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;%>
      
       <%
        try{
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
               String sql="select * from books where genreid=3";
               ResultSet rs=st.executeQuery(sql);
        
            while(rs.next()){
                a=rs.getInt(1);
                b=rs.getString(2);
                c=rs.getString(3);
                d=rs.getString(4);
                e=rs.getInt(5);
                f=rs.getInt(6);
                g=rs.getInt(7);
       %>
       <tbody>
               <tr>
                   <td><font face="ink free" color="black" size="4"><%=d%></td>
                   <td><font face="ink free" color="black" size="4"><%=b%></td>
                   <td><font face="ink free" color="black" size="4"><%=c%></td>
                   <td><font face="ink free" color="black" size="4"><%=f%></td>
                   <td><font face="ink free" color="black" size="4"><%=g%></td>
                   <td><input type="number" min="0" max="<%=g%>" name="<%="s"+a%>" value="0" /></td>
               </tr>
            
                   <%}
}
 catch(Exception q)
                   {
          out.println();
          }%> 
          </tbody>
       </table>
          <br>
          <p> <font face="comic sans ms" size="4" color="mediumblue">To Order From Another Category,Please Press On Add To Cart Without Adding Any Item</p>
        <br>
      <input type="submit" class="button" value="Add to cart" name="Proceed" />
        </form>
            </center>
    </body>
</html>

