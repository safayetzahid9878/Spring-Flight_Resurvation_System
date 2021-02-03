<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
                    <div class="container-fluid mt-5">
                        <h1 class="text-center">Airplane Form</h1>
                        <div class="row">
                            <div class="col-md-12">

                               <table class="table table-striped table-advance table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Id</th>
                                            <th>Airplane name</th>
                                            <th>Owner</th>
                                            <th>Model</th>
                                            <th>Engine</th>
                                            <th>Capacity</th>
                                            
                                           <th><i class="icon_cogs"></i> Action</th>
                                        </tr>

                                    <c:forEach var="mm" items="${map.tList}">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.airplane_name}</td>
                                            <td>${mm.owner}</td>
                                            <td>${mm.model}</td>
                                            <td>${mm.engeen}</td>
                                            <td>${mm.capacity}</td>
                                            
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="/airplane/edit/${mm.id}"><i class="icon_plus_alt2"></i></a>
                                                    <a class="btn btn-danger" href="/airplane/delete/${mm.id}"><i class="icon_close_alt2"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                      
                            </div>

                        </div>
                    </div>

<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />