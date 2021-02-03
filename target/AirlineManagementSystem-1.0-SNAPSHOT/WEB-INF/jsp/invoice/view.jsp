<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/jsp/common/f_header.jsp" />

<div class="container-fluid mt-5">
    <h3 class="text-center">Cancel your Ticket</h3>
    <div class="row">
        <div class="col-md-12">
            <form action="/invoice/contact" method="POST">
                <input type="text" name="contact" placeholder="Enter Contact **"/>
                <input type="submit" value="Search" style="color: red"/>
                <br><br/>

            </form>
            <form action="/invoice/invoiceUpdate" method="POST">

                <table class="table table-striped table-advance table-hover">
                    <tbody>
                        <tr>

                            <th>Ticket No</th>
                            <th>First name</th>
                            <th>Last name</th>
                            <th>Passport id</th>
                            <th>Airline</th>
                            <th>From</th>
                            <th>To</th>
                            <th>Class name</th>
                            <th>Flight charge</th>
                            <th><i class="icon_cogs"></i>Action</th>
                        </tr>

                        <c:forEach var="mm" items="${map.invoice}">
                            <tr>


<!-- <td><a href="/invoice/edit/${mm.id}">Invoice</a></td>-->
                                <td>${mm.id}</td>
                                <td>${mm.first_name}</td>
                                <td>${mm.last_name}</td>                                            
                                <td>${mm.passport_id}</td>
                                <td>${mm.airline}</td>
                                <td>${mm.source}</td>
                                <td>${mm.departure}</td>                                        
                                <td>${mm.class_name}</td>                                            
                                <td>${mm.flight_charge}</td>    



                                <td>
                                    <div class="btn-group">                
                                        <a type="button" onclick="cancelBooking('${mm.id}', '${mm.airline}', '${mm.source}', '${mm.departure}', '${mm.f_date}', '${mm.arrival_time}', '${mm.departure_time}', '${mm.class_name}', '${mm.first_name}', '${mm.last_name}', '${mm.NID}', '${mm.passport_id}', '${mm.gender}', '${mm.contact}', '${mm.email}', '${mm.flight_charge}', '${mm.totalSeat}', '${mm.totalFlightCharge}', '${mm.discount}', '${mm.grandTotal}', '${mm.seatNo}', '${mm.flight_name}', '${mm.status}', '${mm.airpalne}')" class="btn btn-primary"  data-toggle="modal" data-target="#myModal">Cancel</a>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </form>
        </div>
    </div>
</div>

<jsp:include page="/WEB-INF/jsp/common/f_footer.jsp" />


<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">

        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <!--<h4 class="modal-title text-center"> Header</h4>-->
            </div>
            <div class="modal-body">
                <form action="/cancel/save" method="post">
                    <input type="hidden" name="id" id="id"/>
                    <input type="hidden" name="airline" id="airline"/>
                    <input type="hidden" name="source" id="source"/>
                    <input type="hidden" name="departure" id="departure"/>
                    <input type="hidden" name="f_date" id="f_date"/>
                    <input type="hidden" name="arrival_time" id="arrival_time"/>
                    <input type="hidden" name="departure_time" id="departure_time"/>
                    <input type="hidden" name="class_name" id="class_name"/>

                    <input type="hidden" name="first_name" id="first_name"/>
                    <input type="hidden" name="last_name" id="last_name"/>
                    <input type="hidden" name="NID" id="NID"/>
                    <input type="hidden" name="passport_id" id="passport_id"/>

                    <input type="hidden" name="gender" id="gender"/>
                    <input type="hidden" name="contact" id="contact"/>
                    <input type="hidden" name="email" id="email"/>
                    <input type="hidden" name="flight_charge" id="flight_charge"/>
                    <input type="hidden" name="totalSeat" id="totalSeat"/>
                    <input type="hidden" name="totalFlightCharge" id="totalFlightCharge"/>
                    <input type="hidden" name="discount" id="discount"/>
                    <input type="hidden" name="grandTotal" id="grandTotal"/>

                    <input type="hidden" name="seatNo" id="seatNo" value="seatNo"/>
                    <input type="hidden" name="flight_name" id="flight_name" value="flight_name"/>
                    <input type="hidden" name="airpalne" id="airpalne" value="airpalne"/>
                    <!--<input type="text" name="status" id="status" value="status"/>-->
                    <select id="cars" name="status">
                        <!--<option value="Status">Status</option>-->
                        <option value="Cancle Request">Cancle Request</option>

                    </select>

                    <input type="submit" value="Send" class="btn btn-default" style="color: red"/>



                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>

    </div>
</div>





<jsp:include page="/WEB-INF/jsp/common/f_footer.jsp" />
<script>
    function cancelBooking(a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, y, z, za, zb) {
        $("#id").val(a);
        $("#airline").val(b);
        $("#source").val(c);
        $("#departure").val(d);
        $("#f_date").val(e);
        $("#arrival_time").val(f);
        $("#departure_time").val(g);
        $("#class_name").val(h);
        $("#first_name").val(i);
        $("#last_name").val(j);
        $("#NID").val(k);
        $("#passport_id").val(l);
        $("#gender").val(m);
        $("#contact").val(n);
        $("#email").val(o);
        $("#flight_charge").val(p);
        $("#totalSeat").val(q);
        $("#totalFlightCharge").val(r);
        $("#discount").val(s);
        $("#grandTotal").val(t);
//        $("#cardType").val(u);
//        $("#expireData").val(v);
//        $("#cardNo").val(w);
//        $("#cvvNo").val(x);
        $("#seatNo").val(y);
        $("#flight_name").val(z);
        $("#status").val(za);
        $("#airpalne").val(zb);
//        alert(c);
    }
</script>


