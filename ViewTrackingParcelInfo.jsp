<%-- 
    Document   : ViewTrackingParcelInfo
    Created on : May 30, 2017, 8:43:08 PM
    Author     : S S YADAV
--%>

<%@page import="Bean.Bean_EmployeeRegistration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_Tracking"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Tracking Page</title>
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
            <%
             int ptid=  Integer.parseInt(request.getParameter("ptid"));
                Bean_Tracking bt=new Bean_Tracking();
                bt.setTrackingno(ptid);
           List l= bt.getAllTrackingRecordByTID();
           Iterator it=  l.iterator();
          
                %>
              <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold;" class="text-danger"> Parcel Information</span>
                    <br/><br/></div>
              </div>
             <div class="row">
                 <div class="col-sm-4"></div>
                 <div class="col-sm-4">
                     <%
           
                      if(it.hasNext())
           {
          bt=  (Bean_Tracking)it.next();
         int empid= bt.getEmpid();
         Bean_EmployeeRegistration ber=new Bean_EmployeeRegistration();
         ber.setEmp_id(empid);
       String name=  ber.getEmpNameById();
             %>
                       <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Employee Name </span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold"><%= name%> </span>
             
                </div>

            </div><br/>
                 <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Location </span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold"><%=bt.getLocation() %> </span>
             
                </div>

            </div><br/>
                  <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Packet Status </span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold"><%=bt.getPacketstatus() %> </span>
             
                </div>

            </div><br/>
                 </div>
                    <%  }  %>
                 <div class="col-sm-4"></div>

             </div>
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
