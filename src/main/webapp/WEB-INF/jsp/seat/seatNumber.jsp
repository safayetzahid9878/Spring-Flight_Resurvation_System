<html lang="en">
<head>
  <meta charset="utf-8">
  <title>serializeArray demo</title>
  
  <script src="https://code.jquery.com/jquery-3.5.0.js"></script>
</head>
<body>
 
<p><b>Results:</b> <span id="results"></span></p>
<form>
  <input type="checkbox" name="check" value="A1," id="a1">
  <label for="ch1">A1</label>
  
  <input type="checkbox" name="check" value="A2,"  id="a2">
  <label for="ch2">A2</label>
  
   <input type="checkbox" name="check" value="B1,"  id="b1">
  <label for="ch2">B1</label>
  
   <input type="checkbox" name="check" value="B2,"  id="b2">
  <label for="ch2">B2</label>
   <input type="checkbox" name="check" value="C1,"  id="c1">
  <label for="ch2">C1</label>
  
  <input type="checkbox" name="check" value="C2" id="c2">
  <label for="ch2">C2</label>
  
</form>
 
<script>
  function showValues() {
    var fields = $( ":input" ).serializeArray();
    $( "#results" ).empty();
    jQuery.each( fields, function( i, field ) {
      $( "#results" ).append( field.value + " " );
    });
  }
 
  $( ":checkbox" ).click( showValues );
  $( "select" ).change( showValues );
  showValues();
</script>
 
</body>
</html>