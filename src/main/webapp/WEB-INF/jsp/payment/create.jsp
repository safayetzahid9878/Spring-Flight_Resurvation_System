
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
            <div class="col-lg-12">
                <div class="checkout-inner">
                    <div class="billing-address">

                        <form method="post" action="/payment/save">   

                            <!--..............................div 3.....................................-->
                            <div class="col-md-12 container" id="div3">
                                <p> ${map.booked}</p>
                                <div class="checkout-inner">
                                    <div class="checkout-summary">
                                        <div class="row">
                                            <div class="col-md-3"></div>
                                            <div class="col-md-6">
                                                <h3 class="text-center text-info" >Payment</h3>
                                                <h4 class="text-center  text-info">Accepted Cards</h4>
                                                <div class="icon-container text-center">
                                                    <i class="fa fa-cc-visa" style="color:navy;"></i>
                                                    <i class="fa fa-cc-amex" style="color:blue;"></i>
                                                    <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                                    <i class="fa fa-cc-discover" style="color:orange;"></i>
                                                </div>
                                            </div>
                                            <div class="col-md-3"></div>      
                                        </div>


                                        <div class="col-md-12">
                                            <label>Card Type:</label>
                                            <select class="form-control" name="cardType">
                                                <option>Select Card</option>
                                                <option value="debit">Debit or credit Card</option>     
                                                <option value="paypal">Paypal</option>
                                                <option value="payoner">payoneer</option>
                                            </select>
                                        </div>


                                        <div class="col-md-12">
                                            <label for="city">Expire Date:</label>

                                            <input class="form-control" id="caedno" name="expireData" placeholder="Number" type="date">
                                        </div>
                                        <br>

                                        <div class="col-md-12">
                                            <div class="form-group">

                                                Card No: <input class="form-control" id="caedno" name="cardNo" placeholder="Number" type="text">
                                            </div>
                                        </div>


                                        <div class="col-md-12">
                                            <div class="form-group">  
                                                CVV NO: <input class="form-control" id="caedno" name="cvvNo" placeholder="CVV Number" type="text">
                                            </div>
                                        </div>


                                        <div class="checkout-btn">
                                        
                                            <button type="submit" id="submitbtn" class="btn btn-primary">Confirm Payment</button>
                                                  
                                        </div>
                                    </div>
                                </div>
                            </div>                           
                        </form>
                    </div>

                </div>
            </div>

        </div>                                                            
    </div>
</div>


<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<script src="https://code.jquery.com/jquery-3.5.0.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<script>
	$("#submitbtn").click(function(){	
		swal("successfully payment!", "Please take your invoice!", "success");
	});
        
        
</script>
<jsp:include page="/WEB-INF/jsp/common/f_footer.jsp" />







