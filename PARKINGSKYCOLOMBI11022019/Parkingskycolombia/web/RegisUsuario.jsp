<%-- 
    Document   : RegistrarUsuario
    Created on : 05-dic-2018, 21:09:51
    Author     : SOPORTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="description" content="Software Parqueadero">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">   
     <title>Registrar Usuario</title>
    <link rel="stylesheet" href="estilolabelazul.css">
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
  <h1>BIENVENIDO A TU PARKING SKY COLOMBIA</h1>
  </marquee>
  </div>
  <div id="logo"></div>   
 
  <div id="apDiv2">
      <a href="Inicio.jsp"><li class="botones">Inicio</li></a>
      
  </div>
</header> 
 
    <nav>
	 <ul>
    
    	
    	<a href="RegisUsuario.jsp"><li class="botones">Registrar Usuario</li></a>
        <a href="IngresoVehiculo.jsp"> <li class="botones">Registro Vehiculo</li></a>
        <a href="IngresoVehiculo.jsp"><li class="botones">Ingreso Vehiculo</li></a>
        <a href="SalidaVehiculo.jsp"><li class="botones">Salida Vehiculo</li></a>
        <a href="tarifas.html"><li class="botones"> Tarifas</li></a>
       
  
  
    </ul>
    </nav>
 
 <style>
            body{
                background-color: #eee;
                
            }
            
            form label{
                display: block;
                color: white;
                background: #1dabb8;
                padding: 12px 0;
                text-align: center;
                font-size: 20px;
                font-weight: bold;
                font-family: cursive;
            }
            form input[type="text"],input[type="password"]{
                width: 230px;
                padding: 12px 40px;
                font-weight:bold;
                font-family: cursive;
                margin-left: 18px;
                margin-bottom: 10px;
                border: 1px solid #1dabb8;
                text-transform: capitalize;
                -moz-transition: all 0.5s;
                
            }
            form input[type="text"]{
                background: url("icons/user.png") 5px no-repeat;
            }
            form input[type="password"]{
                background: url("icons/pass.png") 5px no-repeat;
            }
            form input[type="text"]:focus,input[type="password"]:focus{
                border: 1px solid #333;
                background: none;
                width: 290px;
                padding: 12px 10px;
            }
            
            
  </style>



 
      <form action="usuario" method="post">
          <table width="1000" border="0">
              
          <tr>
          <a href="R"><li class="labe"></a>
          <th colspan="6" scope="row"><label>REGISTRAR USUARIOS</label> </th>
          </tr>
          <tr>
          <th width="68" scope="row"><label>Registro Usuario</label></th>
           <td width="229"><input type="text" name="id"><br></td>
           
            <td width="119"><label>Cedula</label></td>
            <td width="224"><input type="text" name="documento"><br></td>
            <td ></td>
          </tr>
          <td ></td>
          <tr>
            <td><label>Nombre</label></td>
            <td><input type="text" name="nombre"><br></td>
            <td><label>Apellido</label></td>
            <td><input type="text" name="apellido"><br></td>
           </tr>
           <tr>
            <td><label>Tipo Documento</label></td>
            <td><input type="text" name="tipodoc"><br></td>
            <td><label>Correo Electronico</label></td>
            <td><input type="text" name="correo"><br></td>
            </tr>
            <tr>
            <td><label>Telefono</label></td>
            <td><input type="text" name="telefono"><br></td>
            <td><label>Usuario</label></td>
            <td><input type="text" name="usuario"><br></td>
            </tr>
            <td><label>Password</label></td>
            <td><input type="text" name="password"><br></td>
            <td></td>
            <td><input type="submit" name="registrarme"><br></td> 
            <tr></tr>
            
            
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