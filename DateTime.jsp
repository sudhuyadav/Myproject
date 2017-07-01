<%-- 
    Document   : DateTime
    Created on : Mar 22, 2017, 12:00:48 AM
    Author     : S S YADAV
--%>
<%@page import="java.sql.*"%>
<%@page import="Bean.Bean_DateT"%>
<%@page import="Bean.BeanDateTime"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
          Bean_DateT b=new Bean_DateT();
          java.util.Date d=new java.util.Date();
          java.sql.Date sd=new java.sql.Date(d.getTime());
          String str=d+" ,now()";
        //  out.print(now());
            // b.setDateTime();
             out.print(b.insData());
            
            %>
    </body>
</html>
