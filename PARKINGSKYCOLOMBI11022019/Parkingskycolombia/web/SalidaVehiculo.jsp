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
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="author" content="Jorge Ivan Murillo Duque">    
    <meta name="description" content="tienda on line">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
    <title>Sal	ida De vehiculo</title>
    <link rel="icon" href="IMAGENES/LOGO.png">
    <link rel="stylesheet" href="css/estilos.css">
    <link rel="stylesheet" href="css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="CSS/estilo.css">
    <script src="js/jquery-3.1.0.min.js"></script>
    <script src="js/main.js"></script>
    
</head>
<body>

    <div id="chat">Chat</div>

   
<header>
    
    <a href="https://es-la.facebook.com/"><div id="icono1" class="redes"></div></a>
    <a href="https://twitter.com/?lang=es"><div id="icono2" class="redes"></div></a>
    <a href="https://www.instagram.com/?hl=es-la"> <div id="icono3" class="redes"></div></a>
  
    <div id="apDiv1">
    <h1>BIENVENIDO A TU PARKING SKY</h1>
    </div>
    <div id="logo"></div>   
    <div id="apDiv2"><a href="Inicio.html">Inicio</a></div>
    
</header> 
     <nav>
     <ul>
    
    	
     <a href="Reg_us.html"><li class="botones">Registrar Usuario</li></a>
     <a href="Reg_vhi.html"> <li class="botones">Registro Vehiculo</li></a>
     <a href="Ingre_vhi.html"><li class="botones">Ingreso Vehiculo</li></a>
     <a href="Sali_vhi.html"><li class="botones">Salida Vehiculo</li></a>
     <a href="tarifas.html"><li class="botones"> Tarifas</li></a>
  
     </ul>
     </nav>
     <div id="top">
     <ul>
     <li>
     <h1>Visión</h1>
     <a href="dispo_carro.html"><img src="IMAGENES/carro1.png"></a>
     <p>Nos proyectamos en los proximos 5 años, como unos de los parqueaderos mas confiables, en las zonas residenciales de la ciudad de Bogota </p>
     </li>
        
     <li>
     <h1>Misión</h1>
     <a href="dispo_moto.html"> <img src="IMAGENES/moto.png"></a>
     <p>Brindar una experiencia de tranquilidad a todos nuestros usuarios residentes y visitantes a la hora de confiarnos el cuidado de sus vehiculos</p>
     </li>
     <li>
     <h1>Lema</h1>
     <a href="dispo_bici.html"><img src="IMAGENES/bici.png"></a>
     <p>Para tu confianza no defraudar con profesionalismo y tecnologia tu vehiculo vamos a cuidar </p>
     </li>
     </ul>
     </div>

     <form  id="salida_vhvi" > 
     <table width="1000" border="0">
     <tr>
     <th colspan="6" scope="row">Salida DeVehiculo </th>
     </tr>
 
     <tr>
     <th width="68" scope="row"><label>id_Salida_Vhi</label></th>
     <td width="229"><input name="id6" id type="text"  placeholder="001" pattern="[a-z] ></td>
     <td "></td>
     <td width="119"><label>Id_tarifas</label></td>
     <td width="224"><input name="id" id type="text"  placeholder="2018" pattern="[0-] ></td>
     <td "></td>
     <td width="92"><label>forma_Paga</label></td>
     <td width="228"><input name="id2" id type="text"  placeholder="contado"  ></td>
     </tr>
     <tr>
     <th scope="row"><label>Fecha_Salida</label></th>
     <td><input name="id3" id type="text"  placeholder="Fecha" pattern="[a-z] ></td>
     <td "></td>
     <td><label>id_Ingreso</label></td>
     <td><input name="id4" id type="text"  placeholder="ttrye" pattern="[0-9] ></td>
     <td "></td>
     <td colspan="2"><input type="submit" name="button" id="button" value="Enviar" accesskey="123"></td>
     <td "></td>
     </tr>
 
     </table>
     </form>
     <div class="slideshow">
     <ul class="slider">
     <li>
     <img src="IMAGENES/1.jpg"   alt=""/>
     <section class="caption">
     <h1>Camara Zona Peatonal</h1>
     </section>
     </li>
     <li>
     <img src="IMAGENES/2.jpg"   alt=""/>
     <section class="caption">
     <h1> Camara Parqueadero Subterraneo</h1>
     </section>
     </li>
     <li>
     <img src="IMAGENES/3.jpg"  alt=""/>
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
