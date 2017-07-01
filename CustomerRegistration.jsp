<%-- 
    Document   : CustomerRegistration
    Created on : Feb 22, 2017, 10:55:06 PM
    Author     : S S YADAV
--%>

<%@page import="pack.captchacodegenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Registration Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
          <script>
            function check()
            {
               var p= document.getElementById("p").value;
             var cp=   document.getElementById("cp").value;
             if(cp==p)
             {
                 return true;
             }
             else
             {
                 alert("Your Password is mismatch");
               //   $('#btnsub').attr("disabled",true);
                  $("#p").focus();
                      
                  
                 return false;
             }
            }
          function backimg()
          { 
              var im=  document.getElementById("img1");
              var v=Math.floor((Math.random()*10)+1);
              //alert(v);
             im.style.backgroundImage="url('ImageCaptcha/"+v+".jpg')";
          }
    
          function checkEmail()
                {
                    
                    $(document).ready(function (){
                        var username=$('#user').val();
                       // alert(username);
                        $.ajax({
                            type:'POST',
                            data:{username:username},
                            url:'Customer/Code/GetUserName.jsp',
                            success: function (res) {
                               // alert(res.trim());
                                
                        if(res.trim()=="yes")
                        {
                           alert("Please Enter another email Id");
                             $('#btnsub').attr("disabled",true);
                       }
                       else
                       {
                            $('#btnsub').attr("disabled",false);
                       }
                     
                        
                    }
                        });
                    });
                }
             function checkCaptcha()
             {
                var cap= document.getElementById("cap").value;
                var recap=document.getElementById("recap").value;
                if(cap!=recap)
                {
                    alert("please enter same captcha");
                    // $('#btnsub').attr("disabled",true);
                     return false;
                     $("#recap").focus();
                }
            }
                
          </script>
    </head>
    
    <body onload="backimg()">
        <%@include file="MasterPage/Header.jsp" %>
      
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold">Customer Registration</span>
                    <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>  
                <div class="col-sm-6">
                    <form action="Code/CustomerRegistrationCode.jsp" method="post" onsubmit="return check()">
                        <input type="text" name="cname" title="Enter Name" placeholder="Enter your Name" required="" class="form-control input-lg"/><br/>
                       <input type="text" name="cfname" title="Enter Father Name" placeholder="Enter Father Name" required="" class="form-control input-lg"/><br/>
                      
                        <label class="btn btn-primary ">        <input type="radio" name="gender" class="radio radio-inline" value="male" required="" title="Select Gender"/><span style="font-size: 18px;text-align: center">Male</span></label>&nbsp;&nbsp;&nbsp;
                        <label class="btn btn-primary ">   <input type="radio" name="gender" class=" radio radio-inline  " value="female" required="" title="Select Gender"/><span style="font-size: 18px;text-align: center">Female</span></label><br/><br/>
                        <input type="date" name="empdob" class="form-control input-lg" required=""  title="Enter DOB"/><br/>
                      
                        <textarea class="form-control input-lg" required="" name="address" title="Enter Address" placeholder="Enter Address" style="resize: none"></textarea><br/>
                                             <input type="number" class="form-control input-lg" name="pin" title="Enter Pin Number" placeholder="Enter Pin Number" required=""/><br/>
                        <input type="email" class="form-control input-lg" title="Enter Email Adress" name="email" placeholder="Enter Email Address" required=""/><br/>
                      <input type="number" class="form-control input-lg" name="phone" title="Enter Mobile Number" placeholder="Enter Mobile Number" required=""/><br/>
                      <input type="email" id="user" class="form-control input-lg" title="Create Username" name="useremail" placeholder="Create Username" required="" onchange="checkEmail()"  /><br/>
                        <input type="password" id="p" class="form-control input-lg" title="Enter Password"name="pass" placeholder="Enter Password" required=""/><br/>
                        <input type="password" id="cp" class="form-control input-lg" title="Enter Confirm password" placeholder="Enter Confirm Password" required=""/><br/>
                      <span style="font-size: 20px;font-weight: bold;" class="text-info">Captcha Code</span>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                        <%
                          String captcha=  captchacodegenerator.getCode();
                            %>
                            <span id="img1" style="font-size: 20px;font-weight: bold; width: 60px;height: 50px;" class="text-danger"><strike><%=captcha %></strike></span>
                            <input type="hidden" value="<%=captcha %>"class="form-control input-lg" id="cap"/> 
                            <br/><br/>
                            <input type="text" id="recap" name="capcha" id="entercap" class="form-control input-lg" placeholder="Enter Captcha Code" title="Enter Captcha Code" required=""/><br/>
                        
                            <input type="submit" id="btnsub" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" onclick="return  checkCaptcha()" /><br/>
                        <input type="reset" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/><br/><br/><br/><br/><br/><br/><br/>
                    </form>
                </div>
                <div class="col-sm-3"></div>

            </div>
        </div>
                            
         <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
