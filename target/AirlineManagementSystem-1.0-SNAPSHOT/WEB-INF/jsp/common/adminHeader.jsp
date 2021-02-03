
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
         
<!--              <li>
                <a href="#"><i class="icon_chat_alt"></i> Chats</a>
              </li>-->
              <li>
                <a href="/index"><i class="icon_key_alt"></i> Log Out</a>
              </li>
              
            </ul>
          </li>
</ul>
                </div>
                
                
            </header>
            <!--header end-->

            <!--sidebar start-->
            <aside>
                <div id="sidebar" class="nav-collapse ">
                    <!-- sidebar menu start-->
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
                                <li><a class="" href="/admin/upcomingBook">UpcomingBook</a></li>
                                <li><a class="" href="/admin/totalBooked">BookedTicket</a></li>
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
                    <!-- sidebar menu end-->
                </div>
            </aside>
            <!--main content start-->

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