<%-- 
    Document   : CustomerProfile
    Created on : Mar 23, 2017, 2:15:20 PM
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
        <title>Customer Profile Page</title>
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
                    <span style="font-size: 30px;font-weight: bold">Customer Profile Page</span>
                    <br/><br/></div>
                 <%  String str= session.getAttribute("customername")+"";
          Bean_Customer bc=new Bean_Customer();
          bc.setC_username(str);
         List l= bc.getCustomerRecord();
           Iterator it= l.iterator();
           if(it.hasNext())
           {
             bc= (Bean_Customer) it.next();
            %>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>     
                <div class="col-sm-6">
                    <table class="table table-responsive table-hover table-bordered text-center">
                        <tr>
                            <th>Customer Name:</th>
                            <td style="font-size: 15px;font-weight: bold"><%=bc.getC_name() %></td>
                        </tr>   
                          <tr>
                              <th>Gender</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_gender()%></td>
             
                        </tr>  
                         <tr>
                              <th>Customer Email</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_username() %></td>
             
                        </tr> 
                          <tr>
                              <th>Date of Birth</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_dob()%></td>
             
                        </tr>  
                          <tr>
                              <th>Customer Address</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_address() %></td>
             
                        </tr>  
                          <tr>
                              <th>Customer Pin</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_pin() %></td>
             
                        </tr>  
                          <tr>
                             <th>User Name</th>
                             <td style="font-size: 15px;font-weight: bold"><span><%=bc.getC_username()%></span> </td>
             
                        </tr> 
                         
                          <tr>
                              <th>Mobile Number</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getC_mobile() %></td>
             
                        </tr>  
                        
                    </table>
                              <a href="CustomerUpdatedProfile.jsp"><input type="submit" class="btn btn-block btn-danger"style="font-size: 17px;font-weight: bold" value="Update"/></a>
                </div>
                <div class="col-sm-3"></div>

            </div>
            <%  }  %>
             <div class="row">
                <div>
                    <br/><br/><br/>
                </div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
