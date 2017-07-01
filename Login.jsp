<%-- 
    Document   : index
    Created on : Feb 6, 2017, 2:40:52 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 
        <title>index Page</title>
        
        <script src="js/jquery-2.1.4.min.js" type="text/javascript"></script>
        <script src="js/bootstrap.min.js" type="text/javascript"></script>
        <link href="CSS/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/bootstrap-theme.min.css" rel="stylesheet" type="text/css"/>
        <link href="CSS/MyCss.css" rel="stylesheet" type="text/css"/>

    </head>
    <body>
  <%@include file="MasterPage/Header.jsp" %>
  <%
//  String a=  request.getParameter("ab");
//  //  out.print(a);
//    int s=0;
// if(a!=null)
//{
//    if(s==1)
//    response.sendRedirect("Login.jsp");
//}
// else
// {
//     s=1;
//   response.sendRedirect("Home.jsp");
//}
  %>
  <div class="container-fluid">
      <div class="row">
          <div class="col-sm-12"><br/><br/></div>
      </div>
      <div class="row">
          <div class="col-sm-12 text-center"><span style="font-size: 30px;font-weight: bold">Welcome To Speedex Courier Service</span><br/><br><br/></div>
      </div>
      <div class="row">
          <div class="col-sm-12 text-center"><span style="font-size: 30px;font-weight: bold">Login Page</span></div><br/><br/><br/>
      </div>
      <div class="row">
          <div class="col-sm-3"></div>    
          <div class="col-sm-6">
              <form action="Code/LoginCode.jsp" method="post">
                  <input type="email" required="" placeholder="Enter Username" class="form-control input-lg" name="username"/><br/>
                  <input type="password" required="" placeholder="Enter password" class="form-control input-lg" name="pass"/><br/>
                  <input type="submit" value="Submit" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold"/><br/>
                  <input type="reset" value="Reset" class="btn btn-block btn-info" style="font-size: 17px;font-weight: bold"/><br/>
              </form>
              <a href="ForgetPassword.jsp"><span style="font-size: 15px;font-family: initial;padding-left: 40px">Forget Password ?</span></a>
              <a href="CustomerRegistration.jsp"><span style="font-size: 15px;font-family: initial;padding-left: 100px">Register here</span></a>
          </div>
          <div class="col-sm-3"></div>

          
      </div>
      <div class="row">
          <div class="col-sm-12"><br/><br/></div>
      </div>
      
  </div>
   <%@include file="MasterPage/Footer1.jsp" %>
<!--  <div class="container-fluid">
      <div class="row">
          <div class="col-sm-12" style="margin-top: 200px;">
 
      </div>
      </div>
  </div>-->
    </body>
</html>
