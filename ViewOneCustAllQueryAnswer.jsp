<%-- 
    Document   : ViewOneCustAllQueryAnswer
    Created on : Apr 26, 2017, 11:25:52 AM
    Author     : S S YADAV
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="Bean.Bean_Query"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Query Answer Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
        <script>
            function meth()
            {
                var b = confirm("Are You sure to delete this Query ?");
                if (b == true)
                    return true;
                else
                    return
                false;

            }
        </script>
    </head>
    <body>
        <%            String cusername = session.getAttribute("customername") + "";
            Bean_Query bq = new Bean_Query();
            bq.setC_username(cusername);
            List l = bq.getOneQueryRecByUsername();
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
                    <span style="font-size: 30px;font-weight: bold">View Our Query Answer Details </span>
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
                        <%                            while (it.hasNext()) {
                                bq = (Bean_Query) it.next();


                        %>
                        <tr>
                            <td></td>
                            <td><%=bq.getC_username()%>  </td>
                            <td><%=bq.getSubject()%>  </td>
                            <td><%=bq.getQuery_datetime()%></td>
                            <td><a href="ViewOneCustQueryAns.jsp?queryid=<%=bq.getQuery_id()%>"><span style="font-size: 15px;font-weight: bold" title="View">View</span></a></td>
                            <td><a href="Code/DeleteOneCustQueryCode.jsp?qid=<%=bq.getQuery_id()%>" ><span class="glyphicon glyphicon-trash text-danger" title="Delete" onclick="return meth()" style="font-size: 18px"></span></a></td>

                        </tr>


                        <%  }%>
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
