<%-- 
    Document   : track1
    Created on : 14 Nov, 2018, 8:31:56 PM
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
#div1 {
    color: red;
    color: green;
}
            body,html{
                height: 130%;
                background:url("images/bkg5.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }
input[type=number] {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
div {
    background-color: hsla(290,100%,50%,0.3);
    width: 70%;
    border: 25px solid red;
    padding: 5px;
    margin: 5px;
}
        </style>
        <title>JSP Page</title>
    </head>
    <body><center>
        <form action="View_Track.jsp" method="POST">
            <div> <font face="comic sans ms" >
        <h1>Enter your order number:<input type="number" name="ord" id='ord' required="required" min='1' max='999' value="" onblur="FormValidation1()"/></h1>
        <input type="submit" class="button" value="Track" /><br></div>
        <a href="Categories.jsp" class="button"> Order Now</a>
        </font>
        </form> 
        <script>
     function FormValidation1(){
      var ord=document.getElementById('ord').value;
    if(ord === ""){
         document.getElementById("div1").innerHTML="Please Enter an Order No.";
        document.getElementById("div1").style.color="Red";
           document.getElementById("ord").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("ord").style.borderColor = "green";
        return true;
    }
}
     </script>
    </center>
    </body>
</html>
