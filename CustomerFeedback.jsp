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
        <title>Customer feedback Page</title>
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
                    <span style="font-size: 30px;font-weight: bold">Customer Feedback Page</span>
                    <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>  
                <div class="col-sm-6">
                    <form action="Code/CustomerFeedbackCode.jsp" method="post">

                        <textarea rows="10" cols="20" class="form-control input-lg" required="" style="resize: none"
                                  placeholder="Enter valueable Feedback here..." title="Enter Feedback Here" name="feedback"></textarea><br/>
                        <label class="btn btn-primary ">  <input type="radio" name="rating" class="radio radio-inline" value="Below average" required="" />
                            <span style="font-size: 18px;text-align: center">Below average</span></label>&nbsp;&nbsp;
                        <label class="btn btn-primary ">   <input type="radio" name="rating" class=" radio radio-inline  " value="Average" required=""/>
                            <span style="font-size: 18px;text-align: center">Average</span></label>&nbsp;&nbsp;
                   
                        <label class="btn btn-primary ">   <input type="radio" name="rating" class=" radio radio-inline  " value="Very Good" required=""/>
                            <span style="font-size: 18px;text-align: center">Very Good</span></label>&nbsp;&nbsp;
                        <label class="btn btn-primary ">        <input type="radio" name="rating" class="radio radio-inline" value="Excellent" required=""/>
                            <span style="font-size: 18px;text-align: center">Excellent</span></label><br/><br/>

                        <input type="submit" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/>
                        <input type="reset"class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" />
                    </form>
                </div>
                <div class="col-sm-3"></div>
            </div>
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/><br/><br/><br/></div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
