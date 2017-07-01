<%-- 
    Document   : CustomerProfile
    Created on : Mar 23, 2017, 2:15:20 PM
    Author     : S S YADAV
--%>

<%@page import="Bean.Bean_EmployeeRegistration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Employee Profile Page</title>
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
                    <span style="font-size: 30px;font-weight: bold">Employee Profile Page</span>
                    <br/><br/></div>
                 <%  String str= session.getAttribute("employeename")+"";
         Bean_EmployeeRegistration bc=new Bean_EmployeeRegistration();
          bc.setUername(str);
         List l= bc.getOneEmpRecordByUsername();
           Iterator it= l.iterator();
           if(it.hasNext())
           {
             bc= (Bean_EmployeeRegistration) it.next();
            %>
            </div>
            <div class="row">
                <div class="col-sm-3"></div>     
                <div class="col-sm-6">
                    <table class="table table-responsive table-hover table-bordered text-center">
                        <tr>
                            <th>Employee Name:</th>
                            <td style="font-size: 15px;font-weight: bold"><%=bc.getEmpName() %></td>
                        </tr>   
                          <tr>
                              <th>Gender</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getEmp_gender() %></td>
             
                        </tr>  
                         <tr>
                              <th>Employee Email</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getEmail() %></td>
             
                        </tr> 
                          <tr>
                              <th>Date of Birth</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getDob() %></td>
             
                        </tr>  
                          <tr>
                              <th>Employee Address</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getAddress() %></td>
             
                        </tr>  
                          
                          <tr>
                             <th>User Name</th>
                             <td style="font-size: 15px;font-weight: bold"><span><%=bc.getUername() %></span> </td>
             
                        </tr> 
                         
                          <tr>
                              <th>Mobile Number</th>
                              <td style="font-size: 15px;font-weight: bold"><%=bc.getMobile() %></td>
             
                        </tr>  
                        
                    </table>
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
