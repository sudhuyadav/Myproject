<%-- 
    Document   : UpdateCustRecord
    Created on : Mar 18, 2017, 11:48:22 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Updated Customer Page</title>
        <%@include file="MasterPage/Header.jsp" %>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12">
                    <%
                      String str=  session.getAttribute("customername")+"";
                        out.print(str);
                        %>
                </div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
