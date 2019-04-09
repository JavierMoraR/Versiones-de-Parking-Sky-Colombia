<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="description" content="tienda on line">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
    <title>Pagina Principal Usuario </title>
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
	<link rel="stylesheet" href="Vista/css/estilos.css">
	<link rel="stylesheet" href="Vista/css/font-awesome.css">
      <link rel="stylesheet" type="text/css" href="Vista/CSS/estilo.css">
	<script src="Vista/js/jquery-3.1.0.min.js"></script>
	<script src="Vista/js/main.js"></script>
</head>

<body>
 <div id="chat">Chat</div>
<header>
 <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
 <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
 <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>
 <div id="logo"></div>   
 <div id="apDiv1">
  <marquee>
  <h1>BIENVENIDO A TU PARKING SKY Colombia</h1>
  </marquee>
  </div>
 
</header> 
  <nav>
	 <ul>
    
    	
    	<a href="RegisUsuario.jsp"><li class="botones">Registrar Usuario</li></a>
        <a href="IngresoVehiculo.jsp"> <li class="botones">Registro Vehiculo</li></a>
        <a href="Ingre_vhi.html"><li class="botones">Ingreso Vehiculo</li></a>
        <a href="SalidaVehiculo.jsp"><li class="botones">Salida Vehiculo</li></a>
        <a href=""><li class="botones"> Tarifas</li></a>
  
    </ul>
    </nav>
    <div id="top">

	<ul>
    	<li>
        	<h1>Visión</h1>
            <a href="Dispocarro.jsp"><img src="Vista/IMAGENES/carro1.png"></a>
        	<p>Nos proyectamos en los proximos 5 años, como unos de los parqueaderos mas confiables, en las zonas recidenciales de la ciudad de Bogota </p>
        </li>
        
        <li>
            <h1>Misión</h1>
         <a href="dispo_moto.html"> <img src="Vista/IMAGENES/moto.png"></a>
           <p>Brindar una experiencia de tranquilidad a todos nuestros usuarios residentes y visitanntes a la hora de confiarnos el cuidado de sus vehiculos</p>
        </li>
        
        <li>
            <h1>Lema</h1>
        	  <a href="dispo_bici.html"><img src="Vista/IMAGENES/bici.png"></a>
        	<p>Para tu confianza no defraudar con presionalismo y tecnologia tu vehiculo vamos a cuidar </p>
        </li>
   </ul>
    
</div>


    	<div class="slideshow">
		<ul class="slider">
			<li>
				<img src="Vista/IMAGENES/1.jpg"   alt=""/>
				<section class="caption">
					<h1>Camara Zona Peatonal</h1>
					
				</section>
			</li>
			<li>l
				<img src="Vista/IMAGENES/2.jpg"   alt=""/>
				<section class="caption">
					<h1> Camara Parqueadero Subterraneo</h1>
					
				</section>
			</li>
			<li>
				<img src="Vista/IMAGENES/3.jpg"  alt=""/>
				<section class="caption">
					<h1>Camra Parqueadero Primer Piso</h1>
					
				</section>
			</li>
			
		</ul>

		<ol class="pagination">
			
		</ol>
	
		<div class="left">
			<span class="fa fa-chevron-left"></span>
		</div>
	
		<div class="right">
			<span class="fa fa-chevron-right"></span>
		</div>

	</div>
    
    <footer>
    <h1>Parking Sky Colombia El Mejor Software En Gestion De Parqueaderos</h1>
    </footer>
    
</body>
</html>