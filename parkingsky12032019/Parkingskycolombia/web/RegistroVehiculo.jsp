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
    <link rel="stylesheet" type="text/css" href="Vista/CSS/estilo.css">
    <script src="Vista/js/jquery-3.1.0.min.js"></script>
    <script src="Vista/js/main.js"></script>
    
</head>
<body>
    
   
 
<header>
    <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
    <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
    <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>
 
  
    <div id="apDiv1">
    <marquee>
    <h1>BIENVENIDO A TU PARKING SKY COLOMBIA </h1>
    </marquee>
    </div>
  <div id="logo"></div>   
    </div>
    <div id="apDiv2">
      <a href="Inicio.jsp"><li class="botones">Inicio</li></a>
      
  </div>
</header> 
 <nav>
	 <ul>
    
    	
    	<a href="RegisUsuario.jsp"><li class="botones">Registrar Usuario</li></a>
        <a href="RegistroVehiculo.jsp"> <li class="botones">Registro Vehiculo</li></a>
        <a href="IngresoVehiculo.jsp"><li class="botones">Ingreso Vehiculo</li></a>
        <a href="SalidaVehiculo.jsp"><li class="botones">Salida Vehiculo</li></a>
        <a href="tarifas.html"><li class="botones"> Tarifas</li></a>
       
  
  
    </ul>
    </nav>
    
      
      
      <form action="RegistrarVehiculo" method="post">
      <table width="1000" border="0">
      <tr>
      <th colspan="6" scope="row">Para terminar con exito este registro por favor ingrese los datos solicitados </th>
      <td></td>
      <td></td>
      <tr></tr>
      <th width="68" scope="row"><label>id_registro_vehiculo</label></th>
     <td width="229"><input type="text" name="idvehi"   placeholder="id_Vegistro_Vehiculo"  ></td>
     <td ></td> 
      <tr></tr>
      <tr>
      <th width="68" scope="row"><label>Modelo Vehiculo</label></th>
     <td width="229"><input type="text" name="modelovehi"   placeholder="Modelo Vehiculo"  ></td>
     <td ></td>    
     
     <td width="119"><label>Color Vehiculo</label></td>
     <td width="224"><input name="colvehi" type="text"  placeholder="Color Vehiculo"  ></td>
     <td ></td>
     <td width="92"><label>Placa Vehiculo</label></td>
     <td width="228"><input name="placavehi" type="text"  placeholder="Placa Vehiculo"  ></td>
     
     </tr>
     <tr>
     <th scope="row"><label>Marca Vehiculo</label></th>
     <td><input name="marvehi" type="text"  placeholder="Marca Vehiculo"  ></td>
     <td></td>
     <td ></td>
     <td><label>Tipo Vehiculo</label></td>
     <td><input name="tipvehi" type="text"  placeholder="Tipo Vehiculo"  ></td>
     <td ></td>
     <td><label>Estado Vehiculo</label></td>
     <td><input name="estvehi" type="text"  placeholder="Estado Vehiculo"  ></td>
     <td ></td>
     </tr>
     <tr>
     <th colspan="6" scope="row"><input type="submit" name="button" value="Enviar registro" ></th>
     </tr>
     </table>
    </form>
     <tr>
     <tr>
        
    
     </table>

     </footer></body>
     </html>