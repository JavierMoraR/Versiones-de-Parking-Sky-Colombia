<%-- 
    Document   : IngresoVehiculo
    Created on : 06-dic-2018, 18:37:27
    Author     : SOPORTE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

     <html lang="en">
     <head>
	
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0,          minimum-scale=1.0">
    <meta name="description" content="">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">    
    <title>Ingreso De vehiculo</title>
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
    <link rel="stylesheet" href="Vista/css/estiloF.css">
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
 
       <div id="apDiv2"><a href="Inicio.jsp">Inicio</a></div>
       
</header> 
    
        <nav>
        <ul>
    
    	
    	<a href="RegisUsuario.jsp"><li class="botones">Registrar Usuario</li></a>
        <a href="Reg_vhi.html"> <li class="botones">Registro Vehiculo</li></a>
        <a href="Ingre_vhi.html"><li class="botones">Ingreso Vehiculo</li></a>
        <a href="Sali_vhi.html"><li class="botones">Salida Vheiculo</li></a>
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
            form input[type="submit"]{
                background: #1dabb8;
                color: white;
                display: inline-block;
                margin-left: 18px;
                margin-bottom: 10px;
                padding: 8px 20px;
                border: none;
                font-weight: bold;
            }
            form input[type="submit"]:hover{
                background: darkorange;
                cursor: pointer;
            }
            
  </style>
        <div id="top">

	<ul>
    	<li>
        <h1>Visión</h1>
        <a href="dispo_carro.html"><img src="Vista/IMAGENES/carro1.png"></a>
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

        <form  id="salida_vhvi" > 
        <table width="1000" border="0">
        <tr>
            <th colspan="6" scope="row"><label>Ingreso De Vehiculo </label></th>
        </tr>
        <tr>
            
        <th width="276" scope="row"><label>id Ingreso Vehiculo</label></th>
        <td width="233"><input name="IngresoVehi" id type="text"  placeholder="001" pattern="[a-z] ></td>
   
        <th width="207"><label>Fecha Ingreso</label></th>
        <td width="171"><input name="FechaIngreVehi" id type="text"  placeholder="Fecha" pattern="[0-] ></td>
        <td "></td>
        <td width="61"><label>Hora de Ingreso</label></td>
        <td width="237"><input name="HoraIngreVehi" id type="text"  placeholder="contado"  ></td>
        
        </tr>
        <tr>
    
        <td colspan="3"><input type="submit" name="button" id="button" value="Enviar" accesskey="123"></td>
        </tr>
 
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
