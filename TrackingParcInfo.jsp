<%-- 
    Document   : TrackingParcInfo
    Created on : May 30, 2017, 8:28:34 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tracking Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
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
                    <span style="font-size: 30px;font-weight: bold;" class="text-danger">Track Parcel</span>
                    <br/><br/></div>
              </div>
             <div class="row">
                <div>
                    <br/><br/><br/>
                </div>
            </div>
             <form action="ViewTrackingParcelInfo.jsp" method="post">
             <div class="row">
                 <div class="col-sm-4"></div>   
                 <div class="col-sm-4">
                      <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Enter Tracking Id </span>
                </div> 
                <div class="col-sm-6">
                    <input type="text" class="input-lg" required="" name="ptid"/>
                </div>

            </div><br/>
                <div class="row">
                    <div class="col-sm-6"></div>
                <div class="col-sm-6">
                    <input type="submit" style="font-size: large" class="btn btn-block btn-info" name="Submit"/>
                </div>

            </div><br/>
                 </div>
                 <div class="col-sm-4"></div>

             </div>
             </form>
              <div class="row">
                <div>
                    <br/><br/><br/>
                </div>
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
