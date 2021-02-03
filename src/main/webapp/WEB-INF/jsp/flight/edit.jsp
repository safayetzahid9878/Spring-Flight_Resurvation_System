<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                   
                    <!--This is for edit form-->
                
                    <h1 class="text-center">Flight Update</h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-8">
                                <form action="/flight/update" method="POST">
                                    <div class="form-group">
                                        <label for="id">Id :</label>
                                        <input type="text" class="form-control" id="id" name="id" value="${t.id}">
                                    </div>

                                    <div class="form-group">
                                        <label for="flightName">Airline:</label>
                                        <input type="text" class="form-control" id="airplane_name" name="airline" value="${t.airline}">
                                    </div>
                                    <div class="form-group">
                                        <label for="source">Source:</label>
                                        <input type="text" class="form-control" id="owner"  name="source" value="${t.source}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Departure</label>
                                        <input type="text" class="form-control" id="model" name="departure" value="${t.departure}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="nid">Date</label>
                                        <input type="text" class="form-control" id="model" name="f_date" value="${t.f_date}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="passport">arrival_time</label>
                                        <input type="text" class="form-control" id="arrival_time" name="arrival_time" value="${t.arrival_time}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Departure time:</label>
                                        <input type="text" class="form-control" id="departure_time" name="departure_time" value="${t.departure_time}">
                                    </div>
                                     <div class="form-group">
                                        <label for="nid">Class name:</label>
                                        <input type="text" class="form-control" id="class_name" name="class_name" value="${t.class_name}">
                                    </div>
                                     <div class="form-group">
                                        <label for="nid">Flight charge:</label>
                                        <input type="text" class="form-control" id="flight_charge" name="flight_charge" value="${t.flight_charge}">
                                    </div>
                                     <div class="form-group">
                                        <label for="nid">Airplane:</label>
                                        <input type="text" class="form-control" id="flight_charge" name="airpalne" value="${t.airpalne}">
                                    </div>
                                     <div class="form-group">
                                        <label for="nid">Flight Name:</label>
                                        <input type="text" class="form-control" id="flight_charge" name="flight_name" value="${t.flight_name}">
                                    </div>
                                     <div class="form-group">
                                        <label for="nid">Seat No:</label>
                                        <input type="text" class="form-control" id="seatNo" name="seatNo" value="${t.seatNo}">
                                    </div>
                                    
                                     <div class="form-group">
                                        <label for="nid">Discount:</label>
                                        <input type="text" class="form-control" id="discount" name="discount" value="${t.discount}">
                                    </div>
                                                       
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>
                            </div>

                            <div class="col-md-2">

                            </div>
                        </div>
                    </div>
                   
                </section>
            </section> 
            <!--main content end-->
       <jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />
       
