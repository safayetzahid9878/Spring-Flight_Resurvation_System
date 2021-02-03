<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
                    <div class="container-fluid mt-5">
                        <h1 class="text-center">Airport Details</h1>
                        <div class="row">
                            <div class="col-md-12">

                               <table class="table table-striped table-advance table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Id</th>
                                            <th>Airport code</th>
                                            <th>name</th>
                                            <th>country</th>
                                            <th>city</th>

                                           <th><i class="icon_cogs"></i> Action</th>
                                        </tr>

                                    <c:forEach var="mm" items="${map.tList}">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.airport_code}</td>
                                            <td>${mm.name}</td>
                                            <td>${mm.country}</td>
                                            <td>${mm.city}</td>
    
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="/airport/edit/${mm.id}"><i class="icon_plus_alt2"></i></a>
                                                    <a class="btn btn-danger" href="/airport/delete/${mm.id}"><i class="icon_close_alt2"></i></a>
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