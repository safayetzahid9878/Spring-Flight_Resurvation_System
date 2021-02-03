<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />


    <body>
        <div class="col-md-1" id="div3">

        </div>


        <div class="col-md-9 container" id="div3">

            <div class="checkout-inner">
                <div class="checkout-summary">
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-6">
                            <h3 class="text-center">Payment</h3>
                            <label for="fname" class="text-center">Accepted Cards</label>
                            <div class="icon-container text-center">
                                <i class="fa fa-cc-visa" style="color:navy;"></i>
                                <i class="fa fa-cc-amex" style="color:blue;"></i>
                                <i class="fa fa-cc-mastercard" style="color:red;"></i>
                                <i class="fa fa-cc-discover" style="color:orange;"></i>
                            </div>
                        </div>
                       <div class="col-md-3"></div>
                    </div>


                    <div class="col-md-12" >
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
                            CVV NO: <input class="form-control" id="caedno" name="cvvNo" placeholder="CVV Number" required="" type="number">
                        </div>
                    </div>

                    <div class="checkout-btn">
                        <button class="example1 btn btn-primary" type="submit" id="submitbtn">Confirm Payment</button>
                        <button class="btn btn-info"> NOT NOW</button>
  
                         <button id="singlebutton" name="singlebutton" class="btn btn-primary"  data-toggle="modal" data-target="#exampleModal" data-whatever="@mdo">Create Product</button>
                        
                </div>
            </div>
        </div>
        <div class="col-md-1">

        </div>

    </body>  
    
    <script>
    $.sweetModal({
        content: 'This is a success.',
        icon: $.sweetModal.ICON_SUCCESS
    });
//$('#myModal').on('shown.bs.modal', function () {
//  $('#myInput').trigger('focus');
//});


</script>
</html>

<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />


<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" >
  <div class="modal-dialog" role="document" >
    <div class="modal-content" style="background-color: #e1f5c4">
      <div class="modal-body" >
        <form>
            <div class="form-group">
                <label for="recipient-name" class="col-form-label"><h3>Product Added Successfully</h3></label>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
