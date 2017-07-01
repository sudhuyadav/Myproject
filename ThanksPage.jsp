<%-- 
    Document   : ThanksPage
    Created on : May 8, 2017, 8:24:57 PM
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
        <title>Thanks Page</title>
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

                <div class="col-sm-4"></div>  
                <div class="col-sm-4">
                    <div class="row text-center">
                        <div class="col-sm-12">
                            <span class="text-info"  style="font-size: 30px;font-weight: bold;font-family: sans-serif">Thanks for booking</span>
                            <%
                                String prclname = request.getParameter("prclname");
                                String type = request.getParameter("type");
                                String pls =request.getParameter("pls");
                                String qty =request.getParameter("qty");
                                String len =request.getParameter("len");
                                String wid =request.getParameter("wid");
                                String ht =request.getParameter("ht");
//                               out.print(prclname);                       
//                               out.print(type);
//                               out.print(pls);
//                               out.print(qty);
//                               out.print(len);
//                               out.print(wid);
//                               out.print(ht);
                                //out.print(prclname);
                                String empname = request.getParameter("empname");
                                String fname = request.getParameter("fname");
                                String email = request.getParameter("email");
                                String phone = request.getParameter("phone");
                                int pin =Integer.parseInt(request.getParameter("pin"));
                                String address = request.getParameter("address");
                                String rname = request.getParameter("rname");
                                String rfname = request.getParameter("rfname");
                                String remail = request.getParameter("remail");
                                String rmob = request.getParameter("rphone");
                                int rpin =Integer.parseInt(request.getParameter("rpin"));
                                String raddress = request.getParameter("raddress");
                                Bean_NewCustomer bnc=new Bean_NewCustomer();
                                bnc.setParcelname(prclname);
                                bnc.setP_type(type);
                                bnc.setWeight(pls);
                                bnc.setQty(qty);
                                bnc.setLen(len);
                                bnc.setWidth(wid);
                                bnc.setHight(ht);
                                bnc.setOcname(empname);
                                bnc.setOcfname(fname);
                                bnc.setEmail(email);
                                bnc.setPhone(phone);
                                bnc.setPin(pin);
                                bnc.setAddress(address);
                                bnc.setRname(rname);
                                bnc.setRfname(rfname);
                                bnc.setRemail(remail);
                                bnc.setRphone(rmob);
                                bnc.setRpin(rpin);
                                bnc.setRaddress(raddress);
                                bnc.setStatus("new");
                                
                                Bean_NewCustomer bnc1=new Bean_NewCustomer();
                                int tn=0;
                               List l= bnc1.getAllRecord();
                                Iterator it= l.iterator();
                                while(it.hasNext())
                                {
                                  bnc1=  (Bean_NewCustomer)it.next();
                                    tn=  bnc.getTrackingno();
                                }
                                tn=tn+1;
                                bnc.setTrackingno(tn);
                                //out.print(tn);
                              boolean b=  bnc.insComplainData();
                             
                            %>
                            <br/><br/>
                        </div>
                    </div>
                            <div class="row text-center">
                        <div class="col-sm-12">
                            <span class="text-danger"  style="font-size: 30px;font-weight: bold;font-family: sans-serif">Your Tracking Number is : <%= tn %></span>
                        </div>
                            </div>
                </div>
                <div class="dol-sm-4"></div>

            </div>
            <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/>
                </div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>       
    </body>
</html>
