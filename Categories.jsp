<%-- 
    Document   : dbms2
    Created on : 2 Oct, 2018, 10:33:58 AM<html>

    Author     : naman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
    <head><style>
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
                background:linear-gradient(to bottom, #99ff99 0%, #ff99ff 90%);
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: 110%;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>www.shopmania.com/choice</title>
    </head>
    <body>
                    <%@page import="java.sql.*"%> 
                    <%@page import="java.util.*"%>
                    <%@page import="java.time.LocalDateTime"%>
                     <%@page import="java.time.format.DateTimeFormatter"%>
        <p><center><font face="comic sans ms" size="4" color="red">Congrats! You are a part of the World's most reliable shopping site!<font/></center></p> 
         <center>     
                    <%!
                        int t;
                        Random rand=new Random();
                    HashSet<Integer> set=new HashSet<>();%>
                   <% while(set.size()<1){
                      t=rand.nextInt(898)+1;break;}
               DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy");
             LocalDateTime now = LocalDateTime.now();
        String y = session.getAttribute("custid").toString();
           int custid=Integer.parseInt(y);%>
        
        <%!
         Connection conn=null;
         Statement st=null;
         ResultSet rs=null;
        int num,s,flag=0;
        String r="";%>
            
  <%
        try
        {
            Class.forName("oracle.jdbc.driver.OracleDriver");
              conn=DriverManager.getConnection("jdbc:oracle:thin:@DESKTOP-L9IT79O:1521:XE","dbms","dbms");
              st = conn.createStatement();
              String q1="{call svpt()}";
              CallableStatement cs=conn.prepareCall(q1);
              cs.execute();
              cs.close();
              String sql="select ordno from orders";
              ResultSet rs=st.executeQuery(sql);
        }
        catch(Exception e)
                   {
          out.println(e);
          }
        try {
        r = rs.toString();
        if(r.equals(null)){
            }
        }
        catch(Exception p)
                   {
                       flag=1;
          out.println();
          }
        if(flag==1){%>
                        <% session.setAttribute("ordno",t);
              String SQL="INSERT INTO orders values('"+custid+"','"+t+"','"+dtf.format(now)+"','"+dtf.format(now)+"')";
              st.executeUpdate(SQL);
        }
else{
        try
        {
        while(rs.next())
               {
                   num=rs.getInt("ordno");
                   if(num==t)
                   {
                       HashSet<Integer> set1=new HashSet<>();
                       while(set1.size()<1){
                       s=rand.nextInt(898)+10;break;}
                       session.setAttribute("ordno",s);
                       %>
              <%String SQL="INSERT INTO orders values('"+custid+"','"+s+"','"+dtf.format(now)+"','"+dtf.format(now)+"')";
              st.executeUpdate(SQL);
              }else{
                     session.setAttribute("ordno",t);
                     String SQL1="INSERT INTO orders values('"+custid+"','"+t+"','"+dtf.format(now)+"','"+dtf.format(now)+"')";
                     st.executeUpdate(SQL1);%><p><%=t%></p>
<% break;}
}
}
             catch(Exception e)
                   {
          out.println(e);
          }
}%>
          <p><font face="comic sans ms" size="6" color=""> Choose the Category:</font></p>
          <font size ="6" style="width:80%">
          <a href="Adventure.jsp" ><IMG STYLE="position:absolute; TOP:50px; LEFT:20px; WIDTH:190px; HEIGHT:220px" SRC="images/adventure.jpg"></a>
          <a href="Sci-Fi.jsp" ><IMG STYLE="position:absolute; TOP:150px; LEFT:240px; WIDTH:190px; HEIGHT:220px" SRC="images/sci-fi.jpg"></a>
          <a href="Mystery.jsp" ><IMG STYLE="position:absolute; TOP:250px; LEFT:460px; WIDTH:190px; HEIGHT:220px" SRC="images/mystery.jpg"></a>
          <a href="Fantasy.jsp" ><IMG STYLE="position:absolute; TOP:250px; LEFT:680px; WIDTH:190px; HEIGHT:220px" SRC="images/fantasy.png"></a>
          <a href="Horror.jsp" ><IMG STYLE="position:absolute; TOP:150px; LEFT:900px; WIDTH:190px; HEIGHT:220px" SRC="images/horror-fi.jpg"></a>
          <a href="Humor.jsp" ><IMG STYLE="position:absolute; TOP:50px; LEFT:1120px; WIDTH:190px; HEIGHT:220px" SRC="images/humour.jpg"></a>       
                  </font>
         <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          <br></center>
          <p><font face="comic sans ms" size="5" color="blue"> &nbsp; &nbsp; &nbsp; &nbsp; Adventure &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Science-Fiction &nbsp; &nbsp; &nbsp; &nbsp; 
            Mystery &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Fantasy &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Horror &nbsp;  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Humor</font></p>
               
    </body>
</html>
