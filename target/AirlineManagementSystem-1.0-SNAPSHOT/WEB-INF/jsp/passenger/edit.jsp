<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                                              
                    <h1 class="text-center">Passenger Update</h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-8">
                                <form action="/passenger/update" method="POST">
                                    <div class="form-group">
                                        <label for="id">Id :</label>
                                        <input type="text" class="form-control" id="id" placeholder="Enter Id" name="id" value="${t.id}">
                                    </div>

                                    <div class="form-group">
                                        <label for="firstName">First Name</label>
                                        <input type="text" class="form-control" id="firstName" name="first_name" value="${t.first_name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Last Name</label>
                                        <input type="text" class="form-control" id="username"  name="last_name" value="${t.last_name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">NID</label>
                                        <input type="text" class="form-control" id="nid" name="NID" value="${t.NID}">
                                    </div>
                                    <div class="form-group">
                                        <label for="passport">Passport</label>
                                        <input type="passport" class="form-control" id="nid" name="passport_id" value="${t.passport_id}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Gender</label>
                                        <input type="text" class="form-control" id="gender" name="gender" value="${t.gender}">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="nid">Contact</label>
                                        <input type="text" class="form-control" id="contact" name="contact" value="${t.contact}">
                                    </div>
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="text" class="form-control" id="email" name="email" value="${t.email}">
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
           
       <jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />
       
