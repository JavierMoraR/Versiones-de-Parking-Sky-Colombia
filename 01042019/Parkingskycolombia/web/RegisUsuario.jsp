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
     <link rel="stylesheet" type="text/css" href="Vista/CSS/regisusuario.css">
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
  <h1>BIENVENIDO A TU PARKING SKY COLOMBIA</h1>
  </marquee>
  </div>
  <div id="logo"></div>   
 
  <div id="apDiv2">
     
   
      <a href="Inicio.jsp" class="botones"> Inicio Sesion</a>
     
  </div>
</header> 
  <nav>
	<ul>
    
            
        
  
    </ul>
    </nav>
   
            
         
      
 <form action="usuario" method="post">
      <br></br><br></br>  
     <h2>
              REGISTRO DE USUARIO
          </h2>
      <br></br>  
          
     
      <table width="1000" border="0">
          
          <td><td><label1>INFORMACION PERSONAL</label1><br><br></td>
      <tr> 
          <td><label >Id</label>
      <input name="id"  type="text"  placeholder="id" pattern="[0-9]+" ></td>
       <td> <label >Nombres</label>
      <input name="nombre"  type="text"  placeholder="Nombres Usuario" pattern="[A-Za-z]+" ></td>
      <td><label >Apellidos</label>
      <input name="apellido"  type="text"  placeholder="Apellidos Usuario" pattern="[A-Za-z0-9]+" ></td>
      </tr>
      <tr>
          <th>
           <label >Tipo de Documento</label> 
          <select name="tipodocumento">
          <option value="volvo">tipo de documento </option>
          <option value="cedulaciudadania">Cedula Ciudadania</option>
          <option value="CedulaExtranjeria">Cedula Extranjeria</option>
        </select>     
         </th>
       <td><label >Número De Documento</label>
       <input type="text" name="documento"  placeholder="Identeficaión Usuario" pattern="[0-9]+"></td>
       <td> <label >Correo</label>
    <input name="correo" type="email"  placeholder="Correo Usuario"  ></td>
    
     </tr><tr> <td></td>
        <th> </th>
      </tr>
      <tr>
     <td> <label >Telefono</label>
    <input name="telefono"  type="text"  placeholder="Teléfono Usuario" pattern="[0-9]+" ></td>
      <td><label>Password</label>
      <input type="text" name="password" placeholder="Password" pattern="[A-Za-z0-9]+"></td>
      <td><label>Rol Usuario</label>
      <input type="text" name="rolusuario" placeholder="Rol Usuario" pattern="[A-Za-z0-9]+"></td>
     
      </tr>
      <tr>
      <td> <label >Fecha de Registro</label>
    <input name="fecharegisusu"  type="text"  placeholder="YY-MM-DD"  ></td>
      <td><label>Numero de Apartamento</label>
      <input type="text" name="numeapartam" placeholder="Numero de Apartamento" pattern="[0-9]+"></td>
      <td><label>Torre</label>
      <input type="text" name="torre" placeholder="Torre" pattern="[0-9]+"></td>
           </tr>
        <tr>
            <td><td><label1>DATOS DE VEHICULO</label1><br><br></td></td>
               <td></td><td></td>
           </tr>
           <td></td>
           <tr>
               
         <td><label>Modelo Vehiculo</label>
     <input type="text" name="modelovehi"   placeholder="Modelo Vehiculo"  ></td>
        
     <td><label>Color Vehiculo</label>
     <input name="colvehi" type="text"  placeholder="Color Vehiculo"  ></td>
     
     <td><label>Placa Vehiculo</label>
     <input name="placavehi" type="text"  placeholder="Placa Vehiculo"  ></td>
     </tr>
     <tr>
      <td><label >Marca Vehiculo</label> 
     <select name="marvehi">
          <option value="volvo">Marca Vehiculo </option>
          <option value="Fiat">Fiat</option>
          <option value="Chevrolet">Chevrolet</option>
     </select> </td>
     <td><label >Tipo de Vehiculo</label> 
     <select name="tipovehiculo">
          <option value="volvo">Tipo de Vehiculo </option>
          <option value="Carro">Carro</option>
          <option value="Moto">Moto</option>
     </select> </td>
     <td><label >Estado Vehiculo</label> 
     <select name="estadovehiculo">
          <option value="volvo">Estado Vehiculo </option>
          <option value="Bueno">Bueno</option>
          <option value="Regular">Regular</option>
          <option value="Malo">Malo</option>
     </select> </td>
            </table>
          
      <br><br><td><input type="submit" name="registrarme"><br></td>
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
