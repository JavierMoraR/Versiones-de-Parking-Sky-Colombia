<%-- 
    Document   : SalidaVehiculo
    Created on : 06-dic-2018, 18:56:54
    Author     : SOPORTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

 <html lang="en">
     <head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,minimum-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
   
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
    <link rel="stylesheet" href="Vista/css/estilos.css">
    <link rel="stylesheet" href="Vista/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="Vista/CSS/salidavehiculo.css">
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
       <h1>BIENVENIDO A TU PARKING SKY COLOMBIA</h1>
       </marquee>
       </div>
       <div id="logo"></div>   
       
       <div id="apDiv2">
           <a href="Inicio.jsp"><li class="botones">Menu Inicio</li></a>
       
</header> 
     
     </div>

     <form  id="salida_vhvi" > 
     <table width="1000" border="0">
     <tr>
     <h2>
             SALIDA VEHICULO
          </h2>
     </tr>
 
     <tr>
     <th width="150" scope="row"><label> Salida Vehiculo  </label></th>
     <td width="200"><input name="id6" id type="text"  placeholder="001" pattern="[a-z] ></td>
     <td "></td>
     <td width="119"><label>Tarifa</label></td>
     <td width="224"><input name="id" id type="text"  placeholder="Tarifa" pattern="[0-] ></td>
     <td "></td>
     </tr>
     <tr>
     <th scope="row"><label>Fecha Salida</label></th>
     <td><input name="id3" id type="text"  placeholder="Fecha" pattern="[a-z] ></td>
     <td "></td>
     <td><label>Forma de Pago</label></td>
     <td><input name="id4" id type="text"  placeholder="Pago" pattern="[0-9] ></td>
     <td "></td>
     <td colspan="2"><input type="submit" name="button" id="button" value="Enviar" accesskey="123"></td>
     <td "></td>
     </tr>
 
      </table>
<br>
          <h2></h2>
          </br>
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
					<h1>Camara Parquedero Primer Piso</h1>	
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
