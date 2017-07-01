<%-- 
    Document   : CustomerChangePassword
    Created on : Mar 27, 2017, 12:10:55 AM
    Author     : S S YADAV
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Change Password Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
        <script>
            function meth()
            {
              var newpass=  document.getElementById("np").value;
              var cnewpass= document.getElementById("cnp").value;
              if(newpass!=cnewpass)
              {
                  alert("Please Enter same Password");
                  return false;
              }
              else
                  return true;
            }
        </script>
    </head>
    <body>
     
        <%@include file="MasterPage/Header.jsp" %> 
         <div class="container-fluid">
            <div class="row">
                <div>
                    <br/><br/><br/>
                </div>
            </div>
              <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold">Customer Change Password Page</span>
                    <br/><br/></div>
              </div>
             <div class="row">
                 <div class="col-sm-4"></div>     
                 <div class="col-sm-4">
                     <form action="Code/ChangePasswordCode.jsp" method="post">
                         <input type="password" class="form-control input-lg" name="newpass" title="Enter New Password" id="np"
                                placeholder="Enter New Password"/><br/>
                         <input type="password" class="form-control input-lg" name="cnewpass" title="Enter Confirm Password" id="cnp"
                                placeholder="Enter again Same Password"/><br/>
                         
                         <input type="submit" id="btnsub" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" onclick="return meth()"  /><br/>
                        <input type="reset" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/><br/><br/><br/><br/><br/><br/><br/>
                       
                     </form>
                 </div>
                 <div class="col-sm-4"></div>

                     
                 
             </div>
              <div class="row">
                <div>
                    <br/><br/><br/>
                </div>
            </div>
         </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
