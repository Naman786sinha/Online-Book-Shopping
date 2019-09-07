<%-- 
    Document   : super12
    Created on : 11 Nov, 2018, 5:30:45 PM
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
                background-size: cover;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
            <%   String x=request.getParameter("usrnm");
             String y=request.getParameter("pswd");
             if(x.equals("1000")&&y.equals("1000"))
                 response.sendRedirect("Super_Opt.jsp");
 else{%>
              <center>
         <p><font face="comic sans ms" size="28" color="red">Sorry! Username and Password did not match!</p><p><font face="comic sans ms" size="24 "color="lawngreen"> Try Again!!</p>
          <a href="Super_Home.jsp" class="button"> <b><font size="36"> LOGIN </b></a>
         </center>
          <%}%>      
    </body>
</html>
