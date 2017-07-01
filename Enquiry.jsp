<%-- 
    Document   : Enquiry
    Created on : Mar 22, 2017, 5:03:20 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Enquiry Page</title>
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
                    <span style="font-size: 30px;font-weight: bold">Customer Enquiry Form</span>
                    <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>   
                <div class="col-sm-6">
                    <form action="Code/EnquiryCode.jsp" method="post">
                        <input type="text" name="name" class="form-control input-lg" placeholder="Enter Name"
                               title="Enter Name" required=""/><br/>
                         <label class="btn btn-primary ">        <input type="radio" name="gender" class="radio radio-inline" required=""
                               title="Select Gender"/><span style="font-size: 18px;text-align: center">Male</span></label>
                        <label class="btn btn-primary ">   <input type="radio" name="gender" class=" radio radio-inline  " required=""
                              title="Select Gender"/><span style="font-size: 18px;text-align: center">Female</span></label><br/><br/>
                        <input type="number" name="mobile" class="form-control input-lg" placeholder="Enter Mobile no"
                               title="Enter Mobile" required=""/><br/>
                        <input type="email" name="email" class="form-control input-lg" placeholder="Enter Email id"
                               title="Enter Email" required=""/><br/>
                               <textarea rows="10" cols="20" class="form-control input-lg" required="" style="resize: none"
                          placeholder="Enter valueable Enquiry here..." title="Enter Enquiry Here" name="enquiry"></textarea><br/>
                          <input type="submit" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/>
                          <input type="reset"class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" />
                  
                    </form>  
                </div> 
                <div class="col-sm-3"></div> 

            </div>
                    <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
                </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
