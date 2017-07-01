<%-- 
    Document   : ForgetPassword
    Created on : Apr 10, 2017, 10:11:09 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password Page</title>
     <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
                <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold">Forget Password Form</span>
                    <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>   
                <div class="col-sm-6">
                    <form action="Code/ForgetPasswordCode.jsp" method="post">
                        <input type="email" name="username" class="form-control input-lg" placeholder="Enter Username"
                               title="Enter Username" required=""/><br/>
                       <div class="row">
                            <div class="col-sm-6">
                            <input type="submit" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/>
                            </div>
                            <div class="col-sm-6">  
                            <input type="reset" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold"/><br/>
                    </div>
            </div><br/>
                    </form>
                </div>
            </div>
                
                <div class="row">
                    <div class="col-sm-12"><br/><br/><br/><br/></div>
            </div>
                    </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
