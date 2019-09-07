<%-- 
    Document   : dbms1
    Created on : 2 Oct, 2018, 10:27:18 AM
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
input[type=number] {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
input[type=password] {
    width: 10%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: darkorchid;
    color: white;
}
body,html{
                height: 100%;
                background:url("images/home.jpg");
                background-repeat: no-repeat;
                 background-position: center;
                 background-size: cover;
            }

#div1 {
    color: red;
    color: green;
}
#div2 {
    color: red;
    color: green;
}            
 
        </style>
        <title>www.shopmania.com</title>
       <center><h1><font face="comic sans ms" size="6" color="crimson">Welcome to BoOkMaNiA!!!</font></h1>
           <p><font face="comic sans ms" size="4" color="lawngreen">Choose from the widest range of books at you fingertips......</font></p>
           </center>
    </head>
    <body>
         <form action="Place_Track.jsp" method="POST">
     <center>
             <p> <font color="red" face="comic sans ms" size="5"><b>LOGIN</b></font></p>
             <p> <font color="lemonchiffon" face="comic sans ms" size="4"><b>CUSTOMER ID:</b><input type="number" name="usrnm" id='usrnm' placeholder="1-4 digits" min='1' max='999' required="required" value="" size="15" onblur="FormValidation1()"/><div id="div1"></div></font></p>
             <p> <font color="lemonchiffon" face="comic sans ms" size="4"><b>&nbsp;&nbsp;&nbsp;&nbsp;&ensp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;PIN:</b><input type="password" type="number" min='1' max='9999' placeholder="1-4 digits" required="required" name="pswd" id='pswd' value="" size="15" onblur="FormValidation2()"/><div id="div2"></div></font></p>
<input type="submit" class="button" value="SUBMIT" name="sbmt"/>
    <br/>
    <p> <font color="red" size="5" face="comic sans ms"><b>New Customer?? Please Sign up first!!!</b></font></p>
      <a href="Signup.jsp" class="button"> <b>SIGN UP </b></a>
      <p> <font color="red" size="5" face="comic sans ms"><b>Super User?? Please Login first!!!</b></font></p>
      <a href="Super_Home.jsp" class="button"> <b>SUPER USER </b></a>
      <script>
     function FormValidation1(){
      var usrnm=document.getElementById('usrnm').value;
    if(usrnm === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for Customer Id";
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
     </form>
    </body>
</html>

