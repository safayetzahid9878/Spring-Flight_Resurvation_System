<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container-fluid mt-5">
    <h1 class="text-center">City Form</h1>
    <div class="row">
        <div class="col-md-12">

            <table class="table table-striped table-advance table-hover">
                <tbody>
                    <tr>
                        <th>City id</th>
                        <th>City name</th>
                        <th>Latitude</th>
                        <th>Longitude</th>
                        <th>Country</th>
                        <th>City code</th>

                        <th><i class="icon_cogs"></i> Action</th>
                    </tr>

                    <c:forEach var="mm" items="${map.tList}">
                        <tr>
                            <td>${mm.city_id}</td>
                            <td>${mm.city_name}</td>
                            <td>${mm.latitude}</td>
                            <td>${mm.longitude}</td>
                            <td>${mm.country}</td>
                            <td>${mm.city_code}</td>

                            <td>
                                <div class="btn-group">
                                    <a class="btn btn-primary" href="/city/edit/${mm.city_id}"><i class="icon_plus_alt2"></i></a>
                                    <a class="btn btn-danger" href="/city/delete/${mm.city_id}"><i class="icon_close_alt2"></i></a>
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