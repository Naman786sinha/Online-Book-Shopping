<%-- 
    Document   : super11
    Created on : 11 Nov, 2018, 5:25:26 PM
    Author     : naman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
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
input[type=number] {
    width: 15%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
input[type=password] {
    width: 15%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
#div1 {
    color: red;
    color: green;
}
#div2 {
    color: red;
    color: green;
}

            body,html{
                height: 100%;
                background:url("images/bkg5.jpg");
                background-repeat: no-repeat;
                background-position: center;
                background-size: 100%;
            }
             
        </style>
        <title>JSP Page</title>
    </head>
    <body>
    <center><p><font face="comic sans ms" size="8" color="red"><b>Welcome to BoOkMaNiA!!!</b></font></p>
           <p><font face="comic sans ms" size="4" color="lime">Choose from the widest range of books at you fingertips......</font></p>
            <form action="Super_Login.jsp" method="POST">
     <center><font face="comic sans ms" size="6" color="red">
        <p><b> SUPER USER LOGIN</b></p></font><font face="comic sans ms" size="5" color="lime">
       <p> &nbsp;&nbsp;ID: <input type="number" placeholder="1-4 digits" name="usrnm" id='usrnm' min='1' max='10000' required="required" value="" onblur="FormValidation1()"/><div id="div1"></div></p>
     <p> PIN:  <input type="password" type="number" placeholder="1-4 digits" min='1' max='10000' required="required" name="pswd" id='pswd' value="" onblur="FormValidation2()"/><div id="div2"></div></p>
<input type="submit" value="Submit"  class="button" onclick='FormValidation1()' name="sbmt"/><br>
     <a href="Home.jsp" class="button1"> <b> CUSTOMER LOGIN </b></a>
     <script>
     function FormValidation1(){
      var usrnm=document.getElementById('usrnm').value;
    if(usrnm === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for User Id";
        document.getElementById("div1").style.color="Red";
           document.getElementById("usrnm").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("usrnm").style.borderColor = "green";
        return true;
    }
}
     </script>
      <script>
     function FormValidation2(){
      var pswd=document.getElementById('pswd').value;
    if(pswd === ""){
         document.getElementById("div2").innerHTML="Please Enter a Pin of 4 digits";
        document.getElementById("div2").style.color="Red";
           document.getElementById("pswd").style.borderColor = "Red";
             document.getElementById("div2").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div2").style.fontWeight = "bold";
               document.getElementById("div2").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div2").innerHTML="";
        document.getElementById("pswd").style.borderColor = "green";
        return true;
    }
    </script>
           </center>
    </body>
</html>
