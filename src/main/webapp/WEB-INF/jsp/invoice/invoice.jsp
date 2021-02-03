<%-- 
    Document   : invoice
    Created on : Jan 13, 2021, 3:17:47 AM
    Author     : Safayet Zahid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->

    <!--Author      : @arboshiki-->

    <style>
        #invoice{
            padding: 30px;
        }

        .invoice {
            position: relative;
            background-color: #FFF;
            min-height: 680px;
            padding: 15px
        }

        .invoice header {
            padding: 10px 0;
            margin-bottom: 20px;
            border-bottom: 1px solid #3989c6
        }

        .invoice .company-details {
            text-align: right
        }

        .invoice .company-details .name {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .contacts {
            margin-bottom: 20px
        }

        .invoice .invoice-to {
            text-align: left
        }

        .invoice .invoice-to .to {
            margin-top: 0;
            margin-bottom: 0
        }

        .invoice .invoice-details {
            text-align: right
        }

        .invoice .invoice-details .invoice-id {
            margin-top: 0;
            color: #3989c6
        }

        .invoice main {
            padding-bottom: 50px
        }

        .invoice main .thanks {
            margin-top: -100px;
            font-size: 2em;
            margin-bottom: 50px
        }

        .invoice main .notices {
            padding-left: 6px;
            border-left: 6px solid #3989c6
        }

        .invoice main .notices .notice {
            font-size: 1.2em
        }

        .invoice table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-bottom: 20px
        }

        .invoice table td,.invoice table th {
            padding: 15px;
            background: #eee;
            border-bottom: 1px solid #fff
        }

        .invoice table th {
            white-space: nowrap;
            font-weight: 400;
            font-size: 16px
        }

        .invoice table td h3 {
            margin: 0;
            font-weight: 400;
            color: #3989c6;
            font-size: 1.2em
        }

        .invoice table .qty,.invoice table .total,.invoice table .unit {
            text-align: right;
            font-size: 1.2em
        }

        .invoice table .no {
            color: #fff;
            font-size: 1.6em;
            background: #3989c6
        }

        .invoice table .unit {
            background: #ddd
        }

        .invoice table .total {
            background: #3989c6;
            color: #fff
        }

        .invoice table tbody tr:last-child td {
            border: none
        }

        .invoice table tfoot td {
            background: 0 0;
            border-bottom: none;
            white-space: nowrap;
            text-align: right;
            padding: 10px 20px;
            font-size: 1.2em;
            border-top: 1px solid #aaa
        }

        .invoice table tfoot tr:first-child td {
            border-top: none
        }

        .invoice table tfoot tr:last-child td {
            color: #3989c6;
            font-size: 1.4em;
            border-top: 1px solid #3989c6
        }

        .invoice table tfoot tr td:first-child {
            border: none
        }

        .invoice footer {
            width: 100%;
            text-align: center;
            color: #777;
            border-top: 1px solid #aaa;
            padding: 8px 0
        }

        @media print {
            .invoice {
                font-size: 11px!important;
                overflow: hidden!important
            }

            .invoice footer {
                position: absolute;
                bottom: 10px;
                page-break-after: always
            }

            .invoice>div:last-child {
                page-break-before: always
            }
        }

    </style>
    <div id="invoice">

        <div class="toolbar hidden-print">
            <div class="text-center">

                <a href="/index"><button class="btn btn-info"><i class="fa fa-print"></i> HOME</button></a>
                
                <button id="printInvoice" class="btn btn-info"><i class="fa fa-print"></i> Print</button>
                <button class="btn btn-info"><i class="fa fa-file-pdf-o"></i> Export as PDF</button>
        
            </div>
            <hr>
        </div>
        <div class="invoice overflow-auto">
            <div style="min-width: 600px">

                <main>


                    <div class="row contacts">
                        <div class="col invoice-to">

                            <div class="text-gray-light"><h3>INVOICE TO-${t.first_name}</h3></div> 
                            <div class="email">${t.source} - ${t.departure}</a></div>
                            <div class="date">FLIGHT CODE- ${t.flight_name}</div>
                            <div class="address">RESERVATION - ${t.airpalne}</div>

                            <div class="date">FLIGHT DATE- ${t.f_date}</div>
                            <div class="date">SEAT NO- ${t.seatNo}</div>
                        </div>
                        <div class="col invoice-details">
                            <h2 class="invoice-id">INVOICE - ${t.id}</h2>
                            <div class="date">Date of Invoice: 01/02/2021</div>
                        </div>
                    </div>


                    <h4 class="text-center">FLIGHT DETAILS</h4>  
                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-striped table-hover">
                                <tbody>
                              <tr>
                                <th><h5>Flight Name</h5></th>
                                <th><h5>airplane</h5></th>
                                <th><h5>From</h5></th>
                                <th><h5>To</h5></th>
                                <th><h5>Arrival time</h5></th>
                                <th><h5>Departure time</h5></th>
                                <th><h5>Class name</h5></th>
                                <th><h5>Flight charge</h5></th>
                             </tr>

                                <tr>
                                    <td>${t.flight_name}</td>
                                    <td>${t.airline}</td>
                                    <td>${t.source}</td>
                                    <td>${t.departure}</td>
                                    <td>${t.arrival_time}</td>
                                    <td>${t.departure_time}</td>
                                    <td>${t.class_name}</td>
                                    <td>${t.flight_charge}</td>
                     
                                </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <br>



                    <h4 class="text-center">PASSENGER DETAILS</h4>
                    <div class="row">
                        <div class="col-md-12">

                            <table class="table table-striped table-hover">

                                <tbody>
                                    <tr>

                                <th><h5>First name</h5></th>
                                <th><h5>Last name</h5></th>
                                <th><h5>NID</h5></th>
                                <th><h5>Passport id </h5></th>
                                <th><h5>Gender</h5></th>
                                <th><h5>Contact</h5></th>
                                <th><h5>Email</h5></th>
                                <!--<th><h5><i class="icon_cogs"></i> Action</h5></th>-->
                                </tr>


                                <tr>

                                    <td>${t.first_name}</td>
                                    <td>${t.last_name}</td>
                                    <td>${t.NID}</td>
                                    <td>${t.passport_id}</td>
                                    <td>${t.gender}</td>
                                    <td>${t.contact}</td>
                                    <td>${t.email}</td>
                                    <!--                                    <td>
                                                                            <div class="btn-group">
                                                                                <a class="btn btn-danger" href="/passenger/edit/${mm.id}">change<i class="icon_plus_alt2"></i></a>
                                                                                        <a class="btn btn-danger" href="/passenger/delete/${mm.id}"><i class="icon_close_alt2"></i></a>
                                                                            </div>
                                                                        </td>-->
                                </tr>

                                </tbody>
                            </table>
                        </div>

                    </div>
                    <br>


                    <div class="row invoice-payment">
                        <div class="col-sm-7">
                        </div>
                        <div class="col-sm-5">
                            <div class="row">
                                <div class="col-lg-6">
                                    <h5 class="text-left">Fare Details</h5></div>
                               <div class="col-lg-6"> <h6 class="text-right">(Paid)</h6></div>
                                
                                <div class="table-responsive no-border">
                                    <table class="table mb-0">
                                        <tbody>
                                            <tr>
                                                <th>Flight Charge:</th>
                                                <td class="text-right">${t.flight_charge}</td>
                                            </tr>
                                            <tr>
                                                <th>Total Seat: </th>
                                                <td class="text-right">${t.totalSeat}</td>
                                            </tr>
                                            <tr>
                                                <th><h5>Total Charge:</h5></th>
                                        <td class="text-right text-primary">
                                            <h5>${t.totalFlightCharge}</h5>
                                        </td>
                                        </tr>

                                        <tr>
                                            <th>Discount: <span class="text-regular"></span> </th>
                                            <td class="text-right">${t.discount}%</td>
                                        </tr>
                                        <tr>
                                            <th><h5>Grand Total:</h5></th>
                                        <td class="text-right text-primary">
                                            <h5>${t.grandTotal}(TK)</h5>
                                        </td>
                                        </tr>
                                        </tbody>
                                    </table>
                                <!--</div>-->
                            </div>
                        </div>
                    </div>

                </main>
                <footer>

                </footer>
            </div>                                                    
            <div>                
            </div>
        </div>
    </div>

    <script>
        $('#printInvoice').click(function () {
            Popup($('.invoice')[0].outerHTML);
            function Popup(data)
            {
                window.print();
                return true;
            }
        });
    </script>

</html>