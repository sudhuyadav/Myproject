<%-- 
    Document   : CustomerQuery
    Created on : Mar 21, 2017, 11:28:26 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Query Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-5 text-center">
                    <span style="font-size: 30px;font-weight: bold">Customer Query Page</span>
                    <br/><br/></div>
                <div class="col-sm-5"></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>  
                <div class="col-sm-5">
                    <form action="Code/CustomerQueryCode.jsp" method="post">
                        <input type="text" class="input-lg form-control" title="Enter Subject Here"
                               placeholder="Enter Subject Here" name="subject" required=""/><br/>
                        <textarea rows="8" cols="8" class="form-control input-lg" required="" style="resize: none"
                          placeholder="Enter Query here..." title="Enter Query Here" name="query"></textarea><br/>
                          <input type="submit" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/>
                          <input type="reset"class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" />
                    </form>
                </div>
                <div class="col-sm-3">
                    <br/><br/><br/><br/>
                    <a href="ViewOneCustAllQueryAnswer.jsp"><span class="text-danger" style="font-size: 20px;font-family: monospace">View Answer</span></a>
               
                </div>
                <div class="col-sm-2"></div>
            </div>
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/><br/><br/><br/></div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
