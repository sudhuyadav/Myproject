<%-- 
    Document   : Home
    Created on : Mar 22, 2017, 6:04:25 PM
    Author     : S S YADAV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home Page</title>
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
    </head>
    <body>
         <%@include file="MasterPage/Header.jsp" %>
                <div class="container-fluid">
                    <div class="row"><br/><br/><br/>
                        <div class="col-sm-1"></div>  
                        <div class="col-sm-7 text-center">
                            <span class="text-danger " style="font-size: 50px;font-family: initial;font-weight: bold">The India's Best Couriers Services</span>
                         <br/><br/> <br/> <br/> <div class="row">
                                <div class="col-sm-6 ">
                                    <span class="text-info text-center" style="font-size:23px;font-family: inherit;font-weight: bold">Collection Services</span><br/><br/>
                                    <span style="font-size: 14px;font-family: inherit">Collection services work best for those who’ll be in one location 
                                        for most of the day; maybe you work from home, or have 
                                        consignments that need to be collected from the office.
                                        Either way, there are a number of benefits like :
                                      <br/>  1:- No need to wait in. <br/>  2:- Cheaper than collection. <br/>
                                      3:- Evening and weekend sending.
                                        
                                    </span>
                                
                                </div>
                              <div class="col-sm-6 ">
                                  <span style="font-size:23px;font-family: inherit;font-weight: bold" class="text-info">Drop-off Services</span><br/>
                                  <br>
                                  <span style="font-size: 14px;font-family: inherit">
                                        Drop-off services work best for people with a small 
                                        number of parcels that have a busy day schedule:
                                  <br/>  1:- Service from doorstep. <br/>  2:- Beat the queues. <br/>
                                      3:- Timed deliveries. 
                                  </span>
                              </div>
                                </div>
                        </div>
                        <div class="col-sm-4">
                            <img src="image/c6.jpg" alt="" style="height: 380px" class="img img-circle img-thumbnail img-responsive"/>
                        </div>

                    </div><br/><br/><br/>
                    
                   
            <div class="row bg-primary">
                <form  method="post" action="NewCustomerDetails.jsp">
                <div class="col-sm-2"></div>  
                <div class="col-sm-8">
                    <br/>
                    <input type="text" class="form-control input-lg" name="prclname" placeholder="Enter Parcel Name" title="Enter Parcel Information" required=""/></br>
                        <div class="row text-center">
                            <div class="col-sm-6">
                                <label class="btn btn-primary  ">        <input type="radio"checked=""  id="doc" name="type" class="radio radio-inline" value="Document" /><span style="font-size: 18px;text-align: center">Document</span></label>
                            </div><div class="col-sm-6">
                                <label class="btn btn-primary ">   <input type="radio" onclick="parcelvalidate()" id="par" name="type" class=" radio radio-inline  " value="Parcel" /><span style="font-size: 18px;text-align: center">Parcel</span></label>
                            </div>  </div>
                        <br/><br/>
                        <div id="sel">
                            <div class="row">
                                <div class="col-sm-6">
                                    <select class="form-control input-lg "id="wt"   name="pls" title="Select Parcel Weight"  >
                                <option >---Select Parcel weight---</option>

                                
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
                                            <input type="number" id="qt" min="1" class="form-control input-lg " name="qty"/></div>
                                </div>
                            </div>
                            </div><br/>
                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Length(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number" id="length"  min="1" class="form-control input-lg" name="len"/> </div>
                                    </div></div>
                            
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Width(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number" min="1" id="width" class="form-control input-lg" name="wid" /> </div>
                                    </div></div>
                                <div class="col-sm-4">
                                    <div class="row">
                                        <div class="col-sm-6">
                                    <span style="font-size: 18px;font-family: initial">Height(C.M.)</span></div>
                                        <div class="col-sm-6">   <input type="number"  min="1" id="height" class="form-control input-lg" name="ht" /> </div>
                                    </div></div>
                                </div><br/>
                        </div></div>
                <div class="col-sm-2"></div>
           
                
                
                             <div class="col-sm-5"></div>
                             <div class="col-sm-2 text-center">
                                <input type="submit" value="Quate & Book" class="btn btn-block btn-danger"style="font-size: 17px;font-weight: bold"/><br/>
               
                             </div>
                             <div class="col-sm-5"></div>

            </form>
                
            </div>
                         
                             
                      <br/><br/>
                         
               
                    
                    
                    <div class="row text-center"><br/><br/>
                        <div class="col-sm-4">
                            <span style="font-size: 30px;font-family: initial">Savings</span><br/><br/>
                            <img src="image/money.jpg" class="img img-circle img-responsive img-thumbnail" alt="Savings" style="width: 170px;height: 170px"/>
                        <br/><br/>
                        <span class="text-info" style="font-size: 25px;font-family: monospace">&#8377;15500,000</span>
                     <br/><br/>
                     <span style="font-size: 11px;">This Amount saved by our customers</span>
                         
                        </div>
                        <div class="col-sm-4">
                           <span style="font-size: 30px;font-family: initial">Customers</span><br/><br/>
                            <img src="image/customer1.jpg" class="img img-circle img-responsive img-thumbnail" alt="customer" style="width: 170px;height: 170px"/>
                        <br/><br/>
                        <span class="text-info" style="font-size: 25px;font-family: monospace;">Over 2 Million</span>
                     <br/><br/>
                     <span style="font-size: 11px;">The number of customers who have sent a parcel through speedex.com</span>
                          
                        </div>
                        <div class="col-sm-4">
                            <span style="font-size: 30px;font-family: initial">Review</span><br/><br/>
                            <img src="image/rev1.jpg" class="img img-circle img-responsive img-thumbnail" alt="review" style="width: 170px;height: 170px"/>
                        <br/><br/>
                        <span class="text-info" style="font-size: 25px;font-family: monospace">Excellent: 4.5/5.0</span>
                     <br/><br/>
                     <span style="font-size: 11px;">Based on over 2,000 independent customer reviews</span>
                         
                        </div>
                    </div><br/><br/>
                    <div class="row">
                        <div class="col-sm-2"></div>    
                        <div class="col-sm-8">
                            <span style="font-size: 14px;font-family: inherit">Working with some of the valuable states of India, 
                                including U.P, Gujrat and Panjab, speedex.com can help you send a parcel to over all states of India,
                                 Not only have we garnered a strong reputation among our customers over the years, we’ve also built solid relationships with a host of high-profile suppliers,
                                 which means we are able to secure big-name express
                            So don't wait until tomorrow to find a courier company that fits the bill; get a courier quote now and send a parcel today!
                            </span>
                        </div>
                        <div class="col-sm-2"></div>

                    </div>
            <div class="row">
                <div class="col-sm-12"><br/><br/><br/></div>
            </div>
                </div>
         <%@include file="MasterPage/Footer1.jsp" %>
    </body>
</html>
