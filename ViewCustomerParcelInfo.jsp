<%-- 
    Document   : ViewCustomerParcelInfo
    Created on : May 9, 2017, 3:25:54 PM
    Author     : S S YADAV
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_NewCustomer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcel Information Page</title>
     <%@include file="MasterPage/AllLink.jsp" %>
      <style type="text/css">    
            .pg-normal {
                color: black;
                font-weight: normal;
                text-decoration: none;    
                cursor: pointer;    
            }
            .pg-selected {
                color: red;
                font-weight: bold;        
                text-decoration: underline;
                cursor: pointer;
            }
        </style>
        <script src="js/pagination.js" type="text/javascript"></script>
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
                <div class="col-sm-12 text-center text-danger">
                    <span style="font-size: 30px;font-weight: bold">Customer Parcel Information Page</span>
                    <br/><br/></div>
            </div>
            <div class="row">

                <div class="col-sm-2"></div>  
                <div class="col-sm-8">
                     <table class="table table-bordered table-hover" id="tb">
                        <tr>
                            <th></th>
                            <th>Parcel Information</th>
                            <th>Type</th>
                            <th>Sender Name</th>
                            <th>Sender Pin</th>
                            <th>Receiver Name</th>
                            
                            <th>Status</th>
                            <th>View</th>
                        </tr>
                        <%
                        Bean_NewCustomer bnc=new Bean_NewCustomer();
                       List l= bnc.getAllRecord();
                      Iterator it= l.iterator();
                        while(it.hasNext())
                        {
                         bnc=  (Bean_NewCustomer) it.next();
                        
                        %>
                        <tr>
                            <td></td>
                            <td><%=bnc.getParcelname() %>  </td>
                            <td><%=bnc.getP_type()  %>   </td>
                            <td><%= bnc.getOcname() %>  </td>
                            <td><%= bnc.getPin()  %></td>
                            <td><%= bnc.getRname() %>  </td>
                            <td><%= bnc.getStatus()   %></td>
                            <td>   <a href="ViewCusParcelInfoDetails.jsp?ser=<%=bnc.getSer() %>">View</a></td>
                        </tr>
                        <%  }  %>
                     </table>
                </div>
                <div class="col-sm-2"></div>
            </div>
                                               <br/><br/>
            <div class="row text-center">
                <div class="col-sm-3"></div>
                <div class="col-sm-6 " id="pageNavPosition"></div>
                <div class="col-sm-3"></div>
            </div>
            <script type="text/javascript"><!--
           var pager = new Pager('tb', 5);
                pager.init();
                pager.showPageNav('pager', 'pageNavPosition');
                pager.showPage(1);
//--></script>
                      <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/>
                </div>
            </div>
        </div>
                        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
