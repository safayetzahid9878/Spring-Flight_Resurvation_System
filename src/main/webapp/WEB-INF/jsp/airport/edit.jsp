<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                   
                    <!--This is for edit form-->
                
                    <h1 class="text-center">Airport Update</h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-8">
                                <form action="/airport/update" method="POST">
                                    <div class="form-group">
                                        <label for="id">Id :</label>
                                        <input type="text" class="form-control" id="id" name="id" value="${t.id}">
                                    </div>

                                    <div class="form-group">
                                        <label for="firstName">Airport code</label>
                                        <input type="text" class="form-control" id="airplane_name" name="airport_code" value="${t.airport_code}">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Airport Name</label>
                                        <input type="text" class="form-control" id="owner"  name="name" value="${t.name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Country</label>
                                        <input type="text" class="form-control" id="country" name="country" value="${t.country}">
                                    </div>
                                    <div class="form-group">
                                        <label for="passport">City</label>
                                        <input type="text" class="form-control" id="city" name="city" value="${t.city}">
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
       
