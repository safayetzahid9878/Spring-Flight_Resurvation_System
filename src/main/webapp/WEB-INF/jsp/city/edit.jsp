<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                   
                    <!--This is for edit form-->
                
                    <h1 class="text-center">City Update</h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-8">
                                <form action="/city/update" method="POST">
                                    <div class="form-group">
                                        <label for="id">Id :</label>
                                        <input type="text" class="form-control" id="id" name="city_id" value="${t.city_id}">
                                    </div>

                                    <div class="form-group">
                                        <label for="firstName">City name</label>
                                        <input type="text" class="form-control" id="city_name" name="city_name" value="${t.city_name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Latitude</label>
                                        <input type="text" class="form-control" id="latitude"  name="latitude" value="${t.latitude}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Longitude</label>
                                        <input type="text" class="form-control" id="longitude" name="longitude" value="${t.longitude}">
                                    </div>
                                    <div class="form-group">
                                        <label for="passport">Country</label>
                                        <input type="text" class="form-control" id="country" name="country" value="${t.country}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">City code</label>
                                        <input type="text" class="form-control" id="city_code" name="city_code" value="${t.city_code}">
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
       
