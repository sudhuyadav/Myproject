<%-- 
    Document   : ViewEmpQueryAnswer
    Created on : Apr 25, 2017, 2:45:47 PM
    Author     : S S YADAV
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_EmployeeQuery"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Employee Answer  Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%
        String empusername= session.getAttribute("employeename").toString();
        Bean_EmployeeQuery beq=new Bean_EmployeeQuery();
        beq.setE_username(empusername);
       List l= beq.getOneEmpQueryRec();
        Iterator it=  l.iterator();
       
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
                    <span style="font-size: 30px;font-weight: bold">View Employee Query Answer Details </span>
                    <br/><br/>  <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                    
                            <table class="table table-bordered table-hover table-responsive" id="tb">
                        <tr>
                            <th></th>
                            <th>Username</th>
                            <th>Subject</th>
                            <th>Date</th>
                            <th>View Answer</th>
                             <th>Delete</th>
                        </tr>
                        <%
         while(it.hasNext())
        {
         beq=  (Bean_EmployeeQuery) it.next();
       
         
         %>
         <tr>
             <td></td>
             <td><%=beq.getE_username()   %>  </td>
             <td><%=beq.getSubject()   %>  </td>
             <td><%=beq.getQuery_datetime()  %></td>
             <td><a href="ViewOneQueryAns.jsp?queryid=<%=beq.getQuery_id()%>"><span style="font-size: 15px;font-weight: bold" title="View">View</span></a></td>
             <td><a href="Code/DeleteOneQueryCode.jsp?queryid=<%=beq.getQuery_id()%>" ><span class="glyphicon glyphicon-trash text-danger" title="Delete" style="font-size: 18px"></span></a></td>
                                
         </tr>
        
                           
         <%  } %>
          </table>
                </div>
                <div class="col-sm-2"></div>
            </div>
              <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
        </div>
         <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
