
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.minimum-scale=1.0">
    <meta name="description" content="Software Parqueadero">
    <meta name="keywords" content="Parqueadero,Bicicletas,Motos,Carros">   
     <title>Registrar Usuario</title>
    <link rel="stylesheet" href="estilolabelazul.css">
    <link rel="icon" href="Vista/IMAGENES/LOGO.png">
	<link rel="stylesheet" href="Vista/css/estilos.css">
	<link rel="stylesheet" href="Vista/css/font-awesome.css">
     <link rel="stylesheet" type="text/css" href="Vista/CSS/registrousuariovisitante.css">
	<script src="Vista/js/jquery-3.1.0.min.js"></script>
	<script src="Vista/js/main.js"></script>
        <%@page import="Model.DaoPersona "%>
        <%@page import="Controller.Beans.Persona"%>


<body>



   <script src="<%=request.getContextPath()%>/View/Js/3boton.js"></script> 
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
     
   <form action="Cierre_Sesion" method="post">
      <a href="Inicio.jsp"><li class="botones">Menu Inicio</li></a>
      </form>   
  </div>
</header> 
 
    <nav>
	<ul>
    
    	 
    	
        
  
    </ul>
    </nav>
 <form action="usuario" method="post">
          
          <h2>
              REGISTRO USUARIO VISITANTE
          </h2>
          <br>
         
          
      <table width="1000" border="0">
      <tr> 
          
       
      <td> <label >Id</label>
          <input name="id"  type="text"  placeholder="id" pattern="[0-9]+" ></td>
      </tr>
      <tr>
          <th>
          <label >Tipo de Documento</label>   
          <select name="tipodocumento">
          <option value="volvo">tipo de documento </option>
          <option value="cedulaciudadania">Cedula Ciudadania</option>
          <option value="Cedula Exrageria">Cedula Extrageria</option>
        </select>     
         </th>
       <td><label >Número De Documento</label>
       <input type="text" name="documento"  placeholder="Número De Identeficaión" pattern="[0-9]+"></td>
        <td> <label >Nombres</label>
      <input name="nombre"  type="text"  placeholder="Nombres Usuario" pattern="[A-Za-z]+" ></td>
      <td><label >Apellidos</label>
      <input name="apellido"  type="text"  placeholder="Apellidos Usuario" pattern="[A-Za-z0-9]+" ></td>
     </tr><tr> <td></td>
        <th> </th>
      </tr> <tr><td>
    <label >Correo</label>
    <input name="correo" type="email"  placeholder="Correo Usuario"  ></td>
    <td> <label >Telefono</label>
    <input name="telefono"  type="text"  placeholder="Teléfono Usuario" pattern="[0-9]+" ></td>
      <a><li  input class="botones" onclick="opcionInsertar();">Registrar Visitante</li></a>
        <a> <li input class="botones" onclick="opcionConsultar();">Consultar Visitante</li></a>
       
     <td><input type="submit" name="registrarme"><br></td>
     
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
