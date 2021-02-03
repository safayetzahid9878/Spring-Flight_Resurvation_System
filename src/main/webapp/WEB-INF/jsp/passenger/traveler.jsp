
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/f_header.jsp" />

<style>

    .icon-container {
        margin-bottom: 40px;
        padding: 10px 0;
        font-size: 40px;
    }

</style>

<div class="checkout">
    <div class="container-fluid"> 
        <div class="row">
            <div class="col-lg-8">
                <div class="checkout-inner">
                    <div class="billing-address">

                        <form method="post" action="/invoice/save">   
                            <!--.......................div 2.....................-->
                            <div class="row" id="div2"> 
                                <div class="col-md-12">
                                    <h2 class="text-center">TRAVELER INFORMATION</h2>
                                </div>

                                <div class="col-md-6">
                                    <label>First Name</label>
                                    <input class="form-control" type="text" placeholder="First Name" name="first_name">
                                </div>
                                <div class="col-md-6">
                                    <label>Last Name</label>
                                    <input class="form-control" type="text" placeholder="Last Name" name="last_name">
                                </div>

                                <div class="col-md-6">
                                    <label>NID:</label>
                                    <input class="form-control" type="text" placeholder="NID" name="NID">
                                </div>

                                <div class="col-md-6">
                                    <label>Passport id</label>
                                    <input class="form-control" type="text" name="passport_id"><br>
                                </div>
                                <div class="col-md-6">
                                    <label for="other">Gender :</label>
                                    <input type="radio" id="male" name="gender" value="male">
                                    <label for="male">Male</label>

                                    <input type="radio" id="female" name="gender" value="female">
                                    <label for="female">Female</label>
                                </div>

                                <div class="col-md-6">
                                    <label>Contact</label>
                                    <input class="form-control" type="text" placeholder="Contact" name="contact">
                                </div>

                                <div class="col-md-6">
                                    <label>E-mail</label>
                                    <input class="form-control" type="text" placeholder="E-mail" required="" name="email">
                                </div>
                                <!--Hidden file-->

                                <div class="col-md-6">
                                    <div class="form-group">
                                        <input type="hidden" class="form-control" value="${t.airline}" name="airline">
                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" value="${t.source}" name="source">
                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" value="${t.departure}" name="departure">
                                    </div>

                                    <div class="form-group">
                                        <input type="hidden" class="form-control" value="${t.f_date}" name="f_date">
                                    </div>

                                    <div class="form-group">

                                        <input type="hidden" class="form-control" value="${t.arrival_time}" name="arrival_time">
                                    </div>


                                    <div class="form-group">

                                        <input type="hidden" class="form-control" value="${t.departure_time}" name="departure_time">
                                    </div>

                                    <div class="form-group">

                                        <input type="hidden" class="form-control" value="${t.class_name}" name="class_name">
                                    </div>

                                    <div class="form-group">

                                        <input type="hidden" class="form-control" value="${t.flight_charge}" name="flight_charge">
                                    </div>
                                    <div class="form-group">

                                        <input type="hidden" class="form-control" value="${t.airpalne}" name="airpalne">
                                    </div>


                                </div>


                                <div class="col-md-6">

                                </div>

                                <div class="col-md-6">

                                    <div class="checkout-payment">
                                        <div class="checkout-btn">
                                            <!--<button id="btnProcced1">Continue</button>-->
                                            <button class="example1 btn btn-primary" type="submit" id="submitbtn">Confirm Booking</button>
                                             
                                        </div>
                                    </div>

                                </div>
                            </div>
                        

                            <!--.....................div 1 Started.................-->

                            <div class="col-lg-8" id="div1">
                                <div class="col-lg-12">
                                    <div class="checkout-summary">
                                        <h1>Ticket Information</h1>

                                        <p class="sub-total">Flight Code:<span>  
                                                <input type = "text" value="${t.flight_name}" name="flight_name" class="border-0"/>
                                            </span>
                                        </p>


                                        <p class="sub-total">
                                            Available Seat:-<span><button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">ClicK Hear</button></span>
                                        </p>

                                       
                                            
                                        
                                        <h3 style="color: red; font-weight: bold"><span >${map.booked}</span></h3>
                                         <p class="sub-total">
                                            Seat No :<span><input id="results" type = "text" name="seatNo"/></span>

                                        </p>

                                        <p class="sub-total">  
                                            Members :<span><input type = "number" name= "totalSeat"/></span>
                                        </p>


                                        <p class="sub-total">
                                            Discount: (%)<span><input type = "text" name= "discount" class="border-0" value="${t.discount}"/></span>
                                        </p>

                                    </div>

                                    <div class="checkout-payment">

                                        <div class="checkout-btn">
                                            <button id="btnProcced">Book</button>
                                        </div>
                                    </div>
                                </div>
                            </div>           

                        </form>
                    </div>

                </div>
            </div>
            <div class="col-lg-4">
                <div class="checkout-inner">
                    <div class="checkout-summary">
                        <h1>Flight details</h1>
                        <h2>${t.source} - ${t.departure}</h2>
                        <p>Airline<span>${t.airline}</span></p>
                        <p>Arrival Time<span>${t.arrival_time}</span></p>
                        <p>Departure Time<span>${t.departure_time}</span></p>
                        <p>Class Name<span>${t.class_name}</span></p>

                    </div>



                </div>
            </div>

        </div>
    </div>
</div>
                        
<!--............Modal Form..........................-->

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Please Choose your seat</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form>
                    <div class="col-lg-12 container">     
                        <div class="form-group">
                             <h2>Available Seat</h2>
                            <label for="message-text" class="col-form-label"> <h3>${t.seatNo}</h3></label>
                        </div>                  
                    </div>
                        <div class="col-lg-12"> 
                            <div class="form-group" style="color: green">
                                <h2 class="text-center">Airplane Seat map</h2>
                            <div class="row">
                                
                         <div class="col-lg-6 text-center"> 
                            <!--<h2>Seat map</h2>-->
                            <input type="checkbox" name="check" value="A1," id="a1" class="chkbox">
                            <label for="ch1">A1</label>

                            <input type="checkbox" name="check" value="A2"  id="a2" class="chkbox">
                            <label for="ch2">A2</label><br>

                            <input type="checkbox" name="check" value="B1,"  id="b1" class="chkbox">
                            <label for="ch2">B1</label>

                            <input type="checkbox" name="check" value="B2"  id="b2" class="chkbox">
                            <label for="ch2">B2</label><br>
                            
                            <input type="checkbox" name="check" value="C1,"  id="c1" class="chkbox">
                            <label for="ch2">C1</label>
                            <input type="checkbox" name="check" value="C2"  id="c2" class="chkbox">
                            <label for="ch2">C2</label><br>

                            <input type="checkbox" name="check" value="D1," id="d1" class="chkbox">
                            <label for="ch2">D1</label>
                            <input type="checkbox" name="check" value="D2" id="d2" class="chkbox">
                            <label for="ch2">D2</label><br>
                            
                            <input type="checkbox" name="check" value="E1," id="e1" class="chkbox">
                            <label for="ch2">E1</label>
                            <input type="checkbox" name="check" value="E2" id="e2" class="chkbox">
                            <label for="ch2">E2</label>
                            

                        </div>  
                                
                                <div class="col-lg-6 text-center contact-info"> 
                            <!--<h2></h2>-->
                            <input type="checkbox" name="check" value="F1," id="a1" class="chkbox">
                            <label for="ch1">F1</label>

                            <input type="checkbox" name="check" value="F2"  id="a2" class="chkbox">
                            <label for="ch2">F2</label><br>

                            <input type="checkbox" name="check" value="G1,"  id="b1" class="chkbox">
                            <label for="ch2">G1</label>

                            <input type="checkbox" name="check" value="G2"  id="b2" class="chkbox">
                            <label for="ch2">G2</label><br>
                            
                            <input type="checkbox" name="check" value="H1,"  id="c1" class="chkbox">
                            <label for="ch2">H1</label>
                            <input type="checkbox" name="check" value="H2"  id="c2" class="chkbox">
                            <label for="ch2">H2</label><br>

                            <input type="checkbox" name="check" value="J1," id="d1" class="chkbox">
                            <label for="ch2">J1</label>
                            <input type="checkbox" name="check" value="J2" id="d2" class="chkbox">
                            <label for="ch2">J2</label><br>
                            
                            <input type="checkbox" name="check" value="K1," id="e1" class="chkbox">
                            <label for="ch2">K1</label>
                            <input type="checkbox" name="check" value="K2" id="e2" class="chkbox">
                            <label for="ch2">K2</label>
                            

                        </div> 
                                
                   
               
                         </div>
                    </div>
            </div>
                         </form>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>             
            </div>
        </div>
    </div>
</div>
<!--............Modal End...................-->


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>
<jsp:include page="/WEB-INF/jsp/common/f_footer.jsp" />

<script>
    $("#div2").hide();
    $("#btnProcced").on("click", function () {
        $("#div1").hide();
        $("#div2").show();
    });



   function showValues(a) {
//...............console.log($("#a1").val())
        var fields = $("#a1,#a2,#b1,#b2,#c1,#c2").serializeArray();
        alert(this.value);
        jQuery.each(fields, function (i, field) {
            $("#results").val($("#a1").val() + " ");
        });
   
    }


    
    $(".chkbox").on("click", function(){
        $("#results").val($("#results").val() + " " + this.value);
    });
    
    
    
      

</script>
