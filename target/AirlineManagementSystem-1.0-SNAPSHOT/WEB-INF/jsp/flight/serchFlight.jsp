
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/f_header.jsp" />
<section>
    <section class="wrapper">
        <div class="container-fluid mt-5">
            <h1 class="text-center">AVAILABLE FLIGHT</h1>
            <div class="row">
                <div class="col-md-12">

                    <table class="table table-striped table-advance table-hover">
                        <tbody>
                            <tr>
                                <th>Id</th>
                                <th>airline</th>
                                <th>From</th>
                                <th>To</th>
                                <th>Flight Date</th>
                                <th>Arrival time</th>
                                <th>Departure time</th>
                                <th>Class name</th>
                                <th>Flight charge</th>
                                <th>Airplane</th>

                                <th><i class="icon_cogs"></i> Action</th>
                            </tr>

                            <c:forEach var="mm" items="${map.flights}">
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

                                    <td>
                                        <div class="btn-group">
                                            <a class="btn btn-primary" href="/flight/edite/${mm.id}">Book now<i class="icon_plus_alt2"></i></a>

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

<jsp:include page="/WEB-INF/jsp/common/f_footer.jsp" />