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
    
   <div id="chat">Chat</div>
 
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
    <div id="apDiv2"><a href="index.jsp">Inicio</a></div>
    
</header> 
 
    
      <div id="top">

      <ul>
      <li>
      <h1>Visión</h1>
      
      <img src="Vista/IMAGENES/carro1.png">
      <p>Nos proyectamos en los proximos 5 años, como unos de los parqueaderos mas confiables, en las zonas recidenciales de la ciudad de Bogota </p>
      </li>
        
        <li>
      <h1>Misión</h1>
      <img src="Vista/IMAGENES/moto.png">
      <p>Brindar una experiencia de tranquilidad a todos nuestros usuarios residentes y visitanntes a la hora de confiarnos el cuidado de sus vehiculos</p>
        </li>
        
      <li>
      <h1>Lema</h1>
      <img src="Vista/IMAGENES/bici.png">
      <p>Para tu confianza no defraudar con presionalismo y tecnologia tu vehiculo vamos a cuidar </p>
      
      </li>
      </ul>
      </div>
   
      <form action="" method="get">
      <table width="1000" border="0">
      <tr>
      <th colspan="6" scope="row">Para terminar con exito este registro porfavor ingrese los datos sulicitados </th>
      
      </tr>
      <tr>
          
     <th width="68" scope="row"><label>Nombre</label></th>
     <td width="229"><input name="id6" id type="text"  placeholder="Juan Manuel" pattern="[a-z] ></td>
     <td ></td>
     <td width="119"><label>Apellidos</label></td>
     <td width="224"><input name="id" id type="text"  placeholder="Bermoeo Toro" pattern="[a-z] ></td>
     <td "></td>
     <td width="92"><label>Direccion</label></td>
     <td width="228"><input name="id2" id type="text"  placeholder="Calle 34 sur # 85-41"  ></td>
     
     </tr>
     <tr>
     <th scope="row"><label>Cedula</label></th>
     <td><input name="id3" id type="text"  placeholder="7.543.678" pattern="[0-9] ></td>
     <td></td>
     <td><label>Phone</label></td>
     <td><input name="id4" id type="text"  placeholder="313-841-235" pattern="[0-9] ></td>
     <td "></td>
     <td><label>E-Mail </label></td>
     <td><input name="id5" id type="text"  placeholder="313-841-235" pattern="[@] ></td>
     <td "></td>
     
     </tr>
     <tr>
     <th colspan="6" scope="row"><input type="submit" name="button" id="button" value="Enviar" accesskey="123"></th>
     </tr>
     </table>

     </form>
     <footer>
     <table width="1000" border="1">
     <tr>
     <td><label>Telefono: 3457896</label></td>
     <td><label>Direcci0n:  calle 67#43-18 </label></td>
     <td>Correo: pkc@gmail.com</td>
    
     </tr>
     <tr>
        
     <td>Servicios: desarrollo de Sostwre </td>
     <td> Influencia: Cundinamarca y Caldas</td>
     <td>Aliados Novatec Soluccions, SENA</td>
    
     </tr>
     <tr>
        
     <td colspan="3"><marquee>
     <h4>Gracias Por Visitarnos Esperamos uviera sido una vsita Grata </h4></marquee></td>
     </tr>
     </table>

     </footer></body>
     </html>