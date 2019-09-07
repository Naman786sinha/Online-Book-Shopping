<%--
    Document   : super1
    Created on : 10 Nov, 2018, 2:39:29 PM
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
            body,html{
                height: 100%;
                background:url("images/wall2.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
            div {
    background-color: hsla(290,100%,50%,0.3);
    width: 50%;
    border: 25px solid red;
    padding: 5px;
    margin: 5px;
}

        </style>
        <title>www.bookmania.com/Super</title>
    </head>
    <body>
        <center>
        <div><font face="comic sans ms" color="maroon"><h1>Welcome SuperUser!!!</h1>
             <a href="Adding.jsp" class="button"> <b> Add New Stock</b></a>
            <form action="Viewing.jsp" method="POST">
                <p>Enter the field you wish to view:<select name="view" class="button" >
                        <option>Customer</option>
                        <option>Genres</option>
                        <option>Books</option>
                        <option>Orders</option>
                        <option>Order_details</option>
                        <option>Payments</option>
                    </select></p>
                    <input type="submit" class="button" value="View" /></font><br>
                    </div><a href="Home.jsp" class="button1"> <b> Log Out </a>
            </form>
            </center>
    </body>
</html>
