<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid mt-5">
    <h1 class="text-center">Booked Ticket</h1>
    <div class="row">
        <div class="col-md-12">

            <table class="table table-striped table-advance table-hover">
                <tbody>
                    <tr>          
                        <th>Ticket No</th> <!--id--> 
                        <th>First name</th>
                        <!--<th>Last name</th>-->
                        <th>Passport id</th>
                        <th>Airline</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Class name</th>
                        <th>Flight charge</th>
                        <th><i class="icon_archive"></i> Status</th>
                    </tr>

                    <c:forEach var="mm" items="${map.t}">
                        <c:if test="${mm.status == 'Booked'}">
                        <tr>                     
                            <td>${mm.id}</td>
                            <td>${mm.first_name}</td>
                            <!--<td>${mm.last_name}</td>-->                                            
                            <td>${mm.passport_id}</td>
                            <td>${mm.airline}</td>
                            <td>${mm.source}</td>
                            <td>${mm.departure}</td>                                        
                            <td>${mm.class_name}</td>                                            
                            <td>${mm.flight_charge}</td>
                            <td><h3 style="color: green">${mm.status}</h3></td>

                        </tr>
                        </c:if>
                    </c:forEach>
                </tbody>
            </table>

        </div>

    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />

