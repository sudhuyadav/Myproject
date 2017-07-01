<%-- 
    Document   : CustomerHome
    Created on : Mar 2, 2017, 11:05:52 PM
    Author     : S S YADAV
--%>

<%@page import="Bean.Bean_Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Home Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row bg-danger">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-sm-12 bg-danger">
                    <%
                     String str=   session.getAttribute("customername")+"";
                     //out.print(str);
                     Bean_Customer bc=new Bean_Customer();
                     bc.setC_username(str);
                   String name=  bc.getCustomerName();
                        %>
                        <span style="font-family: initial;font-size: 30px">Welcome   <%=name %></span>
                      <br/>
                </div>
            </div>
                          <div class="row bg-danger">
                            <div class="col-sm-3"></div> 
                            <div class="col-sm-6">
                                <span style="font-size: 18px;font-family: initial">
                                    Here at speedex, we know just how important it is that your parcels arrive at their 
                                    destination as soon as possible, on time and in excellent condition, which
                                    is why we make it our mission to recommend the best couriers to you. 
                                    All of our couriers are reliable and experienced; they’re also well-known
                                    throughout the world for their excellence.

What’s more, we often have great discounts and sales on a range of our courier services, 
so you can be sure that you’re getting the best deal possible when sending your parcels.

Promotional discount codes - We may from time to time offer promotional discount codes 
which may apply in respect of any, or certain specified, purchases made though this Website.
                                </span>
                            </div>
                            <div class="col-sm-3"></div>

                        </div>
                 <div class="row bg-danger">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
