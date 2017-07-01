<%-- 
    Document   : ViewOneQueryAns
    Created on : Apr 25, 2017, 3:13:00 PM
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
        <title>Show Query Answer Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
    </head>
    <body>
        <%
    int qid=  Integer.parseInt(request.getParameter("queryid").trim());
    Bean_EmployeeQuery beq=new Bean_EmployeeQuery();
    beq.setQuery_id(qid);
   List l= beq.getOneQueryRec();
  Iterator it=    l.iterator();
  
        
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
                    <span style="font-size: 30px;font-weight: bold">View Employee Query Answer</span>
                    <br/><br/>  <br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4">
                    <%
  
    if(it.hasNext())
    {
       beq=(Bean_EmployeeQuery) it.next();
     %>
                     <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Employee Username</span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 17px;font-family: century;"><%=beq.getE_username() %></span>
                </div>

            </div><br/>
              <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Subject</span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 17px;font-family: century;"><%=beq.getSubject() %></span>
                </div>

            </div><br/>
              <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Query </span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 17px;font-family: century;"><%=beq.getQuery() %></span>
                </div>

            </div><br/>
              <div class="row">
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 18px;font-weight: bold">Answer</span>
                </div> 
                <div class="col-sm-6">
                    <span class="text-center" style="font-size: 17px;font-family: century;"><%=beq.getQuery_reply() %></span>
                </div>

              </div><br/><%  }  %>
                </div>
                <div class="col-sm-4"></div>
            </div>
              <div class="row">
                <div class="col-sm-12">
                    <br/><br/><br/><br/>
                </div>
            </div>
            <%@include file="MasterPage/Footer1.jsp" %>
        </div>
    </body>
</html>
