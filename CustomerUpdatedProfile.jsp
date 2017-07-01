<%-- 
    Document   : CustomerUpdatedProfile
    Created on : Mar 24, 2017, 8:22:39 PM
    Author     : S S YADAV
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Updated Profile Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
             <div class="row">
                <div class="col-sm-12 text-center text-danger">
                    <span style="font-size: 30px;font-weight: bold">Customer Updated Profile Page</span>
                    <br/><br/><br/><br/></div>
            </div>
            <%
             String str= session.getAttribute("customername")+"";
             //out.print(str);
             Bean_Customer bc=new Bean_Customer();
          bc.setC_username(str);
         List l= bc.getCustomerRecord();
           Iterator it= l.iterator();
           if(it.hasNext())
           {
             bc= (Bean_Customer) it.next();
                %>
            <div class="row">
                <div class="col-sm-3"></div>  
                <div class="col-sm-6">
                    <form action="Code/UpdatedProfileCode.jsp" method="post">
                        <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Customer Name</span></div>
                            <div class="col-sm-6">  
                                <input type="text" class="form-control input-lg"name="name"value="<%=bc.getC_name() %>"/></div>
                    
            </div><br/>
                                        <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Gender</span></div>
                            <div class="col-sm-6">  
                                <label class="btn btn-primary ">        <input type="radio" name="gender" value="male"<%if(bc.getC_gender().equals("male")) {   %> checked=""  <%  } %> class="radio radio-inline" required="" title="Select Gender"/><span style="font-size: 18px;text-align: center">Male</span></label>
                        <label class="btn btn-primary ">   <input type="radio" name="gender" value="female" class=" radio radio-inline"<%if(bc.getC_gender().equals("female")) {   %> checked=""  <%  } %> required="" title="Select Gender"/><span style="font-size: 18px;text-align: center">Female</span></label></div>
                    
            </div><br/>
                              <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Customer Email</span></div>
                            <div class="col-sm-6">  
                                <input type="email" class="form-control input-lg"name="email"value="<%=bc.getC_email() %>"/></div>
                    
            </div><br/>
                     <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Date Of Birth</span></div>
                            <div class="col-sm-6">  
                                <input type="date" class="form-control input-lg"name="dob"value="<%=bc.getC_dob() %>"/></div>
                    
            </div><br/>
                     <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Customer Address</span></div>
                            <div class="col-sm-6">  
                                <textarea rows="7" class="form-control input-lg"name="address"style="resize: none" value=""><%=bc.getC_address() %> </textarea></div>
                    
            </div><br/>
            <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Customer Pin</span></div>
                            <div class="col-sm-6">  
                                <input type="number" class="form-control input-lg" name="pin" value="<%=bc.getC_pin() %>"/></div>
                    
            </div><br/>
            <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Username</span></div>
                            <div class="col-sm-6">  
                                <input type="text" disabled="" class="form-control input-lg" value="<%=bc.getC_username() %>"/></div>
                    
            </div><br/>
                     <div class="row">
                            <div class="col-sm-6 text-center"> <span style="font-size: 17px;font-weight: bold;">Mobile Number</span></div>
                            <div class="col-sm-6">  
                                <input type="number" class="form-control input-lg"name="mobile" value="<%=bc.getC_mobile() %>"/></div>
                                
                           <input type="hidden" name="cid" value="<%= bc.getCustomerId() %>"/>
                                <input type="hidden" value="<%= bc.getC_username() %>" name="username"/>
                                <input type="hidden" value="<%= bc.getC_password()%>" name="pass" />
                     </div><br/>
               <div class="row">
                   <div class="col-sm-6">
                       <input type="submit" class="btn btn-block btn-danger"style="font-size: 17px;font-weight: bold" value="Submit"/>
                   </div>
                            <div class="col-sm-6">  
                                <input type="reset" class="btn btn-block btn-primary"style="font-size: 17px;font-weight: bold" />
                            </div>
                    
            </div><br/>
            
                                </form>
                </div>
                <div class="col-sm-3"></div>

            </div>
            <%  }  %>
             <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
