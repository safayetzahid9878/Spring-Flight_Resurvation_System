<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
                    <div class="container-fluid mt-5">
                        <h1 class="text-center">Flight Details</h1>
                        <div class="row">
                            <div class="col-md-12">

                               <table class="table table-striped table-advance table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Id</th>
                                            <th>Airline</th>
                                            <th>From</th>
                                            <th>To</th>
                                            <th>Date</th>
                                            <th>Arrival time</th>
                                            <th>Departure time</th>
                                            <th>Class name</th>
                                            <th>Flight charge</th>
                                            <th>Airplane</th>
                                            <th>Flight Name</th>
<!--                                            <th>Seat No</th>-->

                                            
                                           <th><i class="icon_cogs"></i> Action</th>
                                        </tr>

                                    <c:forEach var="mm" items="${map.tList}">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.airline}</td>
                                            <td>${mm.source}</td>
                                            <td>${mm.departure}</td>
                                            <td>${mm.f_date}</td>
                                            <td>${mm.arrival_time}</td>
                                            <td>${mm.departure_time}</td>
                                             <td>${mm.class_name}</td>
                                            <td>${mm.flight_charge}</td>
                                            <td>${mm.airpalne}</td>
                                            <td>${mm.flight_name}</td>
<!--                                            <td>{mm.seatNo}</td>-->
                                            
                                            
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="/flight/edit/${mm.id}"><i class="icon_plus_alt2"></i></a>
                                                    <a class="btn btn-danger" href="/flight/delete/${mm.id}"><i class="icon_close_alt2"></i></a>
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