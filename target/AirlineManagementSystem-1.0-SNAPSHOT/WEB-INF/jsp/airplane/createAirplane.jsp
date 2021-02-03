<jsp:include page="/WEB-INF/jsp/common/adminHeader.jsp" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

        <div class="row">
          <div class="col-lg-12">
            <section class="panel color2">
              <header class="panel-heading text-center">
               <h1> Create Airplane</h1>
              </header>

    
                <div class="panel-body">
               
            <form method="post" action="/airplane/save">
                <div class="form-group">
                    <label for="name">airplane_name:</label>
                    <input type="text" class="form-control" id="airplane_name" placeholder="Enter Name" name="airplane_name">
                </div>
                <div class="form-group">
                    <label for="salary">Owner:</label>
                    <input type="text" class="form-control" id="owner" placeholder="Enter owner" name="owner">
                </div>
                <div class="form-group">
                    <label for="nid">Model:</label>
                    <input type="text" class="form-control" id="model" placeholder="Enter model" name="model">
                </div>
                <div class="form-group">
                    <label for="area">Engeen:</label>
                    <input type="text" class="form-control" id="engeen" placeholder="Enter engeen" name="engeen">
                </div>

                <div class="form-group">
                    <label for="city">Capacity:</label>
                    <input type="text" class="form-control" id="capacity" placeholder="Enter capacity" name="capacity">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
                 

            </form>
                    </section>
                    </div>
             </div>       
        
            
          


            
      
<jsp:include page="/WEB-INF/jsp/common/adminFooter.jsp" />
       
     
  

