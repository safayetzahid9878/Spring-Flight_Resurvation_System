<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
                    <div class="container-fluid mt-5">
                        <h1 class="text-center">Passenger Form</h1>
                        <div class="row">
                            <div class="col-md-12">

                               <table class="table table-striped table-advance table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Id</th>
                                            <th>First name</th>
                                            <th>Last name</th>
                                            <th>NID</th>
                                            <th>Passport id </th>
                                            <th>Gender</th>
                                            <th>Contact</th>
                                            <th>Email</th>
                                           <th><i class="icon_cogs"></i> Action</th>
                                        </tr>

                                    <c:forEach var="mm" items="${map.tList}">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.first_name}</td>
                                            <td>${mm.last_name}</td>
                                            <td>${mm.NID}</td>
                                            <td>${mm.passport_id}</td>
                                            <td>${mm.gender}</td>
                                            <td>${mm.contact}</td>
                                            <td>${mm.email}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="/passenger/edit/${mm.id}"><i class="icon_plus_alt2"></i></a>
                                                    <a class="btn btn-danger" href="/passenger/delete/${mm.id}"><i class="icon_close_alt2"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

                </section>
            </section>
        
      
<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />