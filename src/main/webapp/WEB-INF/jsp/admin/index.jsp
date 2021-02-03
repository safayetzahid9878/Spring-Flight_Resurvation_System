<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template">
        <meta name="author" content="GeeksLabs">
        <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal">
        <link rel="shortcut icon" href="img/favicon.png">

        <title>Creative - Bootstrap Admin Template</title>

        <!-- Bootstrap CSS -->
        <link href="/resources/admin/css/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="/resources/admin/css/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="/resources/admin/css/elegant-icons-style.css" rel="stylesheet" />
        <link href="/resources/admin/css/font-awesome.min.css" rel="stylesheet" />
        <!-- full calendar css-->
        <link href="/resources/admin/assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="/resources/admin/assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="/resources/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- owl carousel -->
        <link rel="/resources/admin/stylesheet" href="css/owl.carousel.css" type="text/css">
        <link href="/resources/admin/css/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="/resources/admin/stylesheet" href="css/fullcalendar.css">
        <link href="/resources/admin/css/widgets.css" rel="stylesheet">
        <link href="/resources/admin/css/style.css" rel="stylesheet">
        <link href="/resources/admin/css/style-responsive.css" rel="stylesheet" />
        <link href="/resources/admin/css/xcharts.min.css" rel=" stylesheet">
        <link href="/resources/admin/css/jquery-ui-1.10.4.min.css" rel="stylesheet">

    </head>

    <body>
        <!-- container section start -->
        <section id="container" class="">


            <header class="header dark-bg">
                <div class="toggle-nav">
                    <div class="icon-reorder tooltips" data-original-title="Toggle Navigation" data-placement="bottom"><i class="icon_menu"></i></div>
                </div>

                <!--logo start-->
                <a href="index.html" class="logo">Safayet <span class="lite">Zahid</span></a>
                <!--logo end-->

<!--                <div class="nav search-row" id="top_menu">
                      search form start 
                    <ul class="nav top-menu">
                        <li>
                            <form class="navbar-form">
                                <input class="form-control" placeholder="Search" type="text">
                            </form>
                        </li>
                    </ul>
                      search form end 
                </div>-->

                <div class="top-nav notification-row">
                    <ul class="nav pull-right top-menu">
                        <li id="alert_notificatoin_bar" class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">

                                <i class="icon-bell-l"></i>
                                <span class="badge bg-important">4</span>
                            </a>
                            <ul class="dropdown-menu extended notification">
                                <div class="notify-arrow notify-arrow-blue"></div>
                                <li>
                                    <p class="blue">You have new notifications</p>
                                </li>
                                <li>
                                    <a href="/cancel/create">
                                        <span class="label label-danger"><i class="icon_profile"></i></span>
                                        Cancelation Request

                                    </a>
                                </li>

                            </ul>
                        </li>


                        <li class="dropdown">
                            <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                                <span class="profile-ava">
                                    <img alt="" src="/resources/admin/img/safa.jpg">
                                </span>
                                <span class="username">Safayet Zahid</span>
                                <b class="caret"></b>
                            </a>
                            <ul class="dropdown-menu extended logout">
                                <div class="log-arrow-up"></div>
                           
                                <li>
                                    <a href="/index"><i class="icon_key_alt"></i> Log Out</a>
                                </li>

                            </ul>
                        </li>
                    </ul>
                </div>
            </header>

            <aside>
                <div id="sidebar" class="nav-collapse ">

                    <ul class="sidebar-menu">
                        <li class="active">
                            <a class="" href="/admin/index">
                                <i class="icon_house_alt"></i>
                                <span>Dashboard</span>
                            </a>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Ticket</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <ul class="sub">
                                    <li><a class="" href="/admin/upcomingBook">UpcomingBook</a></li>
                                    <li><a class="" href="/admin/totalBooked">BookedTicket</a></li>
                                </ul>

                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Air Plane</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="/airplane/createAirplane">Create Airplane</a></li>
                                <li><a class="" href="/airplane/update">Edit</a></li>
                                <li><a class="" href="/airplane/view">View</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Flight</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="/flight/createFlight">Create Flight</a></li>
                                <li><a class="" href="/flight/update">Edit</a></li>
                                <li><a class="" href="/flight/view">View</a></li>
                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Airport</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="/airport/createAirport">Create Airport</a></li>
                                <li><a class="" href="/airport/update">Edit</a></li>
                                <li><a class="" href="/airport/view">View</a></li>

                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Passenger</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="/passenger/createPassenger">Create Passenger</a></li>
                                <li><a class="" href="/passenger/view">Passenger Details</a></li>
                                <li><a class="" href="/passenger/edit">Edit</a></li>

                            </ul>
                        </li>

                        <li class="sub-menu">
                            <a href="javascript:;" class="">
                                <i class="icon_desktop"></i>
                                <span>Cities</span>
                                <span class="menu-arrow arrow_carrot-right"></span>
                            </a>
                            <ul class="sub">
                                <li><a class="" href="/city/createCity">Create City</a></li>
                                <li><a class="" href="/city/update">Edit</a></li>
                                <li><a class="" href="/city/view">View</a></li>

                            </ul>
                        </li>



                    </ul>

                </div>
            </aside>

            <section id="main-content">
                <section class="wrapper">
                    <div class="row"> 
                        <div class="col-lg-12">
                            <ol class="breadcrumb">
                                <li><i class="fa fa-home"></i><a href="/index">Home</a></li>
                                <li><i class="fa fa-bars"></i>Pages</li>
                                <li><i class="fa fa-square-o"></i>Pages</li>
                            </ol>
                        </div>
                    </div>
                    <!-- page start-->
                    <!--This is for edit form--> 
                                 <div class="container-fluid mt-5">
                        <h1 class="text-center">Available flight</h1>
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

                    <!--main content end-->
                </section>




                <!-- javascripts -->
                <script src="/resources/admin/js/jquery.js"></script>
                <script src="/resources/admin/js/jquery-ui-1.10.4.min.js"></script>
                <script src="/resources/admin/js/jquery-1.8.3.min.js"></script>
                <script type="text/javascript" src="/resources/admin/js/jquery-ui-1.9.2.custom.min.js"></script>
                <!-- bootstrap -->
                <script src="/resources/admin/js/bootstrap.min.js"></script>
                <!-- nice scroll -->
                <script src="/resources/admin/js/jquery.scrollTo.min.js"></script>
                <script src="/resources/admin/js/jquery.nicescroll.js" type="text/javascript"></script>
                <!-- charts scripts -->
                <script src="/resources/admin/assets/jquery-knob/js/jquery.knob.js"></script>
                <script src="/resources/admin/js/jquery.sparkline.js" type="text/javascript"></script>
                <script src="/resources/admin/assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
                <script src="/resources/admin/js/owl.carousel.js"></script>
                <!-- jQuery full calendar -->
                <<script src="/resources/admin/js/fullcalendar.min.js"></script>
                <!-- Full Google Calendar - Calendar -->
                <script src="/resources/admin/assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
                <!--script for this page only-->
                <script src="/resources/admin/js/calendar-custom.js"></script>
                <script src="/resources/admin/js/jquery.rateit.min.js"></script>
                <!-- custom select -->
                <script src="/resources/admin/js/jquery.customSelect.min.js"></script>
                <script src="/resources/admin/assets/chart-master/Chart.js"></script>

                <!--custome script for all page-->
                <script src="/resources/admin/js/scripts.js"></script>
                <!-- custom script for this page-->
                <script src="/resources/admin/js/sparkline-chart.js"></script>
                <script src="/resources/admin/js/easy-pie-chart.js"></script>
                <script src="/resources/admin/js/jquery-jvectormap-1.2.2.min.js"></script>
                <script src="/resources/admin/js/jquery-jvectormap-world-mill-en.js"></script>
                <script src="/resources/admin/js/xcharts.min.js"></script>
                <script src="/resources/admin/js/jquery.autosize.min.js"></script>
                <script src="/resources/admin/js/jquery.placeholder.min.js"></script>
                <script src="/resources/admin/js/gdp-data.js"></script>
                <script src="/resources/admin/js/morris.min.js"></script>
                <script src="/resources/admin/js/sparklines.js"></script>
                <script src="/resources/admin/js/charts.js"></script>
                <script src="/resources/admin/js/jquery.slimscroll.min.js"></script>
                <script>
                    //knob
                    $(function () {
                        $(".knob").knob({
                            'draw': function () {
                                $(this.i).val(this.cv + '%')
                            }
                        })
                    });

                    //carousel
                    $(document).ready(function () {
                        $("#owl-slider").owlCarousel({
                            navigation: true,
                            slideSpeed: 300,
                            paginationSpeed: 400,
                            singleItem: true

                        });
                    });

                    //custom select box

                    $(function () {
                        $('select.styled').customSelect();
                    });

                    /* ---------- Map ---------- */
                    $(function () {
                        $('#map').vectorMap({
                            map: 'world_mill_en',
                            series: {
                                regions: [{
                                        values: gdpData,
                                        scale: ['#000', '#000'],
                                        normalizeFunction: 'polynomial'
                                    }]
                            },
                            backgroundColor: '#eef3f7',
                            onLabelShow: function (e, el, code) {
                                el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                            }
                        });
                    });
                </script>

                </body>

                </html>


