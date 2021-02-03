<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                   
                    <!--This is for edit form-->
                
                    <h1 class="text-center">Airplane Update</h1>
                    <div class="container">
                        <div class="row">
                            <div class="col-md-2">

                            </div>
                            <div class="col-md-8">
                                <form action="/airplane/update" method="POST">
                                    <div class="form-group">
                                        <label for="id">Id :</label>
                                        <input type="text" class="form-control" id="id" name="id" value="${t.id}">
                                    </div>

                                    <div class="form-group">
                                        <label for="firstName">Airplane name</label>
                                        <input type="text" class="form-control" id="airplane_name" name="airplane_name" value="${t.airplane_name}">
                                    </div>
                                    <div class="form-group">
                                        <label for="lastName">Owner</label>
                                        <input type="text" class="form-control" id="owner"  name="owner" value="${t.owner}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Model</label>
                                        <input type="text" class="form-control" id="model" name="model" value="${t.model}">
                                    </div>
                                    <div class="form-group">
                                        <label for="passport">Engine</label>
                                        <input type="passport" class="form-control" id="nid" name="engeen" value="${t.engeen}">
                                    </div>
                                    <div class="form-group">
                                        <label for="nid">Capacity</label>
                                        <input type="text" class="form-control" id="capacity" name="capacity" value="${t.capacity}">
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
       
