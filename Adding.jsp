<%-- 
    Document   : super2
    Created on : 10 Nov, 2018, 2:53:58 PM
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
.button1 {
    background-color: slateblue;
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
#div1 {
    color: red;
    color: green;
}
 #div2 {
    color: red;
    color: green;
}
#div3 {
    color: red;
    color: green;
} 
#div4 {
    color: red;
    color: green;
}
            body,html{
                height: 250%;
                background:linear-gradient(to bottom, #99ff99 0%, #ff99ff 90%);
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
input[type=text] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
input[type=number] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
input[type=password] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
div {
    background-color: hsla(290,100%,50%,0.3);
    width: 50%;
    border: 25px solid red;
    padding: 5px;
    margin: 5px;
}
        </style>
        
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <p><font face="comic sans ms" size="4" color="maroon">Congrats! You are a part of the World's most reliable shopping site!</font></p> 
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs;
         String b,c,d;
         int a,e,f,g;
%>
        <form action="Added_Trig.jsp" method="POST">
        <p><font face="ink free" color="black" size="6">The Books Available Are:</font></p><br>
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

      
       <%
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              String s= "select * from books order by genreid";
              ResultSet rs=st.executeQuery(s);
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
                   <td><font face="ink free" color="black" size="4"><%=e%></td>
                   <td><font face="ink free" color="black" size="4"><%=a%></td>
                   <td><font face="ink free" color="black" size="4"><%=d%></td>
                   <td><font face="ink free" color="black" size="4"><%=b%></td>
                   <td><font face="ink free" color="black" size="4"><%=c%></td>
                   <td><font face="ink free" color="black" size="4"><%=f%></td>
                   <td><font face="ink free" color="black" size="4"><%=g%></td>
               </tr>
<%}%>
</tbody>
       </table>
          <br>
        <br>
        <div><p><font face="ink free" color="red" size="5">Enter The Details:</font></p>  
        <p><font face="ink free" color="black" size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Book_id:<input type="number" required="required" name="a" id='a' value="" onblur="FormValidationbookid()"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Author:<input type="text" required="required" name="b" id='b' value="" onblur="FormValidationpublisher()"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Publisher:<input type="text" required="required" name="c" id='c' value="" onblur="FormValidationauthor()"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Title:<input type="text" name="d" required="required" id='d' value="" onblur="FormValidationtitle()"/></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Genre_id:<input type="number" min='1' required="required" max='6' name="e" value="" /></p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Price:<input type="number" min='0' required="required" max='1000' name="f" value="" /></p>
        <p>Stock Quantity:<input type="number" min='1' max='100' required="required" name="g" value="" /></font></p>
        <input type="submit" value="Proceed" class="button" name="" /> &ensp;&nbsp;<input type="reset" class="button" value="Reset" name="" /><br>
                            </div><a href="Home.jsp" class="button1"> <b> Log Out </a>
        </form>
       <% }
catch(Exception q)
                   {
          out.println();
          }

conn.close(); %> 
          <br>  
          <script>
     function FormValidationbookid(){
      var a=document.getElementById('a').value;
    if(a === ""){
         document.getElementById("div1").innerHTML="Please Enter a value";
        document.getElementById("div1").style.color="Red";
           document.getElementById("a").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
        return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("a").style.borderColor = "green";
        return true;
    }
}
     </script>
<script>
     function FormValidationpublisher(){
      var b=document.getElementById('b').value;
    if(b === ""){
         document.getElementById("div2").innerHTML="Please Enter a value";
        document.getElementById("div2").style.color="Red";
           document.getElementById("b").style.borderColor = "Red";
             document.getElementById("div2").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div2").style.fontWeight = "bold";
               document.getElementById("div2").style.fontSize = "large"; 
       return false;
    }else{
        document.getElementById("div2").innerHTML="";
        document.getElementById("b").style.borderColor = "green";
        return true;
    }
}
     </script>
<script>
     function FormValidationauthor(){
      var c=document.getElementById('c').value;
    if(c === ""){
         document.getElementById("div3").innerHTML="Please Enter a value";
        document.getElementById("div3").style.color="Red";
           document.getElementById("c").style.borderColor = "Red";
             document.getElementById("div3").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div3").style.fontWeight = "bold";
               document.getElementById("div3").style.fontSize = "large";
         return false;
    }else{
        document.getElementById("div3").innerHTML="";
        document.getElementById("c").style.borderColor = "green";
        return true;
    }
}
     </script>
     <script>
     function FormValidationtitle(){
      var d=document.getElementById('d').value;
    if(d === ""){
         document.getElementById("div4").innerHTML="Please Enter a value";
        document.getElementById("div4").style.color="Red";
           document.getElementById("d").style.borderColor = "Red";
             document.getElementById("div4").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div4").style.fontWeight = "bold";
               document.getElementById("div4").style.fontSize = "large";
        return false;
    }else{
        document.getElementById("div4").innerHTML="";
        document.getElementById("d").style.borderColor = "green";
        return true;
    }
}
     </script>
</center>
    </body>
</html>
