
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
	
        <!-- Favicon -->
        <link href="img/favicon.ico" rel="icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400|Source+Code+Pro:700,900&display=swap" rel="stylesheet">

        <!-- CSS Libraries -->
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
        <link href="/resources/book/lib/slick/slick.css" rel="stylesheet">
        <link href="/resources/book/lib/slick/slick-theme.css" rel="stylesheet">

        <!-- Template Stylesheet -->
        <link href="/resources/book/css/style.css" rel="stylesheet">
    </head>

    <body>

         <div class="container-fluid mt-5">
                        <h1 class="text-center">Passenger Form</h1>
                        <div class="row">
                            <div class="col-md-12">

                               <table class="table table-striped table-advance table-hover">
                                    <tbody>
                                        <tr>
                                            <th>Id</th>
                                            <th>First name</th>
                                            <th>Last name</th>
                                            <th>NID</th>
                                            <th>Passport id </th>
                                            <th>Gender</th>
                                            <th>Contact</th>
                                            <th>Email</th>
                                           <th><i class="icon_cogs"></i> Action</th>
                                        </tr>

                                    <c:forEach var="mm" items="${map.tList}">
                                        <tr>
                                            <td>${mm.id}</td>
                                            <td>${mm.first_name}</td>
                                            <td>${mm.last_name}</td>
                                            <td>${mm.NID}</td>
                                            <td>${mm.passport_id}</td>
                                            <td>${mm.gender}</td>
                                            <td>${mm.contact}</td>
                                            <td>${mm.email}</td>
                                            <td>
                                                <div class="btn-group">
                                                    <a class="btn btn-primary" href="/passenger/edit/${mm.id}">Edit<i class="icon_plus_alt2"></i></a>
                                                    <a class="btn btn-danger" href="/passenger/delete/${mm.id}">Delete<i class="icon_close_alt2"></i></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>

                        </div>
                    </div>

            

        <!-- Back to Top -->
        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>
        
        <!-- JavaScript Libraries -->
        <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
        <script src="/resources/book/lib/easing/easing.min.js"></script>
        <script src="/resources/book/lib/slick/slick.min.js"></script>
        
        <!-- Template Javascript -->
        <script src="/resources/book/js/main.js"></script>
    </body>
</html>