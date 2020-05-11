<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ingreso de usuario</title>
<link rel="stylesheet"
 href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
 integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
 crossorigin="anonymous">
 
 <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
 <link href="estilos/style.css" rel="stylesheet" type="text/css">
 
 <style type="text/css">

		@import url('https://fonts.googleapis.com/css?family=Pinyon+Script&display=swap')


		*{
			margin: 0px;
			padding: 0px;
		}

		body{
         background: url(https://preppywallpapers.com/wp-content/uploads/2019/11/Gold-Glitter-Festive-Christmas-iPhone-11-Wallpapers.jpg);
         background-position: center;
         align-content: center;

		}

		form{
			background:#FFFFFF40;
			width: 600px;
			border: 0px solid #4e4d4d;
			border-radius: 3PX;
			-MOZ-border-radius: 3PX;
			-Webkit-border-radius: 3PX;
			box-shadow: inset 0 0 0px #000;
			margin: 30px auto;			
		}

		form h2{
            text-align: center;
            color: #fff;
            font-weight: normal;
            font-size: 40pt;
            margin: 30px 0px
            font : 'Pinyon Script', cursive;
            font-family: 'Spicy Rice', cursive;
            	}
        form p{
            text-align: center;
            color: #fff;
            font-weight:lighter;
            font-size: 22pt;
            
          
                     

		}
		
		form img{

			width: 280px;
			height: 250px;
			padding: 0px 10px;
			color: #160843;
			align: center;
			margin: 50px 10px;
			background-color: #3333340;
		
		}

		form input{

			width: 280px;
			height: 35px;
			padding: 0px 10px;
			color: #160843;
			align-content: center;
			background-color: #3333340;	
			border: 0px;}
			
			div{
		align-content: center;
		
		}
			

		
	</style>
 
 
</head>

<%
HttpSession seccion = (HttpSession) request.getSession();
String usuariovariabledeseccion = (String)seccion.getAttribute("usuario");
if(usuariovariabledeseccion==null){
	
	response.sendRedirect("index.jsp");
	
	
}



%>
<body>

 <div class="container col-md-8 col-md-offset-3" style="overflow: auto" >
 
  <form action="ServeletUser" method="post">
   <h2>BIENVENIDO</h2>
   <img alt="" src="https://cdn.icon-icons.com/icons2/1879/PNG/512/iconfinder-3-avatar-2754579_120516.png">
   
   
  
<input type="submit"
      value="CERRAR" name="btncerrar" class="btn btn-primary">
      
      <a href="historialUsuarios.jsp">VER HISTORIAL DE USUARIOS</a>

  
  </form>
  </div>

</body>
</html>