<html>
	<meta charset="utf-8">
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<script src="http://code.jquery.com/jquery-latest.js">
</script>

<script type="text/javascript">

	$(document).ready(function(){
	
			$.post('ServeletHistorialUsuario',{


			},function(response){

		let datos = JSON.parse(response);
		
   

  var tabladatos = document.getElementById('tablaDatos')

  for(let item of datos){

    tablaDatos.innerHTML += `
   `
      }
          
		}); 
	
	});
</script>






<head>
	<title>PRACTICA JOIN</title>



</head>
<body>
 	


 	
 	
              <table class="table table-dark" id="tablaDatos">
              	<thead>
              		   	<th>ID</th>
              			<th>USUARIO</th>
              			<th>APELLIDO</th>
              			<th>FECHA</th>
              			
                    	</thead>

                    	<TBODY>
                    		
                    	</TBODY>
                </table>




</body>
</html>
