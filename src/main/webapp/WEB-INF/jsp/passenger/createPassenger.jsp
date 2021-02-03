
<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />

<div class="row">
    <div class="col-lg-12">
        <section class="panel color2">
            <header class="panel-heading text-center">
                <h1> Create Passenger</h1>
            </header>
            <div class="panel-body">
                <form method="post" action="/passenger/save">
                    <div class="form-group">
                        <label for="name">First_name:</label>
                        <input type="text" class="form-control" id="airplane_name" placeholder="Enter first_name" name="first_name">
                    </div>
                    <div class="form-group">
                        <label for="salary">Last_name:</label>
                        <input type="text" class="form-control" id="last_name" placeholder="Enter last_name" name="last_name">
                    </div>
                    <div class="form-group">
                        <label for="nid">NID:</label>
                        <input type="text" class="form-control" id="NID" placeholder="Enter NID" name="NID">
                    </div>
                    <div class="form-group">
                        <label for="area">Passport_id:</label>
                        <input type="text" class="form-control" id="passport_id" placeholder="Enter passport_id" name="passport_id">
                    </div>

                    <div class="form-group">
                        <label for="other">Gender :</label>
                        <input type="radio" id="male" name="gender" value="male">
                        <label for="male">Male :</label>

                        <input type="radio" id="female" name="gender" value="female">
                        <label for="female">Female :</label>

                        <input type="radio" id="other" name="gender" value="other">
                        <label for="other">Other :</label>

                    </div>


                    <div class="form-group">
                        <label for="area">Contact:</label>
                        <input type="text" class="form-control" id="contact" placeholder="Enter contact" name="contact">
                    </div>

                    <div class="form-group">
                        <label for="area">Email:</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>


                    <button type="submit" class="btn btn-primary">Submit</button>

                </form>
            </div>
        </section>

    </div>       
</div> 

</section>
</section>
</section>
<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />

