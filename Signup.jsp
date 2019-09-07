<%-- 
    Document   : dbms11
    Created on : 30 Oct, 2018, 7:41:23 PM
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
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: #3CBC8D;
    color: white;
}
input[type=password] {
    width:30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: #3CBC8D;
    color: white;
}
input[type=text] {
    width: 30%;
    padding: 12px 20px;
    margin: 8px 0;
    box-sizing: border-box;
    border: none;
    background-color: #3CBC8D;
    color: white;
}
            body,html{
                height: 100%;
                background:url("images/bkg2.jpg");
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
#div3 {
    color: red;
    color: green;
}

        </style>
        <title>www.bookmania.com/sign_up</title>
        <center><div><p><font face="comic sans ms" size="6" color="red"> Welcome to BoOkMaNiA!!!</font></p>
           <p><font face="comic sans ms" size="5" color="white">Stop searching,start Reading......</font></p>
            </div></center>
    </head>
    <body>
        <form action="Signup_2.jsp" method="POST">
     <center>
        <p><b><font face="comic sans ms" size="7" color="blue">SIGN UP</font></b></p>
        <font face="comic sans ms" size="5" color="blue">
     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;NAME:<input type="text" name="name" id="name" placeholder="max 25 characters" required="required" value="" size="15" onblur="FormValidation1()"/><div id="div1"></div></p>
     <p>PASSWORD:<input type="password" name="pswd" required="required" placeholder="1-4 digits" id="pswd" onblur="FormValidation2()" value="" size="15" /><div id="div2"></div></p>
     <p>&nbsp;PHONE NO.:<input type="text" name="phone" required="required" placeholder="10 digits" id="phone" onblur="validate(this)" value="" size="15"/></p>
     <p>&nbsp;&nbsp;&nbsp;&nbsp;ADDRESS:<input type="text" name="address" required="required" placeholder="max 40 characters" id="address" onblur="FormValidation3()" value="" size="15"/><div id="div3"></div></p>
     <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;E-MAIL:<input type="text" name="email" required="required" id="email" placeholder="abc@xyz.pqr" value="" onblur="validate1(this)" size="15"/></p>
     <script type="text/javascript">
    function validate(phone)
        { 
            var mob=/^[1-9]{1}[0-9]{9}$/;
              if (mob.test(phone.value) == false)
            {
               alert("Phone number should be a 10 digit number");
               phone.style.borderColor = "red";
                phone.focus();
            }
            else
            {
                 phone.style.borderColor  = "green";
            }
  }
</script>
         
     
      <script type="text/javascript">
    function validate1(email)
        { 
            var mob=/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
            if(mob.test(email.value)== false)
            {
               alert("The entered email does not satisfy the required format");
               email.style.borderColor = "red";
                email.focus();
            }
            else
            {
                 email.style.borderColor  = "green";
            }        
        }
</script>
 <script>
     function FormValidation1(){
      var name=document.getElementById('name').value;
    if(name === ""){
         document.getElementById("div1").innerHTML="Please Enter a value for name";
        document.getElementById("div1").style.color="Red";
           document.getElementById("name").style.borderColor = "Red";
             document.getElementById("div1").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div1").style.fontWeight = "bold";
               document.getElementById("div1").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div1").innerHTML="";
        document.getElementById("name").style.borderColor = "green";
        return true;
    }
}
     </script>
     

<script>
     function FormValidation2(){
      var pswd=document.getElementById('pswd').value;
    if(pswd === ""){
         document.getElementById("div2").innerHTML="Please Enter a value for Password";
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
}
     </script>
<script>
     function FormValidation3(){
      var address=document.getElementById('address').value;
    if(address === ""){
         document.getElementById("div3").innerHTML="Please Enter a value for Address";
        document.getElementById("div3").style.color="Red";
           document.getElementById("address").style.borderColor = "Red";
             document.getElementById("div3").style.fontFamily = "Ink Free,Ink Free,Ink Free";
               document.getElementById("div3").style.fontWeight = "bold";
               document.getElementById("div3").style.fontSize = "large";
       
       
       return false;
    }else{
        document.getElementById("div3").innerHTML="";
        document.getElementById("address").style.borderColor = "green";
        return true;
    }
}
     </script>


     <input type="submit" value="SUBMIT" class="button" name="sbmt"/> &nbsp; &nbsp;<input type="reset" class="button" value="RESET"/>
    </center>
     </form>
    </body>
</html>
