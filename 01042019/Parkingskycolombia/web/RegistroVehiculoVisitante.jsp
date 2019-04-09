<%-- 
    Document   : RegistroUsuario
    Created on : 05-dic-2018, 20:43:55
    Author     : SOPORTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="description" content="tienda on line">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
    <title>Registro </title>
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
    <link rel="stylesheet" href="Vista/css/estilos.css">
    <link rel="stylesheet" href="Vista/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="Vista/CSS/registrovehiculovisitante.css">
    <script src="Vista/js/jquery-3.1.0.min.js"></script>
    <script src="Vista/js/main.js"></script>
    
</head>
<body>
    
   
 
<header>
    <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
    <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
    <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>
 
  
    <div id="apDiv1">
    <marque>
    <h1>BIENVENIDO A TU PARKING SKY COLOMBIA </h1>
    </marquee>
    </div>
  <div id="logo"></div>  
  
  <div id="apDiv2">
      
    <form action="Inicio_Sesion" method="post">
      <a href=""><li class="botones"> Menu de Inicio</li></a>
      </form>   
  </div>
</header> 
 <nav>
	 <ul></ul>
    </nav>
    
      
      
      <form action="RegistrarVehiculo" method="post">
      <table width="1000" border="0">
      <tr>
         <h2>
             REGISTRO VEHICULO VISITANTE
          </h2>
      <table width="1000" border="0">
      <tr> 
          
       
      <td> <label >Registro Vehiculo</label>
          <input name="id"  type="text"  placeholder="id" pattern="[0-9]+" ></td>
      </tr>
      <tr>
          <th>
          <label >Tipo de Vehiculo</label>   
          <select name="tipovehiculo">
          <option value="volvo">Tipo Vehiculo </option>
          <option value="cedulaciudadania">Carro</option>
          <option value="Cedula Exrageria">Motocicleta</option>
          <option value="Cedula Exrageria">Bicicleta</option>
        </select>     
         </th>
       <td><label >Placa</label>
       <input type="text" name="placa"  placeholder="Placa" pattern="[0-9]+"></td>
        <td> <label >Modelo</label>
      <input name="modelo"  type="text"  placeholder="Modelo" pattern="[A-Za-z]+" ></td>
      <td><label >Marca</label>
      <input name="marca"  type="text"  placeholder="Marca" pattern="[A-Za-z0-9]+" ></td>
    <td> <label >Color</label>
    <input name="color"  type="text"  placeholder="Color" pattern="[0-9]+" ></td>
     <a><li  input class="botones" onclick="opcionInsertar();">Registrar Vehiculo</li></a>
        <a> <li input class="botones" onclick="opcionConsultar();">Consultar Vehiculo</li></a>
        
     <td><input type="submit" name="registrarVehiculo"><br></td>
     
     
      </table>
          
      
    </form>
  
   
	<div class="slideshow">
		<ul class="slider">
			<li>
				<img src="Vista/IMAGENES/1.jpg"   alt=""/>
				<section class="caption">
					<h1>Camara Zona Peatonal</h1>
					
				</section>
			</li>
			<li>
				<img src="Vista/IMAGENES/2.jpg"   alt=""/>
				<section class="caption">
					<h1> Camara Parqueadero Subterraneo</h1>
					
				</section>
			</li>
			<li>
				<img src="Vista/IMAGENES/3.jpg"  alt=""/>
				<section class="caption">
					<h1>Camra Parquedero Primer Piso</h1>
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

</body>
</html>

