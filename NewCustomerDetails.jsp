<%-- 
    Document   : NewCustomerDetails
    Created on : May 8, 2017, 5:15:13 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New Customer Details Page</title>
        <%@include file="MasterPage/AllLink.jsp" %>
        <script type="text/javascript">
function valid()
{
var pin_code=document.getElementById("pin");
var user_mobile=document.getElementById("phone");
var rpin_code=document.getElementById("rpin");
var ruser_mobile=document.getElementById("rphone");
//var pat1=/^\d{6}$/;
var pat1=/^([1-9])([0-9]){5}$/;
var pattern=/^\d{10}$/;

if(!pattern.test(user_mobile.value))
{
alert("Phone nubmer is in 0123456789 format ");
user_mobile.focus();
return false;
}
if(!pat1.test(pin_code.value))
{
alert("Pin code should be 6 digits and first digit not zero ");
pin_code.focus();
return false;
}

if(!pattern.test(ruser_mobile.value))
{
alert("Phone nubmer is in 0123456789 format ");
user_mobile.focus();
return false;
}
if(!pat1.test(rpin_code.value))
{
alert("Pin code should be 6 digits and first digit not zero ");
pin_code.focus();
return false;
}
}
</script>
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
                <form action="ThanksPage.jsp" method="post">
                <div class="col-sm-1"></div>  
                <div class="col-sm-4">
                    <div class="row text-center">
                        <div class="col-sm-12">
                            <span class="text-info"  style="font-size: 30px;font-weight: bold;font-family: initial">Sender Details</span>
                   <br/><br/>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;"> Name</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="text" required="" name="empname" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                        
                            <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Father Name</span>
                             </div> 
                            <div class="col-sm-6">
                                <input type="text" required="" name="fname" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                                      <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Email</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="email" required="" name="email" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                                      <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Mobile Number</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="number" required="" id="phone" onchange="return valid()" name="phone" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                             <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Pin Number</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="number" required=""id="pin" onchange="return  valid()"  name="pin" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                        <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Address </span>
                            </div> 
                            <div class="col-sm-6">
                                <textarea class="form-control" name="address" rows="6" style="resize: none" required="" style="font-size: 17px;font-family: century;"></textarea>
                            </div>

                        </div><br/>
<!--                        <div class="row">
                            <div class="col-sm-12">
                        <input type="submit" value="Submit" class="btn btn-block btn-danger"style="font-size: 17px;font-weight: bold"/><br/>
               
                            </div>
                        </div>-->
                    
                </div> 
                 <div class="col-sm-2"></div>

                 <div class="col-sm-4">
                     <div class="row text-center">
                        <div class="col-sm-12">
                            <span class="text-info"  style="font-size: 30px;font-weight: bold;font-family: initial">Receiver Details</span>
                   <br/><br/>
                        </div>
                    </div>
                        <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Receiver Name</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="text" required="" name="rname" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                        
                            <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Father Name</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="text" required="" name="rfname" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                                      <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Receiver Email</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="email" required="" name="remail" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                                      <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Mobile Number</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="number" required="" name="rphone" id="rphone" onchange="return valid()" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                             <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Pin Number</span>
                            </div> 
                            <div class="col-sm-6">
                                <input type="number" required="" name="rpin" required="" id="rpin" onchange="return  valid()" class="input-lg form-control" style="font-size: 17px;font-family: century;"/>
                           
                            </div>

                        </div><br/>
                        <div class="row">
                            <div class="col-sm-6 text-center">
                                <span  style="font-size: 18px;font-weight: bold;">Receiver Address </span>
                            </div> 
                            <div class="col-sm-6">
                                <textarea class="form-control" rows="6" style="resize: none" name="raddress" required="" style="font-size: 17px;font-family: century;"></textarea>
                            </div>

                        </div><br/>
                 </div>

                <div class="col-sm-1"></div>
                <div class="col-sm-5">
                       <%
          String prclname=  request.getParameter("prclname");
         String type=     request.getParameter("type");
         String pls=request.getParameter("pls");
        String qty= request.getParameter("qty");
      //  out.print(prclname);
        //out.print(pls +"" + qty +""+type );
        String len=request.getParameter("len");
        String wid=request.getParameter("wid");
        String ht=request.getParameter("ht");
            %>
                    <input type="hidden" value="<%=prclname%>" name="prclname"/>
                     <input type="hidden" value="<%=type%>" name="type"/>
                     <input type="hidden" value="<%=pls%>" name="pls"/>
                     <input type="hidden" value="<%=qty %>" name="qty"/>
                     <input type="hidden" value="<%=len %>" name="len"/> 
                     <input type="hidden" value="<%=wid %>" name="wid"/>
                     <input type="hidden" value="<%=ht %>" name="ht"/>


                </div> 
                <div class="col-sm-3">
                    <input type="submit" value="Submit" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold"/><br/>
                 
                </div>
                <div class="col-sm-4"></div>
            </form>
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
