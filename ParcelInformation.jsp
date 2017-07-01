<%-- 
    Document   : ParsalInformation
    Created on : Feb 22, 2017, 11:22:46 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Parcel  Page</title>

        <%@include file="MasterPage/AllLink.jsp" %>
        <script>
            $(document).ready(function() {
                //   alert("jhg");   
                $('#sel').hide();
                $('#doc').change(function() {
                    $('#sel').hide("slow");
                });
                $('#par').change(function() {
                    $('#sel').show("slow");
                });
            });
        </script>
        
              <script>
            function parcelvalidate()
            {
           var a= document.getElementById("par").checked;
           if(a==true)
           {
              $('#qt').attr("required",true);
              $('#length').attr("required",true);
              $('#width').attr("required",true);
              $('#height').attr("required",true);   
              $('#wt').attr("required",true);


            //alert("cdd");
           }
            }
        </script>
        
        <script type="text/javascript"> 
        function valid()
{
var pin_code=document.getElementById("pin");
var user_mobile=document.getElementById("phone");
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

}
</script>
    </head>
    <body>
        <%@include file="MasterPage/Header.jsp" %>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
            <div class="row">
                <div class="col-sm-12 text-center">
                    <span style="font-size: 30px;font-weight: bold">Parcel Information</span>
                    <br/><br/></div>
            </div>
            <form action="Code/ParcelInformationCode.jsp" method="post">
            <div class="row">
                <div class="col-sm-2"></div>  
                <div class="col-sm-8">
                    
                    <input type="text" class="form-control input-lg" placeholder="Enter Parcel Name" title="Enter Parcel Information" name="parname" required=""/></br>
                        <div class="row text-center">
                            <div class="col-sm-6">
                        <label class="btn btn-primary ">        <input type="radio" id="doc" name="type" class="radio radio-inline" value="Document" required="" /><span style="font-size: 18px;text-align: center">Document</span></label>
                            </div><div class="col-sm-6">
                        <label class="btn btn-primary ">   <input type="radio" id="par" name="type" class=" radio radio-inline  " value="Parcel" required=""/><span style="font-size: 18px;text-align: center">Parcel</span></label>
                            </div>  </div>
                        <br/><br/>
                        <div id="sel">
                            <div class="row">
                                <div class="col-sm-6">
                            <select class="form-control input-lg "  name="pls" title="Select Parcel Weight" required="" >
                                <option>---Select Parcel weight---</option>

                                 
                                <option value="0.5-1">0.50 --- 1.0 k.g.</option>
                                <option value="1-3">1.0 --- 3.0 k.g.</option>
                               
                                <option value="3-5">3.0 --- 5.0 k.g</option>

                                <option value="5-10">5.0 --- 10.0 k.g</option>
                                <option value="10-20">10.0 --- 20.0 k.g</option>
                                <option value="20-40">20.0 --- 40.0 k.g</option>
                                <option value="40-60">40.0 --- 60.0 k.g</option>
                                <option  value="above 60">above to 60 k.g</option>


                            </select></div>
                                <div class="col-sm-6">
                                    <div class="row">
                                        <div class="col-sm-6"> 
                                            <span style="font-size: 20px;font-family: initial">Enter Quantity:</span></div>
                                        <div class="col-sm-6">
                                            <input type="number" min="1" id="qt" class="form-control input-lg " name="qty"/></div>
                                </div>
                            </div>
                            </div><br/>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Length(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number" id="length" min="1" class="form-control input-lg" name="len"/> </div>
                                    </div></div>
                            
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Width(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number" id="width" min="1" class="form-control input-lg" name="wid" /> </div>
                                    </div></div>
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Height(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number" id="height" min="1" class="form-control input-lg" name="ht" /> </div>
                                    </div></div>
                            </div>
                        </div> <br/>
                         
               
            
                        
                        <div style="font-size: 30px;font-weight: bold" class="bg-primary text-center"  style="border: 2px solid">Receiver Details

                            </div><br/>
                </div>
                             <div class="col-sm-2"></div>
            </div>
            <div class="row"  > 
                <div class="col-sm-4"></div> 
                <div class="col-sm-4" >
                            
                            
                            <input type="text" class="form-control input-lg" name="rname" placeholder="Enter Receiver Name" title="Enter Receiver Name" required=""/><br/>
                            <input type="text" class="form-control input-lg" name="rfname" placeholder="Enter Father Name" title="Enter Father Name" required=""/><br/>
                            <input type="email" class="form-control input-lg" name="remail" placeholder="Enter Receiver Email " title="Enter Receiver Email" required=""/><br/>
                            <input type="number" id="pin" class="form-control input-lg" name="rpin" placeholder="Enter Pin Number" onchange="return  valid()"
                                   title="Enter Pin Number"/><br/>
                             <input type="number" class="form-control input-lg" name="rmobile" id="phone" onchange="return  valid()"
                                   placeholder="Enter Mobile Number" title="Enter Mobile Number"/><br/>
                        
                            <textarea rows="10" class="form-control input-lg" name="raddress" placeholder="Enter Address Here..." style="resize: none"
                                      title="Enter Address Here"  ></textarea><br/>
                             <div class="row">
                   <div class="col-sm-6">
                       <input type="submit" class="btn btn-block btn-danger" style="font-size: 17px;font-weight: bold" value="Submit"/>
                   </div>
                            <div class="col-sm-6">  
                                <input type="reset" class="btn btn-block btn-primary" style="font-size: 17px;font-weight: bold" />
                            </div>
                    
            </div><br/>
                        </div>
                <div class="col-sm-4"></div>
            </div>
                    </form>
               
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/><br/><br/><br/><br/></div>
            </div>
        </div>
        <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
