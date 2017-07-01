<%-- 
    Document   : EmployeeComplain
    Created on : Apr 2, 2017, 3:22:26 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Complain Page</title>
      <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold">Employee Complain Page</span><br/><br/><br/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>   
                <div class="col-sm-6">
                    <form action="Code/EmployeeComplainCode.jsp" method="post">
                        <input type="text" name="subject" title="Enter Subject Here" placeholder="Enter Subject Here"
                               class="form-control input-lg" required=""/><br/>
                        <textarea rows="10" cols="30" style="resize: none" class="form-control input-lg" title="Enter Complain Here"
                                  placeholder="Enter Complain Here..." required="" name="complain"></textarea><br/>
                        <input type="submit" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold"/><br/>
                        <input type="reset" class="btn btn-info btn-block" style="font-size: 17px;font-weight: bold"/>

                    </form>
                </div>
                <div class="col-sm-3"></div></div>
            <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/>
                </div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
