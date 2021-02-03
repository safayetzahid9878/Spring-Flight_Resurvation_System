<%-- 
    Document   : invoice
    Created on : Jan 11, 2021, 3:51:02 PM
    Author     : B10
--%>
<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="panel-body">
                <form method="post" action="/invoice/save">
                    <div class="form-group">
                        <label for="name">Flight name</label>
                        <input type="text" class="form-control" id="flight_name" placeholder="Enter flight_name" name="flight_name">
                    </div>
                    <div class="form-group">
                        <label for="name">Flight name</label>
                        <input type="text" class="form-control" id="flight_name" name="flight_name">
                    </div>


                    <div class="form-group">
                        <label for="salary">Source</label>
                        <select class="form-control input-lg m-bot15" name="source">
                            <option>Select A Country</option>
                            <option>Dhaka</option>
                            <option>France</option>
                            <option>USA</option>
                            <option>India</option>
                            <option>Canada</option>
                            <option>Dubai</option>
                            <option>Itali</option>
                            <option>England</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="nid">Departure</label>
                        <select class="form-control input-lg m-bot15" name="departure">
                            <option value="Select" selected>Select A Country</option>
                            <option value="Canada">Canada</option>
                            <option value="Dubai">Dubai</option> 
                            <option value="Canada">Itali</option>
                            <option value="Dubai">England</option> 
                            <option value="Canada">Dhaka</option>
                            <option value="Dubai">France</option> 
                            <option value="Canada">USA</option>
                            <option value="Dubai">India</option> 
                          
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="area">Arrival time</label>
                        <input type="date" class="form-control" id="arrival_time" name="arrival_time">
                    </div>


                    <div class="form-group">
                        <label for="area">Departure_time</label>
                        <input type="date" class="form-control" id="departure_time" name="departure_time">
                    </div>

                    <div class="form-group">
                        <label for="area">Class name</label>
                        <input type="text" class="form-control" id="class_name" name="class_name">
                    </div>
  
                    <div class="form-group">
                        <label for="name">First_name:</label>
                        <input type="text" class="form-control" id="airplane_name" placeholder="Enter first_name" name="first_name">
                    </div>
                    <div class="form-group">
                        <label for="salary">Last_name:</label>
                        <input type="text" class="form-control" id="last_name" placeholder="Enter last_name" name="last_name">
                    </div>
                    <div class="form-group">
                        <label for="nid">NID:</label>
                        <input type="text" class="form-control" id="NID" placeholder="Enter NID" name="NID">
                    </div>
                    <div class="form-group">
                        <label for="area">Passport_id:</label>
                        <input type="text" class="form-control" id="passport_id" placeholder="Enter passport_id" name="passport_id">
                    </div>

                    <div class="form-group">
                        <label for="other">Gender :</label>
                        <input type="radio" id="male" name="gender" value="male">
                        <label for="male">Male :</label>

                        <input type="radio" id="female" name="gender" value="female">
                        <label for="female">Female :</label>

                        <input type="radio" id="other" name="gender" value="other">
                        <label for="other">Other :</label>

                    </div>


                    <div class="form-group">
                        <label for="area">Contact:</label>
                        <input type="text" class="form-control" id="contact" placeholder="Enter contact" name="contact">
                    </div>

                    <div class="form-group">
                        <label for="area">Email:</label>
                        <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">
                    </div>
                    
                    <div class="form-group">
                        <label for="area">Flight charge:</label>
                        <input type="text" class="form-control" id="flight_charge" name="flight_charge">
                    </div>
                    <div class="form-group">
                        <label for="area">Flight discount</label>
                        <input type="text" class="form-control" id="flight_charge" name="discount">
                    </div>
                    <div class="form-group">
                        <label for="area">Total range:</label>
                        <input type="text" class="form-control" id="flight_charge" name="grandTotal">
                    </div>
                    
                    
                    
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
    </body>
</html>
<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />