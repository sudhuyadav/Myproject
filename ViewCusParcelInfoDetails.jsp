<%-- 
    Document   : ViewCusParcelInfoDetails
    Created on : May 9, 2017, 3:53:03 PM
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
        <title>Details parcel information Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%            int ser = Integer.parseInt(request.getParameter("ser"));
            Bean_NewCustomer bnc = new Bean_NewCustomer();
            bnc.setSer(ser);
            List l = bnc.getAllRecordById();
            Iterator it = l.iterator();


        %>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center text-danger">
                    <span style="font-size: 30px;font-weight: bold">View Customer Parcel Information</span>
                    <br/><br/>  <br/><br/></div>
            </div>
             <%                                 if (it.hasNext()) {
                        bnc = (Bean_NewCustomer) it.next();
                %>
            <div class="row">
                <div class="col-sm-4"></div>
               
                <div class="col-sm-4">
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Parcel name</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getParcelname()%></span>
                        </div>

                    </div><br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Parcel Type</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getP_type()%></span>
                        </div>

                    </div><br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Weight</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getWeight()%></span>
                        </div>

                    </div><br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Length</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getLen()%></span>
                        </div>

                    </div><br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Parcel Width</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getWidth()%></span>
                        </div>

                    </div><br/>
                    <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Parcel Height</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getHight()%></span>
                        </div>

                    </div><br/>
                </div> 

                <div class="col-sm-4"></div>
       </div>
                        <div class="row">
                            <div class="col-sm-1"></div>  
                            <div class="col-sm-4">
                                <span class="text-info" style="font-size: 27px;font-family: century;">Sender Details</span><br/><br/>
                                       <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Sender Name</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getOcname() %></span>
                        </div>

                    </div><br/> 
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Father Name</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getOcfname() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Email Address</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getEmail() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Mobile No.</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getPhone() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Sender Pin</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getPin() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Address</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getAddress() %></span>
                        </div>

                    </div><br/>
                            </div>
                            <div class="col-sm-2"></div>
                            <div class="col-sm-4">
                                <span class="text-info" style="font-size: 27px;font-family: century;">Receiver Details</span><br/><br/>
                                       <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Receiver Name</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRname() %></span>
                        </div>

                    </div><br/> 
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Father Name</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRfname() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Email Address</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRemail() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Mobile No.</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRphone() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Receiver Pin</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRpin() %></span>
                        </div>

                    </div><br/>
                            <div class="row">
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 18px;font-weight: bold">Receiver Address</span>
                        </div> 
                        <div class="col-sm-6">
                            <span class="text-center" style="font-size: 17px;font-family: century;"><%=bnc.getRaddress()  %></span>
                        </div>

                    </div><br/>
                            </div><br/>
                            <div class="col-sm-1"></div>
                            <div class="col-sm-6"></div>   
                            <div class="col-sm-3">
                                <button class="btn btn-block btn-lg btn-success"><a href="Code/TakeParcelEmpCode.jsp?ser=<%=bnc.getSer()%>">Take Charge</a></button>
                            </div>
                            <div class="col-sm-3"></div>

                        </div>
                        
                        <%  }%>
            <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
        </div>
            <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
