<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        
            
         <div class="row">
          <div class="col-lg-12">
            <section class="panel color2">
              <header class="panel-heading text-center">
               <h1> Create City</h1>
              </header>
                <div class="panel-body">
                   <form method="post" action="/city/save">
        <div class="form-group">
            <label for="name">City name</label>
            <input type="text" class="form-control" id="city_name" placeholder="Enter city name" name="city_name">
        </div>
        <div class="form-group">
            <label for="salary">Latitude:</label>
            <input type="text" class="form-control" id="latitude" placeholder="Enter latitude" name="latitude">
        </div>
        <div class="form-group">
            <label for="nid">Longitude:</label>
            <input type="text" class="form-control" id="longitude" placeholder="Enter longitude" name="longitude">
        </div>
        <div class="form-group">
            <label for="area">Country:</label>
            <input type="text" class="form-control" id="country" placeholder="Enter country" name="country">
        </div>
         <div class="form-group">
            <label for="area">City code:</label>
            <input type="text" class="form-control" id="city_code" placeholder="Enter City code" name="city_code">
        </div>

        
        <button type="submit" class="btn btn-primary">Submit</button>

    </form>
                </div>
                 </section>
            
             </div>       
        </div>  


            
      
<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />
       
    
  

