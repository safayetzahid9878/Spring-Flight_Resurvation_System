<%-- 
    Document   : edit
    Created on : Jan 18, 2021, 3:13:39 AM
    Author     : Safayet Zahid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="/invoice/update" method="POST">
        <div class="form-group">
            <label for="area">Class name</label>
            <input type="text" class="form-control" id="class_name" name="source" value="${t.source}"/>
        </div>
        <div class="form-group">
            <label for="area">Class name</label>
            <input type="text" class="form-control" id="class_name" name="id" value="${t.id}"/>
        </div>
        <div class="form-group">
            <label for="area">Class name</label>
            <input type="text" class="form-control" id="class_name" name="status" value="${t.status}"/>
        </div>
             <button type="submit" class="btn btn-primary">Update</button>
</form>
    </body>
</html>