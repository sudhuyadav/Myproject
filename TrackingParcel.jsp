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
        <title>tracking Parcel Page</title>
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
                    <span style="font-size: 30px;font-weight: bold">Parcel Tracking </span>
                    <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>   
                <div class="col-sm-6">
                    <form action="Code/TrackingParcelCode.jsp" method="post">
                        <input type="text" name="empid" class="form-control input-lg" placeholder="Enter Employee Id"
                               title="Enter Employee Id" required=""/><br/>
                         <input type="number" name="tn" class="form-control input-lg" placeholder="Enter Tracking no"
                               title="Enter Tracking no" required=""/><br/>
                              <label class="btn btn-primary ">        <input type="radio" name="tstatus" class="radio radio-inline" value="working" required="" title="Select Packect Status"/><span style="font-size: 18px;text-align: center">working</span></label>&nbsp;&nbsp;&nbsp;
                        <label class="btn btn-primary ">   <input type="radio" name="tstatus" class=" radio radio-inline  " value="reached" required="" title="Select Packet Status"/><span style="font-size: 18px;text-align: center">reached</span></label><br/><br/>
                    
                               <textarea rows="10" cols="20" class="form-control input-lg" required="" style="resize: none"
                          placeholder="Enter location here..." title="Enter Location Here" name="location"></textarea><br/>
                          <input type="submit" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold"/><br/>
                          <input type="reset" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" />
                  
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
